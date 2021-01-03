import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("headball")

    ColumnLayout {
        anchors.fill: parent
        spacing: 0
        Item {
            focus: true
            Layout.fillWidth: true
            Layout.fillHeight: true
            Keys.forwardTo: [leftPlayer, rightPlayer]
            LeftPlayer {
                id: leftPlayer
                x: 10
                y: ground.y - height
            }
            RightPlayer {
                id: rightPlayer
                x: root.width - width - 10
                y: ground.y - height
            }
        }
        Rectangle {
            id: ground
            Layout.fillWidth: true
            Layout.preferredHeight: root.height * 0.2
            color: "lightgrey"
        }
    }
}
