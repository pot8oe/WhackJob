import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.1

Dialog {
    id: dialog

    signal startGame
    signal quit

    Text {
        id: textTitle
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        font.family: fontRobotoBold.name
        font.bold: true
        font.pixelSize: parent.height * 0.10
        wrapMode: Text.WordWrap
        color: "#ffffffff"
        styleColor: "#ff0000ff"
        style: Text.Outline
        smooth: true
        text: qsTr("About");
    }

    ColumnLayout {
        id: column
        anchors.horizontalCenter: parent.Center
        anchors.top: textTitle.bottom
        anchors.topMargin: parent.height * 0.01
        anchors.left: parent.left
        anchors.leftMargin: parent.height * 0.02
        anchors.right: parent.right
        anchors.rightMargin: parent.height * 0.02
        anchors.bottom: parent.bottom
        anchors.bottomMargin: parent.height * 0.02
        spacing: parent.height * 0.01

        Text {
            id: textMusic
            anchors.topMargin: parent.height * 0.02
            anchors.left: parent.left
            anchors.leftMargin: parent.height * 0.02
            anchors.right: parent.right
            anchors.rightMargin: parent.height * 0.02
            font.family: fontRobotoBold.name
            font.bold: true
            font.pixelSize: parent.height * 0.05
            wrapMode: Text.WordWrap
            color: "#ff113b9f"
            styleColor: "#ffffffff"
            style: Text.Outline
            smooth: true
            text: ("Music: Creepy - <a href='http://www.bensound.com/royalty-free-music'>bensound.com</a>")
        }

        Text {
            id: textSourceCode
            anchors.topMargin: parent.height * 0.02
            anchors.left: parent.left
            anchors.leftMargin: parent.height * 0.02
            anchors.right: parent.right
            anchors.rightMargin: parent.height * 0.02
            font.family: fontRobotoBold.name
            font.bold: true
            font.pixelSize: parent.height * 0.05
            wrapMode: Text.WordWrap
            color: "#ff113b9f"
            styleColor: "#ffffffff"
            style: Text.Outline
            smooth: true
            text: ("Source: on <a href='https://github.com/pot8oe/WhackJob'>Github</a>")
        }

        DialogButton {
            id: buttonStartGame
            Layout.alignment: Layout.Center
            Layout.preferredHeight: parent.height * 0.20
            Layout.preferredWidth: parent.width * 0.70
            text: qsTr("Start Game");
            onClicked: startGame();
        }

        DialogButton {
            id: buttonQuitGame
            Layout.alignment: Layout.Center
            Layout.preferredHeight: parent.height * 0.20
            Layout.preferredWidth: parent.width * 0.70
            text: qsTr("Quit");
            onClicked: quit();
        }

    }
}
