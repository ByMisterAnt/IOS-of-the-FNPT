import QtQuick 2.12
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15

Item {
    width: parent.width*5+50
    height: parent.height+50



    Image {
            id: imageback
            anchors.top: parent.top
            anchors.topMargin: -50
            anchors.left: parent.left
            anchors.leftMargin: -20
            width: 1350
            height: 900
            opacity: 0.1
            source: "qrc:/pictures/map.jpeg"
            clip: false

        }
    Rectangle {
        id: example10
        anchors.top: parent.top
        anchors.topMargin: 100
        anchors.left: imageback.left
        anchors.leftMargin: 250
        //x:250
        //y:100
        width: 400
        height: 70
        color: "#e5f6fe"
        radius: 20
        border.width: 0

        Text {
            id: text11
            x: 15
            y: 25
            width: 74
            height: 18
            color: "#0d226e"
            text: "Долгота"
            font.pixelSize: 16
            font.family: "Arial"
        }

        TextInput {
            id: textInput11
            x: 100
            y: 25
            maximumLength: 32767
            width: 283
            height: 20
            color: "#0d226e"
            text: qsTr("")
            font.pixelSize: 16
            selectionColor: "#0d226e"
            selectedTextColor: "#e5f6fe"
            font.family: "Arial"
        }
    }
    Rectangle {
        id: example20
        anchors.top: parent.top
        anchors.topMargin: 200
        anchors.left: imageback.left
        anchors.leftMargin: 250
        width: 400
        height: 70
        color: "#e5f6fe"
        radius: 20
        border.width: 0
        Text {
            id: text22
            x: 15
            y: 25
            width: 74
            height: 18
            color: "#0d226e"
            text: "Широта"
            font.pixelSize: 16
            font.family: "Arial"
        }

        TextInput {
            id: textInput22
            x: 100
            y: 25
            width: 283
            height: 20
            color: "#0d226e"
            text: qsTr("")
            font.pixelSize: 16
            selectionColor: "#0d226e"
            maximumLength: 32767
            selectedTextColor: "#e5f6fe"
            font.family: "Arial"
        }
    }
    Rectangle {
        id: example34
        anchors.top: parent.top
        anchors.topMargin: 300
        anchors.left: imageback.left
        anchors.leftMargin: 250
        width: 400
        height: 70
        color: "#e5f6fe"
        radius: 20
        border.width: 0
        Text {
            id: text35
            x: 15
            y: 25
            width: 74
            height: 18
            color: "#0d226e"
            text: "Высота в м"
            font.pixelSize: 16
            font.family: "Arial"
        }

        TextInput {
            id: textInput34
            x: 100
            y: 25
            width: 283
            height: 20
            color: "#0d226e"
            text: qsTr("")
            font.pixelSize: 16
            selectionColor: "#0d226e"
            maximumLength: 32767
            selectedTextColor: "#e5f6fe"
            font.family: "Arial"
        }
    }
    Rectangle {
        id: example40
        anchors.top: parent.top
        anchors.topMargin: 400
        anchors.left: imageback.left
        anchors.leftMargin: 250
        width: 400
        height: 70
        color: "#e5f6fe"
        radius: 20
        border.width: 0
        Text {
            id: text45
            x: 15
            y: 25
            width: 74
            height: 18
            color: "#0d226e"
            text: "Аэродром"
            font.pixelSize: 16
            font.family: "Arial"
        }

        TextInput {
            id: textInput46
            x: 100
            y: 25
            width: 283
            height: 20
            color: "#0d226e"
            text: qsTr("")
            font.pixelSize: 16
            selectionColor: "#0d226e"
            maximumLength: 32767
            selectedTextColor: "#e5f6fe"
            font.family: "Arial"
        }
    }




    Rectangle {
        id: rectangle
        anchors.top: parent.top
        anchors.topMargin: 500
        anchors.left: imageback.left
        anchors.leftMargin: 250
        width: 400
        height: 70
        color: "#e5f6fe"
        radius: 20
        border.width: 0
        Text {
            id: text1
            x: 96
            y: 26
            color: "#0d226e"
            text: qsTr("Выбрать аэродром на карте")
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            font.styleName: "Regular"
            font.family: "Arial"
        }
        MouseArea {
            id: mouseArea
            x: 0
            y: 0
            width: 400
            height: 70
        }
    }
    Rectangle {
        id: rectangle1
        anchors.top: parent.top
        anchors.topMargin: 600
        anchors.left: imageback.left
        anchors.leftMargin: 250
        width: 190
        height: 70
        color: "#e5f6fe"
        radius: 20
        border.width: 0
        Text {
            id: text2
            x: 59
            y: 26
            color: "#0d226e"
            text: qsTr("Обновить")
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            font.styleName: "Regular"
            font.family: "Arial"
        }
        MouseArea {
            id: mouseArea1
            x: 0
            y: 0
            width: 190
            height: 70
        }
    }
    Rectangle {
        id: rectangle2
        anchors.top: parent.top
        anchors.topMargin: 600
        anchors.left: imageback.left
        anchors.leftMargin: 460
        width: 190
        height: 70
        color: "#e5f6fe"
        radius: 20
        border.width: 0
        Text {
            id: text3
            x: 55
            y: 26
            color: "#0d226e"
            text: qsTr("Отправить")
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            font.styleName: "Regular"
            font.family: "Arial"
        }
        MouseArea {
            id: mouseArea2
            x: 0
            y: 0
            width: 190
            height: 70
        }
    }





}
