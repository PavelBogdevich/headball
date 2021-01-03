import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Shapes 1.12

GravityItem {
    id: player

    width: 90
    height: 90
    keyUp: Qt.Key_W
    keyLeft: Qt.Key_A
    keyRight: Qt.Key_D
    Keys.forwardTo: [head, foot]

    property var color: "red"
    property var borderWidth: 1
    property var borderColor: "black"
    property var keyKick: Qt.Key_Space

    Rectangle {
        anchors.fill: parent
        border.width: 2
        border.color: "green"
        Rectangle {
            id: head
            x: 0
            y: 0
            z: 1
            width: 60
            height: 60
            color: player.color
            border.width: player.borderWidth
            border.color: player.borderColor
        }
        FootItem {
            id: foot
            x: head.width / 2
            y: head.height - 10
            width: 40
            height: 40
            angle: -45
            keyKick: player.keyKick
            transformOrigin: Item.TopLeft
            ShapePath {
                fillColor: player.color
                strokeWidth: player.borderWidth
                strokeColor: player.borderColor
                startX: 0; startY: 0
                PathLine { x: 40; y: 40 }
                PathLine { x: 0; y: 40 }
                PathLine { x: 0; y: 0 }
            }
        }
    }
}
