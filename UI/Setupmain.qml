import QtQuick 2.12
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15

Item {
    width: parent.width*5+50
    height: parent.height+50


    Image {
        id: imageback
        x: -50
        y: -50
        width: 1350
        height: 900
        opacity: 0.1
        source: "qrc:/pictures/airplaneback.jpeg"
        clip: false

    }



    Rectangle {
        id: example
        x: 250
        y: 100
        width: 400
        height: 70
        color: "#e5f6fe"
        radius: 20
        border.width: 0

        Text {
            id: text1
            x: 15
            y: 25
            width: 74
            height: 18
            color: "#0d226e"
            text: "IP адресс"
            font.pixelSize: 16
            font.family: "Arial"
        }

        TextInput {
            id: textInput
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
        id: rectangle2
        x: 250
        y: 300
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

    Rectangle {
        id: example1
        x: 250
        y: 200
        width: 400
        height: 70
        color: "#e5f6fe"
        radius: 20
        border.width: 0
        Text {
            id: text2
            x: 15
            y: 25
            width: 74
            height: 18
            color: "#0d226e"
            text: "Порт"
            font.pixelSize: 16
            font.family: "Arial"
        }

        TextInput {
            id: textInput1
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

}
