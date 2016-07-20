import QtQuick 2.0
import QtQuick.Layouts 1.1
import QtQuick.Particles 2.0

Rectangle {
    id: rectWhackSurface
    color: "#ff113b9f"
    border.color: "#ffd40000"
    border.width: 3

    property int score: 0;
    property int totalWhackJobs: 0;

    signal endGame

    property var starEmitters: [
        star10, star11, star12, star13,
        star20, star21, star22, star23,
        star30, star31, star32, star33,
        star40, star41, star42, star43,
        star50, star51, star52, star53,
    ];


    Item {
        id: privates
        property string pGroupName_Whacko001: "whacko001";
        property string pGroupName_Whacko002: "whacko002";
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
        property int lastIndex: -1;
        property int headsPerTick: 1;
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
                emitter.group: privates.pGroupName_Whacko002
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
                emitter.group: privates.pGroupName_Whacko002
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
                emitter.group: privates.pGroupName_Whacko002
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
                emitter.group: privates.pGroupName_Whacko002
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
                emitter.group: privates.pGroupName_Whacko002
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
                emitter.group: privates.pGroupName_Whacko002
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
                emitter.group: privates.pGroupName_Whacko002
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
                emitter.group: privates.pGroupName_Whacko002
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
                emitter.group: privates.pGroupName_Whacko002
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
                emitter.group: privates.pGroupName_Whacko002
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

    ParticleGroup {
        id: particleGroupWhacko002
        name: privates.pGroupName_Whacko002
        system: systemDrumpf

        ParticleWhacko002 {
            id: particleWhacko002
        }
    }

    Age {
        id: ageHit
        enabled: false
        system: systemDrumpf
        groups: [ privates.pGroupName_Whacko001, privates.pGroupName_Whacko002 ]
        width: privates.starSize
        height: privates.starSize
        lifeLeft: 300
        once: true

        //Rectangle{anchors.fill: parent; color:"#55000000"}

        SpriteGoal {
            id: spriteGoalHit
            system:systemDrumpf
            anchors.fill: parent
            goalState: "hit"
            jump: true
        }

        onAffected: {
            resetAgeAffector();
            score++;
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
        interval: 800
        running: false
        repeat: true
        onTriggered: {

            resetAgeAffector();

            if(score > 0 && score % 10 == 0) increaseDifficulty();

            //console.debug("Total: " + totalWhackJobs + " Score: " + score);

            if(totalWhackJobs - score > ((totalWhackJobs*0.33)+0.5) && totalWhackJobs > 10) {
                timerEndGame.start();
                timer.stop();
            } else {

                var i=-1;

                do { i = getRandomIntInclusive(0, starEmitters.length-1); }
                while(i == privates.lastIndex);

                privates.lastIndex = i;

                starEmitters[i].emitter.burst(1);

                totalWhackJobs++;
            }
        }
    }

    Timer {
        id: timerEndGame
        interval: 1500
        running: false
        repeat: false
        onTriggered: rectWhackSurface.endGame();
    }


    function resetAgeAffector() {
        ageHit.x = -ageHit.width;
        ageHit.y = -ageHit.height;
        ageHit.enabled = false;
    }

    // Returns a random integer between min (included) and max (included)
    // Using Math.round() will give you a non-uniform distribution!
    function getRandomIntInclusive(min, max) {
      return Math.floor(Math.random() * (max - min + 1)) + min;
    }


    function reset() {
        score = 0;
        totalWhackJobs = 0;
        timer.interval = 800;
        timer.start();
    }

    function increaseDifficulty() {

        if(timer.interval > 500) {
            timer.interval -= 25;
        } else {
            if(privates.headsPerTick < 10) {
                privates.headsPerTick += 1;
            }
        }

        //console.debug("Difficulty Increased: " + timer.interval + " Score: " + score);
    }

//    Component.onCompleted: {
//        systemDrumpf.reset();
//        timer.start();
//    }

}
