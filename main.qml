import QtQuick 2.3
import QtQuick.Controls 1.2

ApplicationWindow {
    visible: true
    width: 720
    height: 1080
    title: qsTr("Whack Job")

    WhackAMoleBoard {
        anchors.fill: parent
    }
}
