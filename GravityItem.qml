import QtQuick 2.0

Item {
    id: gravityItem
    focus: true

    property real dx: width
    property real dy: 2 * height

    property var keyUp: Qt.Key_Up
    property var keyLeft: Qt.Key_Left
    property var keyRight: Qt.Key_Right

    property real upY: 0.0
    property real downY: 0.0
    property real targetX: 0.0

    SequentialAnimation {
        id: yAnimation
        property int duration: 250
        NumberAnimation {
            target: gravityItem
            properties: "y"
            to: upY
            duration: yAnimation.duration * 0.4
            easing.type: Easing.OutExpo
        }
        NumberAnimation {
            target: gravityItem
            properties: "y"
            to: downY
            duration: yAnimation.duration * 0.6
            easing.type: Easing.InExpo
        }
    }
    NumberAnimation {
        id: xAnimation
        target: gravityItem
        properties: "x"
        to: targetX
    }

    Keys.onPressed: {
        if (event.key === keyUp && !yAnimation.running) {
            upY = y - dy;
            downY = y;
            yAnimation.start();
        }
        if (event.key === keyLeft) {
            targetX = x - dx < 0 ? 0 : x - dx;
            xAnimation.restart();
        }
        if (event.key === keyRight) {
            targetX = x + dx + width > root.width ? root.width - width : x + dx;
            xAnimation.restart();
        }
    }
}
