import QtQuick 2.0
import QtQuick.Particles 2.0

ImageParticle {

    //source: "qrc:/images/whack_job_sprite_001.png"
    width: 100
    height: 100

    Sprite {
        id: spriteInitial
        name: "initial"
        frameCount: 1
        source: "qrc:/images/whack_job_sprite_001.png"
        frameWidth: 500
        frameHeight: 500
    }
    Sprite {
        id: spriteHit
        name: "hit"
        frameCount: 1
        source: "qrc:/images/whack_job_sprite_001.png"
        frameWidth: 500
        frameHeight: 500
        frameX: 500
        frameY: 0
    }

    sprites: [ spriteInitial, spriteHit ]


}
