import QtQuick 2.0

Rectangle {
    color: "#ffd40000"
    border.color: "#ff414141"
    border.width: parent.width * 0.005

    property int score: 0

    Text {
        id: titleText
        text: qsTr("Whack Job")
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        font.bold: true
        font.italic: true
        font.pixelSize: parent.height * 0.40
        color: "#ff0055d4"
        styleColor: "#ff000000"
        style: Text.Outline
        smooth: true
    }

}
