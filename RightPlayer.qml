import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Shapes 1.12

GravityItem {
    id: player

    width: 90
    height: 90
    Keys.forwardTo: [head, foot]

    property var color: "red"
    property var borderWidth: 1
    property var borderColor: "black"
    property var keyKick: Qt.Key_Backspace

    Rectangle {
        anchors.fill: parent
        border.width: 2
        border.color: "green"
        Rectangle {
            id: head
            x: 30
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
            x: 20
            y: head.height - 10
            width: 40
            height: 40
            angle: 45
            keyKick: player.keyKick
            transformOrigin: Item.TopRight
            ShapePath {
                fillColor: player.color
                strokeWidth: player.borderWidth
                strokeColor: player.borderColor
                startX: 40; startY: 0
                PathLine { x: 0; y: 40 }
                PathLine { x: 40; y: 40 }
                PathLine { x: 40; y: 0 }
            }
        }
    }
}
