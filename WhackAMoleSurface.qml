import QtQuick 2.0
import QtQuick.Layouts 1.1
import QtQuick.Particles 2.0

Rectangle {
    id: rectWhackSurface
    color: "#ff113b9f"
    border.color: "#ffd40000"
    border.width: 3

    signal scorePoint

    Item {
        id: privates
        property string pGroupName_Whacko001: "whacko001";
        property double starSize: {
            itemStarLayout.width < itemStarLayout.height ?
                        itemStarLayout.width * 0.20 : itemStarLayout.height * 0.15
        }
        property double starSizeHalf: starSize * 0.5
        property double starLayoutSize: {
            rectWhackSurface.width < rectWhackSurface.height ?
                        rectWhackSurface.width : rectWhackSurface.height;
        }
        property double hSpacing: privates.starLayoutSize * 0.02
        property double vSpacing: privates.starLayoutSize * 0.03
    }


    Item {
        id: itemStarLayout
        anchors.centerIn: parent
        width: privates.starLayoutSize
        height: privates.starLayoutSize

        //Rectangle{anchors.fill: parent; color: "#55ff0000"}

        // FIRST ROW
        RowLayout {
            id: row01
            anchors.top: parent.top
            anchors.topMargin: privates.vSpacing
            anchors.left: parent.left
            anchors.leftMargin: privates.hSpacing
            anchors.right: parent.right
            spacing: privates.hSpacing

            EmitterStar {
                id: star10
                sourceSize.width: privates.starSize
                sourceSize.height: privates.starSize
                emitter.system: systemDrumpf
                emitter.group: privates.pGroupName_Whacko001
            }

            EmitterStar {
                id: star11
                sourceSize.width: privates.starSize
                sourceSize.height: privates.starSize
                emitter.system: systemDrumpf
                emitter.group: privates.pGroupName_Whacko001
            }

            EmitterStar {
                id: star12
                sourceSize.width: privates.starSize
                sourceSize.height: privates.starSize
                emitter.system: systemDrumpf
                emitter.group: privates.pGroupName_Whacko001
            }

            EmitterStar {
                id: star13
                sourceSize.width: privates.starSize
                sourceSize.height: privates.starSize
                emitter.system: systemDrumpf
                emitter.group: privates.pGroupName_Whacko001
            }
        }


        // SECOND ROW
        RowLayout {
            id: row02
            anchors.top: row01.bottom
            anchors.topMargin: privates.vSpacing
            anchors.left: parent.left
            anchors.leftMargin: privates.hSpacing * 5
            anchors.right: parent.right
            spacing: privates.hSpacing

            EmitterStar {
                id: star20
                sourceSize.width: privates.starSize
                sourceSize.height: privates.starSize
                emitter.system: systemDrumpf
                emitter.group: privates.pGroupName_Whacko001
            }

            EmitterStar {
                id: star21
                sourceSize.width: privates.starSize
                sourceSize.height: privates.starSize
                emitter.system: systemDrumpf
                emitter.group: privates.pGroupName_Whacko001
            }

            EmitterStar {
                id: star22
                sourceSize.width: privates.starSize
                sourceSize.height: privates.starSize
                emitter.system: systemDrumpf
                emitter.group: privates.pGroupName_Whacko001
            }

            EmitterStar {
                id: star23
                sourceSize.width: privates.starSize
                sourceSize.height: privates.starSize
                emitter.system: systemDrumpf
                emitter.group: privates.pGroupName_Whacko001
            }
        }

        // THIRD ROW
        RowLayout {
            id: row03
            anchors.top: row02.bottom
            anchors.topMargin: privates.vSpacing
            anchors.left: parent.left
            anchors.leftMargin: privates.hSpacing
            anchors.right: parent.right
            spacing: privates.hSpacing

            EmitterStar {
                id: star30
                sourceSize.width: privates.starSize
                sourceSize.height: privates.starSize
                emitter.system: systemDrumpf
                emitter.group: privates.pGroupName_Whacko001
            }

            EmitterStar {
                id: star31
                sourceSize.width: privates.starSize
                sourceSize.height: privates.starSize
                emitter.system: systemDrumpf
                emitter.group: privates.pGroupName_Whacko001
            }

            EmitterStar {
                id: star32
                sourceSize.width: privates.starSize
                sourceSize.height: privates.starSize
                emitter.system: systemDrumpf
                emitter.group: privates.pGroupName_Whacko001
            }

            EmitterStar {
                id: star33
                sourceSize.width: privates.starSize
                sourceSize.height: privates.starSize
                emitter.system: systemDrumpf
                emitter.group: privates.pGroupName_Whacko001
            }
        }

        // FOURTH ROW
        RowLayout {
            id: row04
            anchors.top: row03.bottom
            anchors.topMargin: privates.vSpacing
            anchors.left: parent.left
            anchors.leftMargin: privates.hSpacing * 5
            anchors.right: parent.right
            spacing: privates.hSpacing

            EmitterStar {
                id: star40
                sourceSize.width: privates.starSize
                sourceSize.height: privates.starSize
                emitter.system: systemDrumpf
                emitter.group: privates.pGroupName_Whacko001
            }

            EmitterStar {
                id: star41
                sourceSize.width: privates.starSize
                sourceSize.height: privates.starSize
                emitter.system: systemDrumpf
                emitter.group: privates.pGroupName_Whacko001
            }

            EmitterStar {
                id: star42
                sourceSize.width: privates.starSize
                sourceSize.height: privates.starSize
                emitter.system: systemDrumpf
                emitter.group: privates.pGroupName_Whacko001
            }

            EmitterStar {
                id: star43
                sourceSize.width: privates.starSize
                sourceSize.height: privates.starSize
                emitter.system: systemDrumpf
                emitter.group: privates.pGroupName_Whacko001
            }
        }

        // FIFTH ROW
        RowLayout {
            id:row05
            anchors.top: row04.bottom
            anchors.topMargin: privates.vSpacing
            anchors.left: parent.left
            anchors.leftMargin: privates.hSpacing
            anchors.right: parent.right
            spacing: privates.hSpacing

            EmitterStar {
                id: star50
                sourceSize.width: privates.starSize
                sourceSize.height: privates.starSize
                emitter.system: systemDrumpf
                emitter.group: privates.pGroupName_Whacko001
            }

            EmitterStar {
                id: star51
                sourceSize.width: privates.starSize
                sourceSize.height: privates.starSize
                emitter.system: systemDrumpf
                emitter.group: privates.pGroupName_Whacko001
            }

            EmitterStar {
                id: star52
                sourceSize.width: privates.starSize
                sourceSize.height: privates.starSize
                emitter.system: systemDrumpf
                emitter.group: privates.pGroupName_Whacko001
            }

            EmitterStar {
                id: star53
                sourceSize.width: privates.starSize
                sourceSize.height: privates.starSize
                emitter.system: systemDrumpf
                emitter.group: privates.pGroupName_Whacko001
            }
        }

    }


    ParticleSystem {
        id: systemDrumpf
        running: true
    }

    ParticleGroup {
        id: particleGroupWhacko001
        name: privates.pGroupName_Whacko001
        system: systemDrumpf

        ParticleWhacko001 {
            id: particleWhacko001
        }
    }

    Age {
        id: ageHit
        enabled: false
        system: systemDrumpf
        //groups: [ privates.pGroupName_Whacko001 ]
        //SpriteGoal: "hit"
        width: privates.starSize
        height: privates.starSize

        Rectangle{anchors.fill: parent; color:"#55000000"}

        onAffected: {
            resetAgeAffector();

            scorePoint();
        }
    }

    MouseArea {
        anchors.fill: parent
        enabled: true
        acceptedButtons: MouseArea.Left | MouseArea.Right
        onClicked: {
            ageHit.enabled = true;
            ageHit.x = mouse.x - privates.starSizeHalf;
            ageHit.y = mouse.y - privates.starSizeHalf;
        }
    }


    Timer {
        id: timer
        interval: 1000
        running: false
        repeat: true
        onTriggered: {

            resetAgeAffector();

            star10.emitter.burst(1);
        }

    }

    Component.onCompleted: {
        systemDrumpf.reset();
        timer.start();
    }



    function resetAgeAffector() {
        ageHit.x = -ageHit.width;
        ageHit.y = -ageHit.height;
        ageHit.enabled = false;
    }

}
