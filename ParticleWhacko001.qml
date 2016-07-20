/*
 * This file is part of WhackJob a political whack-a-mole style game.
 *
 * Copyright (C) 2016 Thomas G. Kenny Jr and TKJResearch
 * Contact: tkjresearch@gmail.com
 *
 * WhackJob is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * WhackJob is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */


import QtQuick 2.0
import QtQuick.Particles 2.0

ImageParticle {

    //source: "qrc:/images/whack_job_sprite_001.png"
    width: 100
    height: 100

    sprites: [
        Sprite {
            name: "initial"
            frameCount: 1
            source: "qrc:/images/whack_job_sprite_001.png"
            frameWidth: 500
            frameHeight: 500
        },
        Sprite {
            name: "hit"
            frameCount: 1
            source: "qrc:/images/whack_job_sprite_001.png"
            frameWidth: 500
            frameHeight: 500
            frameX: 500
            frameY: 0
        }
    ]


}
