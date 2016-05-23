import QtQuick 2.0

Rectangle {
    anchors.margins: 5
    color: "#ffffffff"

    signal gameEnded;

    WhackAMoleScore {
        id:scoreBoard
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: parent.height * 0.2
        score: surface.score
    }

    WhackAMoleSurface {
        id:surface
        anchors.top: scoreBoard.bottom
        anchors.topMargin: 5
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
    }


    function startGame() {
        surface.reset();
    }


}
