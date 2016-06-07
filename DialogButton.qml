/****************************************************************************
**
** Copyright (C) 2015 Thomas G. Kenny Jr and TKJResearch
** Contact: tkjresearch@gmail.com
**
** This file is part of Asterdroids.
**
** Asterdroids is free software: you can redistribute it and/or modify
** it under the terms of the GNU General Public License as published by
** the Free Software Foundation, either version 3 of the License, or
** (at your option) any later version.
**
** Asterdroids is distributed in the hope that it will be useful,
** but WITHOUT ANY WARRANTY; without even the implied warranty of
** MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
** GNU General Public License for more details.
**
** You should have received a copy of the GNU General Public License
** along with Asterdroids.  If not, see <http://www.gnu.org/licenses/>.
**
** */

import QtQuick 2.0


Rectangle  {
    id: container

    property string text: "Button"
    property color textColor: "Black"

    signal clicked

    gradient: Gradient {
        GradientStop {
            position: 0
            color: "#e16d22"
        }

        GradientStop {
            position: 1
            color: "#9d2314"
        }
    }
    border.color: "#680000"
    border.width: 1
    smooth: true
    radius: 8

    MouseArea  {
        id: mouseArea
        anchors.fill: parent
        onClicked: container.clicked();
    }

    Text  {
        id: buttonLabel
        anchors.centerIn: container
        text: container.text
        color: container.textColor
        font.pixelSize: container.height * 0.50
    }


}
