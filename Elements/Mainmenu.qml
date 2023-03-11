import QtQuick 2.12
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.12

Item
{
    anchors.fill: parent

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
          id:pole1
          anchors.fill: parent
          spacing:  20
          model:polemodel
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
                          GradientStop { position: 0.5; color: "#000d226f"}

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
                              if(model.path == "") mainrectangle.width = 175
                              else mainrectangle.width = ((mainRow.width/4 > 350) ? 350 : mainRow.width/4)
                              podokno.source = model.uiPath
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

                      Rectangle
                      {
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

    }
    ListModel{
        id:polemodel
        ListElement
                {
                    text: "Главная"
                   url: "qrc:/images/mainicon.png"
                   value: "btn1"
                               path: "qrc:/Elements/Buttonmain.qml"

                }
                ListElement
                {
                    text: "Погода"
                    url: "qrc:/images/environmenticon.png"
                    value: "btn2"
                                path: "qrc:/Elements/Buttonweather.qml"
                                uiPath: "qrc:/UI/Timemain.qml"
                }
                ListElement
                {
                    text: "Расположение"
                    url: "qrc:/images/mapicon.png"
                    value: "btn3"
                                path: "" //"qrc:/UI/Mapmain.qml"
                    uiPath: "qrc:/UI/Mapmain.qml"
                }
                ListElement
                {
                    text: "Отказы"
                    url: "qrc:/images/mistakeicon.png"
                    value: "btn4"
                                path: "qrc:/Elements/Buttonmistake.qml"
                }
                ListElement
                {
                    text: "Настройки"
                    url: "qrc:/images/setupicon.png"
                    value: "btn5"

                    path: ""
                    uiPath: "qrc:/UI/Setupmain.qml"
                }
    }
}
