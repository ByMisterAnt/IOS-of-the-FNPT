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
        source: "qrc:/pictures/weather.jpeg"
        clip: false

    }

    Rectangle {
        id: rectangle234
        anchors.top: parent.top
        anchors.topMargin: 120
        anchors.left: parent.left
        anchors.leftMargin: 130
        width: 2
        height: 550
        opacity: 0.40
        color: "#e5f6fe"
    }

    ListView{
         id:pole12
         anchors.fill: parent
         spacing:  50
         model:polemodel1
         delegate:

     Image {
         id: example12
         width: 100
         height: 100
         source: model.url
MouseArea{
    id:maousearea2
    width:100
    height: 100
}
     Text {
         id: text123
         anchors.horizontalCenter: parent.horizontalCenter
         //anchors.verticalCenter: parent.verticalCenter
         horizontalAlignment: Text.AlignHCenter
         anchors.bottom: parent.bottom
         anchors.bottomMargin: -25
         width: 74
         height: 18
         color: "#e5f6fe"
         text: model.text
         font.pixelSize: 16
         font.family: "Arial"
         }

 }
     ListModel{
         id:polemodel1
         ListElement
                 {
                     text: "Отказы"
                    url: "qrc:/allicon/mictake.png"
                    value: "btn1"
                                //path: "qrc:/Buttonmain.qml"

                 }
                 ListElement
                 {
                     text: "Графики"
                     url: "qrc:/allicon/graffic.png"
                     value: "btn2"
                                // path: "qrc:/Buttonweather.qml"
                 }

     }
}
}
