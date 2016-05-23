import QtQuick 2.0

Dialog {

    Text {
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        font.family: fontRobotoBold.name
        font.bold: true
        font.pixelSize: parent.height * 0.40
        color: "#ffffffff"
        styleColor: "#ff0000ff"
        style: Text.Outline
        smooth: true
        text: Qt.qsTr("Welcome");
    }
}
