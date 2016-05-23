import QtQuick 2.3
import QtQuick.Controls 1.2
import QtMultimedia 5.5

ApplicationWindow {
    id: applicationWindow
    visible: true
    width: 720
    height: 1080
    title: qsTr("Whack Job")

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
    }


    DialogWelcome {
        id: dialogWelcome
        anchors.centerIn: parent
        width: parent.width * 0.75
        height: parent.width * 0.75
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
        startBgMusic();
        gameBoard.startGame();
    }

    Component.onCompleted: {
        //applicationWindow.showFullScreen();

        //temp start game here - in future wait until user initiates
        startGame();

    }
}
