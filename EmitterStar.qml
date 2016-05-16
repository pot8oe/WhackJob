import QtQuick 2.0
import QtQuick.Particles 2.0

Emitter {
    id: emitterStar
    width: 150
    height: 150

    Image {
        sourceSize.width: emitterStar.width
        sourceSize.height: emitterStar.height
        fillMode: Image.Stretch
        anchors.fill: parent
        source: "qrc:/images/star.svg"
    }
}
