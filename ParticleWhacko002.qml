import QtQuick 2.0
import QtQuick.Particles 2.0

ImageParticle {

    //source: "qrc:/images/whack_job_sprite_002.png"
    width: 100
    height: 100

    sprites: [
        Sprite {
            name: "initial"
            frameCount: 1
            source: "qrc:/images/whack_job_sprite_002.png"
            frameWidth: 500
            frameHeight: 500
        },
        Sprite {
            name: "hit"
            frameCount: 1
            source: "qrc:/images/whack_job_sprite_002.png"
            frameWidth: 500
            frameHeight: 500
            frameX: 500
            frameY: 0
        }
    ]


}
