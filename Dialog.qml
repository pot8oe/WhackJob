import QtQuick 2.0

Rectangle {

    FontLoader { id: pfontRobotoThin; source: "qrc:/fonts/Roboto_Mono/RobotoMono-Light.ttf"; }
    FontLoader { id: pfontRobotoBold; source: "qrc:/fonts/Roboto_Mono/RobotoMono-Bold.ttf"; }

    property alias fontRobotoThin: pfontRobotoThin;
    property alias fontRobotoBold: pfontRobotoBold;

    color: "#eeeeeeee"
    border.width: 5;
    border.color: "#ffd40000";

}
