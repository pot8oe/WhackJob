import QtQuick 2.0

Rectangle {
    id: rectScoreBoard
    color: "#ffd40000"
    border.color: "#ff113b9f"
    border.width: 3

    FontLoader { id: fontRobotoThin; source: "qrc:/fonts/Roboto_Mono/RobotoMono-Light.ttf"; }
    FontLoader { id: fontRobotoBold; source: "qrc:/fonts/Roboto_Mono/RobotoMono-Bold.ttf"; }

    property int score: 0

    Text {
        id: textTitle
        text: qsTr("Whack Job")
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        font.family: fontRobotoBold.name
        font.bold: true
        font.pixelSize: parent.height * 0.40
        color: "#ffffffff"
        styleColor: "#ff0000ff"
        style: Text.Outline
        smooth: true
    }


    Rectangle {
        id: rectScore
        color: "#ff113b9f"
        border.width: 3
        border.color: "#ffffffff"
        anchors.top: textTitle.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        height: parent.height * 0.40
        width: textTitle.width *0.90

        Text {
            id: textScore
            anchors.fill: parent
            font.family: fontRobotoThin.name
            font.pixelSize: rectScore.height * 0.90
            color: "#ffffffff"
            text: "000000"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.PlainText
        }
    }


}
