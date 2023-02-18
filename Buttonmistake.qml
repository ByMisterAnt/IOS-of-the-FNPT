import QtQuick 2.12
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.2

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
    Image {
        id: mictakeicon
        x: 0
        y: 237
        source: "qrc:/allicon/mictake.png"
        fillMode: Image.PreserveAspectFit
        sourceSize.height: 80
        sourceSize.width: 80
    }

    Text {
        id: text3
        x: 16
        y: 322
        color: "#e5f6fe"
        text: "Отказы"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignHCenter
        styleColor: "#e5f6fe"
        font.weight: Font.Light
        font.family: "Arial"
    }

    Image {
        id: grafficicon
        x: 0
        y: 372
        source: "qrc:/allicon/graffic.png"
        fillMode: Image.PreserveAspectFit
        sourceSize.height: 80
        sourceSize.width: 80
    }

    Text {
        id: text4
        x: 15
        y: 457
        color: "#e5f6fe"
        text: "Графики"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignHCenter
        styleColor: "#e5f6fe"
        font.weight: Font.Light
        font.family: "Arial"
    }





    Rectangle {
        id: rectangle
        x: 105
        y: 55
        width: 2
        height: 550
        opacity: 0.40
        color: "#e5f6fe"
    }
}
