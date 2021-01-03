import QtQuick 2.0
import QtQuick.Shapes 1.12

FootItem {
    width: shape.width
    height: shape.height
    keyUp: Qt.Key_W
    keyLeft: Qt.Key_A
    keyRight: Qt.Key_D
    property var keyKick: Qt.Key_Space
    property var angle: -45
    transformOrigin: Item.TopLeft

    Shape {
        id: shape
        width: 60
        height: 60
        anchors.fill: parent
        ShapePath {
            fillColor: "red"
            strokeWidth: 1
            strokeColor: "black"
            startX: 0; startY: 0
            PathLine { x: 60; y: 60 }
            PathLine { x: 0; y: 60 }
            PathLine { x: 0; y: 0 }
        }
    }
}
