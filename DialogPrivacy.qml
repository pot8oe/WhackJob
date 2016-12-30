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

    signal done

    Text {
        id: textTitle
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        font.family: fontRobotoBold.name
        font.bold: true
        font.pixelSize: parent.height * 0.10
        wrapMode: Text.WordWrap
        color: "#ffffffff"
        styleColor: "#ff0000ff"
        style: Text.Outline
        smooth: true
        text: qsTr("Privacy");
    }

    TextArea {
        id: textPrivacy
        anchors.left: parent.left
        anchors.right: parent.right
        text: privates.privacy
        anchors.bottom: buttonDone.top
        anchors.bottomMargin: 10
        anchors.top: textTitle.bottom
        anchors.topMargin: 10
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        readOnly: true
        onLinkActivated: Qt.openUrlExternally(link)
    }

    DialogButton {
        id: buttonDone
        x: 179
        text: qsTr("Done");
        clip: false
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width * 0.50
        height: 50
        radius: 3
        onClicked: done();
    }

    Item {
        id: privates
        property string privacy:"Loading..."

        function clear() {
            privacy = "Loading...";
        }
    }

    onVisibleChanged: {

        if(!visible) return;

        timerLoad.start();

    }

    Timer {
        id: timerLoad
        interval: 100
        repeat: false
        onTriggered: {
            var requestPrivacy = new XMLHttpRequest()
            requestPrivacy.open('GET', 'qrc:/privacy/privacy.txt')
            requestPrivacy.onreadystatechange = function(event) {
                if (requestPrivacy.readyState === XMLHttpRequest.DONE) {
                    privates.privacy = requestPrivacy.responseText
                }
            }

            requestPrivacy.send();
        }
    }
}
