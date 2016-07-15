import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.1

Dialog {
    id: dialog

    signal startGame
    signal about
    signal quit

    Text {
        id: textMsg
        anchors.top: parent.top
        anchors.topMargin: parent.height * 0.02
        anchors.horizontalCenter: parent.horizontalCenter
        font.family: fontRobotoBold.name
        font.bold: true
        font.pixelSize: parent.height * 0.05
        wrapMode: Text.WordWrap
        color: "#ff113b9f"
        styleColor: "#ffffffff"
        style: Text.Outline
        smooth: true
        text: qsTr("");
    }

    ColumnLayout {
        id: column
        anchors.horizontalCenter: parent.Center
        anchors.top: textMsg.bottom
        anchors.topMargin: parent.height * 0.01
        anchors.left: parent.left
        anchors.leftMargin: parent.height * 0.02
        anchors.right: parent.right
        anchors.rightMargin: parent.height * 0.02
        anchors.bottom: parent.bottom
        anchors.bottomMargin: parent.height * 0.02
        spacing: parent.height * 0.01

        DialogButton {
            id: buttonStartGame
            Layout.alignment: Layout.Center
            Layout.preferredHeight: parent.height * 0.20
            Layout.preferredWidth: parent.width * 0.70
            text: qsTr("Start Game");
            onClicked: startGame();
        }

        DialogButton {
            id: buttonAboutGame
            Layout.alignment: Layout.Center
            Layout.preferredHeight: parent.height * 0.20
            Layout.preferredWidth: parent.width * 0.70
            text: qsTr("About");
            onClicked: about();
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
