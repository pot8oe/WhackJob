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
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.1

Dialog {
    id: dialog

    signal startGame
    signal about
    signal quit

    Text {
        id: textMsg
        anchors.top: parent.top
        anchors.topMargin: parent.height * 0.02
        anchors.left: parent.left
        anchors.leftMargin: parent.height * 0.02
        anchors.right: parent.right
        anchors.rightMargin: parent.height * 0.02
        font.family: fontRobotoBold.name
        font.bold: true
        font.pixelSize: parent.height * 0.05
        wrapMode: Text.WordWrap
        color: "#ffffffff"
        styleColor: "#ff0000ff"
        style: Text.Outline
        smooth: true
        text: qsTr("Game Over");
    }

    ColumnLayout {
        id: column
        anchors.horizontalCenter: parent.Center
        anchors.top: textMsg.bottom
        anchors.topMargin: parent.height * 0.01
        anchors.left: parent.left
        anchors.leftMargin: parent.height * 0.02
        anchors.right: parent.right
        anchors.rightMargin: parent.height * 0.02
        anchors.bottom: parent.bottom
        anchors.bottomMargin: parent.height * 0.02
        spacing: parent.height * 0.01

        DialogButton {
            id: buttonStartGame
            Layout.alignment: Layout.Center
            Layout.preferredHeight: parent.height * 0.20
            Layout.preferredWidth: parent.width * 0.70
            text: qsTr("Start Game");
            onClicked: startGame();
        }

        DialogButton {
            id: buttonAboutGame
            Layout.alignment: Layout.Center
            Layout.preferredHeight: parent.height * 0.20
            Layout.preferredWidth: parent.width * 0.70
            text: qsTr("About");
            onClicked: about();
        }

        DialogButton {
            id: buttonQuitGame
            Layout.alignment: Layout.Center
            Layout.preferredHeight: parent.height * 0.20
            Layout.preferredWidth: parent.width * 0.70
            text: qsTr("Quit");
            onClicked: quit();
        }

    }
}
