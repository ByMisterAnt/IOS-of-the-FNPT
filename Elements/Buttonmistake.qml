import QtQuick 2.12
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
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

             Item {
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
             //proverka.source = model.path
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

}

}
     ListModel{
         id:polemodel1
         ListElement
                 {
                     text: "Отказы"
                    url: "qrc:/images/mictake.png"
                    value: "btn1"
                                //path: "qrc:/Buttonmain.qml"

                 }
                 ListElement
                 {
                     text: "Графики"
                     url: "qrc:/images/graffic.png"
                     value: "btn2"
                                // path: "qrc:/Buttonweather.qml"
                 }

     }
}
}
