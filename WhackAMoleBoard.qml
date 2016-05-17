import QtQuick 2.0

Rectangle {
    anchors.margins: 5
    color: "#ffffffff"

    WhackAMoleScore {
        id:scoreBoard
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: parent.height * 0.2
    }

    WhackAMoleSurface {
        anchors.top: scoreBoard.bottom
        anchors.topMargin: 5
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom

        onScorePoint: scoreBoard.score++
    }

}
