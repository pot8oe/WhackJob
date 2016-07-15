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
