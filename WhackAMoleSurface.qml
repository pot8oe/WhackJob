import QtQuick 2.0
import QtQuick.Layouts 1.1
import QtQuick.Particles 2.0

Rectangle {
    id: rectWhackSurface
    color: "#ff113b9f"
    border.color: "#ffd40000"
    border.width: 3

    ParticleSystem {
        id: systemDrumpf
    }


    Item {
        anchors.centerIn: parent
        width: 710
        height: 850

        // FIRST ROW
        RowLayout {
            id: row01
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.left: parent.left
            anchors.leftMargin: 10
            spacing: 20

            EmitterStar {
                id: star10
                system: systemDrumpf
            }

            EmitterStar {
                id: star11
                system: systemDrumpf
            }

            EmitterStar {
                id: star12
                system: systemDrumpf
            }

            EmitterStar {
                id: star13
                system: systemDrumpf
            }
        }


        // SECOND ROW
        RowLayout {
            id: row02
            anchors.top: row01.bottom
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 40
            spacing: 20

            EmitterStar {
                id: star20
                system: systemDrumpf
            }

            EmitterStar {
                id: star21
                system: systemDrumpf
            }

            EmitterStar {
                id: star22
                system: systemDrumpf
            }

            EmitterStar {
                id: star23
                system: systemDrumpf
            }
        }

        // THIRD ROW
        RowLayout {
            id: row03
            anchors.top: row02.bottom
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 10
            spacing: 20

            EmitterStar {
                id: star30
                system: systemDrumpf
            }

            EmitterStar {
                id: star31
                system: systemDrumpf
            }

            EmitterStar {
                id: star32
                system: systemDrumpf
            }

            EmitterStar {
                id: star33
                system: systemDrumpf
            }
        }

        // FOURTH ROW
        RowLayout {
            id: row04
            anchors.top: row03.bottom
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 40
            spacing: 20

            EmitterStar {
                id: star40
                system: systemDrumpf
            }

            EmitterStar {
                id: star41
                system: systemDrumpf
            }

            EmitterStar {
                id: star42
                system: systemDrumpf
            }

            EmitterStar {
                id: star43
                system: systemDrumpf
            }
        }

        // FIFTH ROW
        RowLayout {
            id:row05
            anchors.top: row04.bottom
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 10
            spacing: 20

            EmitterStar {
                id: star50
                system: systemDrumpf
            }

            EmitterStar {
                id: star51
                system: systemDrumpf
            }

            EmitterStar {
                id: star52
                system: systemDrumpf
            }

            EmitterStar {
                id: star53
                system: systemDrumpf
            }
        }

    }

}
