import QtQuick 2.12
import QtQuick.Controls 2.15


Page {
    id: page
    width: 640
    height: 480
    property alias view: view

    header: Label {
        color: "#15af15"
        text: qsTr("Where do people use Qt?")
        font.pointSize: 17
        font.bold: true
        font.family: "Arial"
        renderType: Text.NativeRendering
        horizontalAlignment: Text.AlignHCenter
        padding: 10

        Switch {
            id: switch1
            x: 532
            y: 8
            width: 75
            height: 31
            text: qsTr("Switch")
        }
    }
    Rectangle {
        id: root
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.bottomMargin: 0
        anchors.topMargin: 0

        Image {
            id: image
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: root
            source: "./logo.png"
            opacity: 0.5

        }

        ListView {
            id: view
            anchors.fill: root
            anchors.margins: 25
            model: myModel
            delegate: Text {
                anchors.leftMargin: 50
                font.pointSize: 15
                horizontalAlignment: Text.AlignHCenter
                text: display
            }
        }
    }
    NumberAnimation {
        id: anim
        running: true
        target: view
        property: "contentY"
        duration: 500
    }
}
