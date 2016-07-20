/*
 * This file is part of WhackJob a political whack-a-mole style game.
 *
 * Copyright (C) 2016 Thomas G. Kenny Jr and TKJResearch
 * Contact: tkjresearch@gmail.com
 *
 * WhackJob is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * WhackJob is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */


import QtQuick 2.3
import QtQuick.Controls 1.2
import QtMultimedia 5.5

ApplicationWindow {
    id: applicationWindow
    visible: true
    width: 720
    height: 1080
    title: qsTr("Whack Job")

    Item{
        id: privates
        property int limitingDimension: {
            applicationWindow.width < applicationWindow.height ?
                        applicationWindow.width : applicationWindow.height;
        }
    }

    Audio {
        id: audioBgMusic
        loops: MediaPlayer.Infinite
        autoPlay: false
        onAvailabilityChanged: {
            console.debug("Audio Availability: " + audioPlayerMusic.availability);
        }
    }

    WhackAMoleBoard {
        id: gameBoard
        anchors.fill: parent
        onGameEnded: applicationWindow.showEndGame();
    }


    DialogWelcome {
        id: dialogWelcome
        anchors.centerIn: parent
        width: privates.limitingDimension * 0.75
        height: privates.limitingDimension * 0.75
        onStartGame: applicationWindow.startGame();
        onQuit: applicationWindow.quit();
        onAbout: applicationWindow.showAbout();
        visible: false
    }

    DialogAbout {
        id: dialogAbout
        anchors.centerIn: parent
        width: privates.limitingDimension * 0.75
        height: privates.limitingDimension * 0.75
        visible: false
        onStartGame: applicationWindow.startGame();
        onQuit: applicationWindow.quit();
    }

    DialogEndGame {
        id: dialogEndGame
        anchors.centerIn: parent
        width: privates.limitingDimension * 0.75
        height: privates.limitingDimension * 0.75
        onStartGame: applicationWindow.startGame();
        onQuit: applicationWindow.quit();
        onAbout: applicationWindow.showAbout();
        visible: false
    }

    Connections {
        target: Qt.application
        onStateChanged: {
            switch (Qt.application.state) {
                case Qt.ApplicationSuspended:
                case Qt.ApplicationHidden:
                    stopBgMusic();
                break
                case Qt.ApplicationActive:
                    startBgMusic();
                break
            }
        }
    }

    function startBgMusic() {
        startBgMusicUrl("qrc:/audio/bensound-creepy.mp3");
    }

    function startBgMusicUrl(musicUrl) {
        if(musicUrl !== null && musicUrl !== undefined) {
            audioBgMusic.source = musicUrl;
            audioBgMusic.volume = 0.5;
            audioBgMusic.play();
        }
    }

    function stopBgMusic() {
        audioBgMusic.stop();
    }

    function startGame() {
        dialogAbout.visible = false;
        dialogWelcome.visible = false;
        dialogEndGame.visible = false;
        startBgMusic();
        gameBoard.startGame();
    }

    function showWelcome() {
        dialogAbout.visible = false;
        dialogWelcome.visible = true;
        dialogEndGame.visible = false;
    }

    function showAbout() {
        dialogAbout.visible = true;
        dialogWelcome.visible = false;
        dialogEndGame.visible = false;
    }

    function showEndGame() {
        dialogAbout.visible = false;
        dialogWelcome.visible = false;
        dialogEndGame.visible = true;
    }

    function quit() {
        applicationWindow.showNormal();
        applicationWindow.close();
    }

    Component.onCompleted: {
        //applicationWindow.showFullScreen();
        showWelcome();
    }
}
