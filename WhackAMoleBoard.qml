import QtQuick 2.0

Item {

    anchors.margins: parent.width * 0.01

    WhackAMoleScore {
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: parent.height * 0.2
    }

}
