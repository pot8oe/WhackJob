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
        text: qsTr("Licenses");
    }

    TabView {
        anchors.top: textTitle.bottom
        anchors.right: parent.right
        anchors.bottom: buttonDone.top
        anchors.left: parent.left
        anchors.rightMargin: 8
        anchors.bottomMargin: 6
        anchors.leftMargin: 8
        anchors.topMargin: 11

        Tab {
            title: qsTr("WhackJob")
            TextArea {
                text: privates.licenseGPLv3
                readOnly: true
                anchors.fill: parent
            }
        }

        Tab {
            title: qsTr("Qt")
            TextArea {
                text: privates.licenseGPLv3
                readOnly: true
                anchors.fill: parent
            }
        }

        Tab {
            title: qsTr("Roboto Font")
            TextArea {
                text: privates.licenseApachev2
                readOnly: true
                anchors.fill: parent
            }
        }
    }


    DialogButton {
        id: buttonDone
        width:  parent.width * 0.90
        height: parent.height * 0.05
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        text: qsTr("Done");
        anchors.bottomMargin: parent.height * 0.02
        onClicked: done();
    }



    Item {
        id: privates
        property string licenseGPLv3:""
        property string licenseApachev2:""
    }

    Component.onCompleted: {

        var requestGPLv3 = new XMLHttpRequest()
        requestGPLv3.open('GET', 'qrc:/licenses/Qt.txt')
        requestGPLv3.onreadystatechange = function(event) {
            if (requestGPLv3.readyState === XMLHttpRequest.DONE) {
                privates.licenseGPLv3 = requestGPLv3.responseText
            }
        }
        requestGPLv3.send();

        var requestApachev2 = new XMLHttpRequest()
        requestApachev2.open('GET', 'qrc:/licenses/Roboto_Font.txt')
        requestApachev2.onreadystatechange = function(event) {
            if (requestApachev2.readyState === XMLHttpRequest.DONE) {
                privates.licenseApachev2 = requestApachev2.responseText
            }
        }
        requestApachev2.send();


    }


}
