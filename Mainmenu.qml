import QtQuick 2.12
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.2

Item {
    //y: 50
    //x: parent.width/3
    width: parent.width/3
    height: parent.height
    Image {
        id: mainicon
        x: 10
        y: 0
        source: "qrc:/imagesresoures/mainicon.png"
        sourceSize.height: 80
        sourceSize.width: 80
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: text1
        x: 24
        y: 85
        color: "#e5f6fe"
        text: "Главная"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignHCenter
        styleColor: "#e5f6fe"
        font.weight: Font.Light
        font.family: "Arial"
    }

    Rectangle {
        id: rectangle
        x: 0
        y: 110
        width: 100
        height: 2
        opacity: 0.402
        color: "#e5f6fe"
        border.width: 0
    }

    Image {
        id: environmenticon
        x: 10
        y: 135
        source: "qrc:/allicon/environmenticon.png"
        fillMode: Image.PreserveAspectFit
        sourceSize.height: 80
        sourceSize.width: 80
    }

    Text {
        id: text2
        x: 27
        y: 220
        color: "#e5f6fe"
        text: "Погода"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignHCenter
        styleColor: "#e5f6fe"
        font.weight: Font.Light
        font.family: "Arial"
    }

    Rectangle {
        id: rectangle1
        x: 0
        y: 245
        width: 100
        height: 2
        opacity: 0.402
        color: "#e5f6fe"
        border.width: 0
    }

    Image {
        id: mapicon
        x: 10
        y: 270
        source: "qrc:/allicon/mapicon.png"
        fillMode: Image.PreserveAspectFit
        sourceSize.height: 80
        sourceSize.width: 80
    }

    Text {
        id: text3
        x: 3
        y: 355
        color: "#e5f6fe"
        text: "Расположение"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignHCenter
        styleColor: "#e5f6fe"
        font.weight: Font.Light
        font.family: "Arial"
    }

    Rectangle {
        id: rectangle2
        x: 0
        y: 380
        width: 100
        height: 2
        opacity: 0.402
        color: "#e5f6fe"
        border.width: 0
    }

    Image {
        id: mistakeicon
        x: 10
        y: 405
        source: "qrc:/allicon/mistakeicon.png"
        fillMode: Image.PreserveAspectFit
        sourceSize.height: 80
        sourceSize.width: 80
    }

    Text {
        id: text4
        x: 26
        y: 490
        color: "#e5f6fe"
        text: "Отказы"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignHCenter
        styleColor: "#e5f6fe"
        font.weight: Font.Light
        font.family: "Arial"
    }


    Rectangle {
        id: rectangle3
        x: 0
        y: 515
        width: 100
        height: 2
        opacity: 0.402
        color: "#e5f6fe"
        border.width: 0
    }

    Image {
        id: setupicon
        x: 10
        y: 540
        source: "qrc:/allicon/setupicon.png"
        fillMode: Image.PreserveAspectFit
        sourceSize.height: 80
        sourceSize.width: 80
    }




    Text {
        id: text5
        x: 16
        y: 625
        color: "#e5f6fe"
        text: "Настройки"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignHCenter
        styleColor: "#e5f6fe"
        font.weight: Font.Light
        font.family: "Arial"
    }






}
