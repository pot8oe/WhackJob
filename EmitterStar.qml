import QtQuick 2.0
import QtQuick.Particles 2.0

Image {
    id: img
    fillMode: Image.PreserveAspectFit
    source: "qrc:/images/star.svg"

    //Rectangle{ anchors.fill: parent; color: "#55000000";}

    readonly property alias emitter: emitterInternal

    Emitter {
        id: emitterInternal
        anchors.centerIn: parent
        width: 1
        height: 1
        size: img.sourceSize.width * 1.10
        sizeVariation: img.sourceSize.width * 0.10
        emitRate: 0
    }

}
