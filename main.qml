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
            Layout.fillWidth: true
            Layout.fillHeight: true
            LeftFootItem {
                id: leftFootItem
                x: 10
                y: ground.y - height - 1
            }
            RightFootItem {
                id: rightFootItem
                x: root.width - width - 10
                y: ground.y - height - 1
            }
            Keys.forwardTo: [leftFootItem, rightFootItem]
            focus: true

            //            GravityItem {
            //                id: head
            //                x: 10
            //                y: ground.y - height
            //                width: 60
            //                height: 60
            //                Rectangle {
            //                    anchors.fill: parent
            //                    color: "red"
            //                    border.width: 1
            //                    border.color: "black"
            //                }
            //            }
        }
        Rectangle {
            id: ground
            Layout.fillWidth: true
            Layout.preferredHeight: root.height * 0.2
            color: "lightgrey"
        }
    }
}
