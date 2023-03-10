import QtQuick 2.12
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.12

Item {
    width: parent.width*5+50
    height: parent.height+50

   ListView{
         id:pole1
         anchors.fill: parent
         spacing:  20
         model:polemodel
         delegate:
             Item{
                 id: example25
                 width: 140
                 height: 140

                 RadialGradient{
                     visible: (btnMouse.containsMouse) ? true : false
                     anchors.fill: example25
                     gradient: Gradient{

                         GradientStop { position: 0.00; color: "#e5f6fe"}
                         GradientStop { position: 0.5; color: "#0D226F"}

                     }
                 }
                 MouseArea{
                     id:btnMouse
                     anchors.fill: parent
                     hoverEnabled: true
                     onClicked: example25.clicked()
                     cursorShape: Qt.PointingHandCursor

                 }



     Image {
         id: example
         anchors.centerIn: example25
         width: 100
         height: 100
         source: model.url
MouseArea{
    id:maousearea2
    anchors.centerIn: example25
    width:100
    height: 100
    onClicked:
         {
             proverka.source = model.path
}
}
     Text {
         id: text12
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

         Rectangle {
                 id: rectangle1
                 anchors.horizontalCenter: parent.horizontalCenter
                 y: 135
                 width: 100
                 height: 2
                 opacity: 0.4
                 color: "#e5f6fe"
                 border.width: 0

                 }
}

}
     ListModel{
         id:polemodel
         ListElement
                 {
                     text: "Главная"
                    url: "qrc:/imagesresoures/mainicon.png"
                    value: "btn1"
                                path: "qrc:/Buttonmain.qml"

                 }
                 ListElement
                 {
                     text: "Погода"
                     url: "qrc:/allicon/environmenticon.png"
                     value: "btn2"
                                 path: "qrc:/Buttonweather.qml"
                 }
                 ListElement
                 {
                     text: "Расположение"
                     url: "qrc:/allicon/mapicon.png"
                     value: "btn3"
                                 path: "qrc:/Mapmain.qml"
                 }
                 ListElement
                 {
                     text: "Отказы"
                     url: "qrc:/allicon/mistakeicon.png"
                     value: "btn4"
                                 path: "qrc:/Buttonmistake.qml"
                 }
                 ListElement
                 {
                     text: "Настройки"
                     url: "qrc:/allicon/setupicon.png"
                     value: "btn5"
                                 path: "qrc:/Setupmain.qml"
                 }
     }
}
}
