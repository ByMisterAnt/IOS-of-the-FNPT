import QtQuick 2.12
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.12
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
            source: "qrc:/pictures/airplaneback.jpeg"
            clip: false

        }


    DropShadow
        {
            anchors.fill: example10
            horizontalOffset: 4
            verticalOffset: 4
            radius: 10
            samples: 15
            source: example10
            color: "#0d226e"
        }
    Rectangle {
        id: example10
        anchors.top: parent.top
        anchors.topMargin: 100
        anchors.left: imageback.left
        anchors.leftMargin: 250
        width: 400
        height: 70
        color: "#e5f6fe"
        radius: 20
        border.width: 0

        Text {
            id: text10
            x: 15
            y: 25
            width: 74
            height: 18
            color: "#0d226e"
            text: "IP адресс"
            font.pixelSize: 16
            font.family: "Arial"
        }
        DropShadow
            {
                anchors.fill: shadow25
                horizontalOffset: 3
                verticalOffset: 3
                radius: 10
                samples: 15
                source: shadow25
                color: "#c3d0ff"
            }
        Rectangle{
            id:shadow25
           x: 135
           y: 25
           width: 250
           height: 20
           radius: 20
           color: "#dff5ff"
       }
        TextInput {
            id: textInput10
            x: 140
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

    DropShadow
        {
            anchors.fill: rectangle20
            horizontalOffset: 7
            verticalOffset: 7
            radius: 10
            samples: 15
            source: rectangle20
            color: "#0d226e"
        }
    Rectangle {
        id: rectangle20
        anchors.top: parent.top
        anchors.topMargin: 300
        anchors.left: imageback.left
        anchors.leftMargin: 250
        width: 190
        height: 70
        radius: 20
        border.width: 0
        color:
                {"#e5f6fe"
                    if (mouseArea20.containsMouse)
                    {
                        if(mouseArea20.pressed)
                        {
                            return "#c3d0ff"
                        }
                        else
                        {
                            colorAnim.start()
                            return  "#e5f6fe"
                        }
                    }

                    else
                    {
                        unhoverAnim.start()
                        return "#e5f6fe"

                    }
                }


                PropertyAnimation
                {
                    id: colorAnim;
                    target: rectangle20;
                    property: "color";
                    from:"#e5f6fe";
                    to: "#c3d0ff";
                    duration: 300
                }

                PropertyAnimation
                {
                     id: unhoverAnim;
                     target: rectangle20;
                     property: "color";
                     from: "#c3d0ff";
                     to: "#e5f6fe";
                     duration: 300
                }


        Text {
            id: text20
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
            id: mouseArea20
            x: 0
            y: 0
            width: 190
            height: 70
            anchors.fill: parent
                        hoverEnabled: true
                        onClicked: rectangle20.clicked()
                        cursorShape: Qt.PointingHandCursor
        }
    }

    DropShadow
        {
            anchors.fill: example30
            horizontalOffset: 4
            verticalOffset: 4
            radius: 10
            samples: 15
            source: example30
            color: "#0d226e"
        }
    Rectangle {
        id: example30
        anchors.top: parent.top
        anchors.topMargin: 200
        anchors.left: imageback.left
        anchors.leftMargin: 250
        width: 400
        height: 70
        color: "#e5f6fe"
        radius: 20
        border.width: 0
        Text {
            id: text30
            x: 15
            y: 25
            width: 74
            height: 18
            color: "#0d226e"
            text: "Порт"
            font.pixelSize: 16
            font.family: "Arial"
        }
        DropShadow
            {
                anchors.fill: shadow23
                horizontalOffset: 3
                verticalOffset: 3
                radius: 10
                samples: 15
                source: shadow23
                color: "#c3d0ff"
            }
        Rectangle{
            id:shadow23
           x: 135
           y: 25
           width: 250
           height: 20
           radius: 20
           color: "#dff5ff"
       }
        TextInput {
            id: textInput30
            x: 140
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
