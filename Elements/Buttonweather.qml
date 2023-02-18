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
        source: "qrc:/pictures/weather.jpeg"
        clip: false

    }
    Image {
        id: dayandnighticon
        x: 10
        y: 0
        source: "qrc:/allicon/dayandnight.png"
        sourceSize.height: 80
        sourceSize.width: 80
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: text1
        x: 10
        y: 85
        color: "#e5f6fe"
        text: "Время суток"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignHCenter
        styleColor: "#e5f6fe"
        font.weight: Font.Light
        font.family: "Arial"
    }

    Image {
        id: windicon
        x: 10
        y: 135
        source: "qrc:/allicon/wind.png"
        fillMode: Image.PreserveAspectFit
        sourceSize.height: 80
        sourceSize.width: 80
    }

    Text {
        id: text2
        x: 27
        y: 220
        color: "#e5f6fe"
        text: "Ветер"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignHCenter
        styleColor: "#e5f6fe"
        font.weight: Font.Light
        font.family: "Arial"
    }

    Image {
        id: snowicon
        x: 10
        y: 270
        source: "qrc:/allicon/snow.png"
        fillMode: Image.PreserveAspectFit
        sourceSize.height: 80
        sourceSize.width: 80
    }

    Text {
        id: text3
        x: 31
        y: 355
        color: "#e5f6fe"
        text: "Снег"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignHCenter
        styleColor: "#e5f6fe"
        font.weight: Font.Light
        font.family: "Arial"
    }

    Image {
        id: rainicon
        x: 10
        y: 405
        source: "qrc:/allicon/rain.png"
        fillMode: Image.PreserveAspectFit
        sourceSize.height: 80
        sourceSize.width: 80
    }

    Text {
        id: text4
        x: 25
        y: 490
        color: "#e5f6fe"
        text: "Дождь"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignHCenter
        styleColor: "#e5f6fe"
        font.weight: Font.Light
        font.family: "Arial"
    }


    Image {
        id: cloudicon
        x: 10
        y: 540
        source: "qrc:/allicon/cloud.png"
        fillMode: Image.PreserveAspectFit
        sourceSize.height: 80
        sourceSize.width: 80
    }




    Text {
        id: text5
        x: 22
        y: 625
        color: "#e5f6fe"
        text: "Облака"
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
