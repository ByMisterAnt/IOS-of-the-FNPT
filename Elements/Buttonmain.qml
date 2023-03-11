import QtQuick 2.12
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.12
Item {
    width: parent.width*5+50
    height: parent.height+50


    Rectangle {
        id: rectangle234
        anchors.top: parent.top
        anchors.topMargin: 120
        anchors.left: parent.left
        anchors.leftMargin: 140
        width: 2
        height: 550
        opacity: 0.40
        color: "#e5f6fe"
}




    ListView{
         id:pole12
         anchors.fill: parent
         spacing:  20
         model:polemodel1
         delegate:
             Item
         {
                 id: example25
                 width: 140
                 height: 140

                 RadialGradient{
                     visible: (btnMouse.containsMouse) ? true : false
                     anchors.fill: example25
                     gradient: Gradient{
                         GradientStop { position: 0.00; color: "#e5f6fe"}
                         GradientStop { position: 0.5; color: "#10334999"}
                     }
                 }
                 MouseArea{
                     id:btnMouse
                     anchors.fill: parent
                     hoverEnabled: true
                     onClicked: example25.clicked()
                     cursorShape: Qt.PointingHandCursor

                 }

                 Image
                 {
                     id: example
                     anchors.centerIn: example25
                     width: model.width
                     height: model.height
                     source: model.url

                     MouseArea
                     {
                         id:maousearea2
                         anchors.centerIn: example25
                         width:100
                         height: 100
                         onClicked:
                         {
                             podokno.source = model.path
                         }
                     }
                     Text
                     {
                         id: text12

                         anchors.horizontalCenter: parent.horizontalCenter
                         //anchors.verticalCenter: parent.verticalCenter
                         horizontalAlignment: Text.AlignHCenter
                         anchors.top: parent.top
                         anchors.topMargin: 110
                         width: 74
                         height: 18
                         color: "#e5f6fe"
                         text: model.text
                         font.pixelSize: 16
                         font.family: "Arial"
                         }

                 }

          }
     ListModel
     {
         id:polemodel1

         ListElement
                 {
                     width: 120
                     height: 120
                     text: "Автостарт \nна земле"
                    url: "qrc:/images/autostarte.png"
                    value: "btn1"
                                //path: "qrc:/Buttonmain.qml"

                 }
                 ListElement
                 {
                     width: 120
                     height: 120
                     text: "Автостарт \nв воздухе"
                     url: "qrc:/images/autostartair.png"
                     value: "btn2"
                                // path: "qrc:/Buttonweather.qml"
                 }
                 ListElement
                 {
                     width: 100
                     height: 100
                     text: "Скорость"
                     url: "qrc:/images/speed.png"
                     value: "btn3"
                     path: "qrc:/UI/Speedmenu.qml"
                 }
                 ListElement
                 {
                     width: 100
                     height: 100
                     text: "Масса"
                     url: "qrc:/images/weight.png"
                     value: "btn4"
                     path: "qrc:/UI/Weightmain.qml"
                 }
                 ListElement
                 {
                     width: 100
                     height: 100
                     text: "Заморозка"
                     url: "qrc:/images/play.png"
                     value: "btn5"
                                // path: "qrc:/Setupmain.qml"
                 }
     }
}


}
