import QtQuick 2.0
import QtQuick.Shapes 1.12

Shape {
    id: footItem

    property var keyKick
    property int angle

    SequentialAnimation {
        id: kickAnimation
        property int duration: 250
        RotationAnimation {
            target: footItem
            property: "rotation"
            to: angle
            duration: kickAnimation.duration * 0.4
            easing.type: Easing.OutExpo
        }
        RotationAnimation {
            target: footItem
            property: "rotation"
            to: 0
            duration: kickAnimation.duration * 0.6
            easing.type: Easing.InExpo
        }
    }
    Keys.onPressed: {
        if (event.key === keyKick && !kickAnimation.running) {
            kickAnimation.restart();
        }
    }
}
