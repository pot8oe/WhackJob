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
            text: padZeros(score)
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.PlainText
        }
    }

    function padZeros(number) {
        var nStr = number.toString();
        var pad = "0000000"
        return pad.substring(0, pad.length - nStr.length) + nStr
    }


}
