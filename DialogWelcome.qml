import QtQuick 2.0
import QtQuick.Controls 1.4

Dialog {

    Text {
        id: textMsg
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        font.family: fontRobotoBold.name
        font.bold: true
        font.pixelSize: parent.height * 0.20
        color: "#ffffffff"
        styleColor: "#ff0000ff"
        style: Text.Outline
        smooth: true
        text: qsTr("Welcome");
    }

    DialogButton {
        id: buttonStartGame
        anchors.top: textMsg.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        height: 50
        text: qsTr("Start Game");
    }
}
