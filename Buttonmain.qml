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
        id: autostarteiicon
        x: 0
        y: -10
        source: "qrc:/allicon/autostarte.png"
        sourceSize.height: 100
        sourceSize.width: 100
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: text1
        x: 17
        y: 85
        color: "#e5f6fe"
        text: "Автостарт"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignHCenter
        styleColor: "#e5f6fe"
        font.weight: Font.Light
        font.family: "Arial"
    }

    Image {
        id: aurostartairicon
        x: 0
        y: 120
        source: "qrc:/allicon/autostartair.png"
        fillMode: Image.PreserveAspectFit
        sourceSize.height: 100
        sourceSize.width: 100
    }

    Text {
        id: text2
        x: 13
        y: 220
        width: 77
        height: 37
        color: "#e5f6fe"
        text: "Автостарт\nв воздухе"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignHCenter
        styleColor: "#e5f6fe"
        font.weight: Font.Light
        font.family: "Arial"
    }

    Image {
        id: speedicon
        x: 10
        y: 270
        source: "qrc:/allicon/speed.png"
        fillMode: Image.PreserveAspectFit
        sourceSize.height: 80
        sourceSize.width: 80
    }

    Text {
        id: text3
        x: 21
        y: 355
        color: "#e5f6fe"
        text: "Скорость"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignHCenter
        styleColor: "#e5f6fe"
        font.weight: Font.Light
        font.family: "Arial"
    }

    Image {
        id: weighticon
        x: 10
        y: 405
        source: "qrc:/allicon/weight.png"
        fillMode: Image.PreserveAspectFit
        sourceSize.height: 80
        sourceSize.width: 80
    }

    Text {
        id: text4
        x: 29
        y: 490
        color: "#e5f6fe"
        text: "Масса"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignHCenter
        styleColor: "#e5f6fe"
        font.weight: Font.Light
        font.family: "Arial"
    }


    Image {
        id: playicon
        x: 10
        y: 540
        source: "qrc:/allicon/play.png"
        fillMode: Image.PreserveAspectFit
        sourceSize.height: 80
        sourceSize.width: 80
    }




    Text {
        id: text5
        x: 15
        y: 625
        color: "#e5f6fe"
        text: "Заморозка"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignHCenter
        styleColor: "#e5f6fe"
        font.weight: Font.Light
        font.family: "Arial"
    }

    Rectangle {
        id: rectangle
        x: 120
        y: 55
        width: 2
        height: 550
        opacity: 0.40
        color: "#e5f6fe"
    }


}
