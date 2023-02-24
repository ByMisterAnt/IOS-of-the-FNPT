import QtQuick 2.12
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.12
Item {
    width: parent.width*5+50
    height: parent.height+50


    DropShadow
        {
            anchors.fill: example34
            horizontalOffset: 4
            verticalOffset: 4
            radius: 10
            samples: 15
            source: example34
            color: "#0d226e"
        }
    Rectangle {
        id: example34
        anchors.top: parent.top
        anchors.topMargin: 200
        anchors.left: parent.left
        anchors.leftMargin: 0
        width: 400
        height: 70
        color: "#e5f6fe"
        radius: 20
        border.width: 0
        Text {
            id: text35
            x: 15
            y: 25
            width: 74
            height: 18
            color: "#0d226e"
            text: "Скорость в м/с"
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
           x: 155
           y: 25
           width: 225
           height: 20
           radius: 20
           color: "#dff5ff"
       }

        TextInput {
            id: textInput34
            x: 160
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
    DropShadow
        {
            anchors.fill: example40
            horizontalOffset: 4
            verticalOffset: 4
            radius: 10
            samples: 15
            source: example40
            color: "#0d226e"
        }
    Rectangle {
        id: example40
        anchors.top: parent.top
        anchors.topMargin: 300
        anchors.left: parent.left
        anchors.leftMargin: 0
        width: 400
        height: 70
        color: "#e5f6fe"
        radius: 20
        border.width: 0
        Text {
            id: text45
            x: 15
            y: 25
            width: 74
            height: 18
            color: "#0d226e"
            text: "Ускорение в м/с^2"
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
           x: 155
           y: 25
           width: 225
           height: 20
           radius: 20
           color: "#dff5ff"
       }
        TextInput {
            id: textInput46
            x: 160
            y: 25
            width: 283
            height: 20
            color: "#0d226e"
            text: qsTr("")
            font.pixelSize: 16
            selectionColor: "#0d226e"
            maximumLength: 300
            selectedTextColor: "#e5f6fe"
            font.family: "Arial"
        }
    }




    DropShadow
        {
            anchors.fill: rectangle1
            horizontalOffset: 7
            verticalOffset: 7
            radius: 10
            samples: 15
            source: rectangle1
            color: "#0d226e"
        }
    Rectangle {
        id: rectangle1
        anchors.top: parent.top
        anchors.topMargin: 400
        anchors.left: parent.left
        anchors.leftMargin: 0
        width: 190
        height: 70
        radius: 20
        border.width: 0
        color:
                {"#e5f6fe"
                    if (mouseArea1.containsMouse)
                    {
                        if(mouseArea1.pressed)
                        {
                            return "#c3d0ff"
                        }
                        else
                        {
                            colorAnim2.start()
                            return  "#e5f6fe"
                        }
                    }

                    else
                    {
                        unhoverAnim2.start()
                        return "#e5f6fe"

                    }
                }


                PropertyAnimation
                {
                    id: colorAnim2;
                    target: rectangle1;
                    property: "color";
                    from:"#e5f6fe";
                    to: "#c3d0ff";
                    duration: 300
                }

                PropertyAnimation
                {
                     id: unhoverAnim2;
                     target: rectangle1;
                     property: "color";
                     from: "#c3d0ff";
                     to: "#e5f6fe";
                     duration: 300
                }


        Text {
            id: text2
            x: 59
            y: 26
            color: "#0d226e"
            text: qsTr("Обновить")
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            font.styleName: "Regular"
            font.family: "Arial"
        }
        MouseArea {
            id: mouseArea1
            x: 0
            y: 0
            width: 190
            height: 70
            anchors.fill: parent
                        hoverEnabled: true
                        onClicked: rectangle1.clicked()
                        cursorShape: Qt.PointingHandCursor
        }
    }
    DropShadow
        {
            anchors.fill: rectangle2
            horizontalOffset: 7
            verticalOffset: 7
            radius: 10
            samples: 15
            source: rectangle2
            color: "#0d226e"
        }

    Rectangle {
        id: rectangle2
        anchors.top: parent.top
        anchors.topMargin: 400
        anchors.left: parent.left
        anchors.leftMargin: 210
        width: 190
        height: 70
        radius: 20
        border.width: 0
        color:
                {"#e5f6fe"
                    if (mouseArea2.containsMouse)
                    {
                        if(mouseArea2.pressed)
                        {
                            return "#c3d0ff"
                        }
                        else
                        {
                            colorAnim1.start()
                            return  "#e5f6fe"
                        }
                    }

                    else
                    {
                        unhoverAnim1.start()
                        return "#e5f6fe"

                    }
                }


                PropertyAnimation
                {
                    id: colorAnim1;
                    target: rectangle2;
                    property: "color";
                    from:"#e5f6fe";
                    to: "#c3d0ff";
                    duration: 300
                }

                PropertyAnimation
                {
                     id: unhoverAnim1;
                     target: rectangle2;
                     property: "color";
                     from: "#c3d0ff";
                     to: "#e5f6fe";
                     duration: 300
                }


        Text {
            id: text3
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
            id: mouseArea2
            x: 0
            y: 0
            width: 190
            height: 70
            anchors.fill: parent
                        hoverEnabled: true
                        onClicked: rectangle2.clicked()
                        cursorShape: Qt.PointingHandCursor
        }
    }



}
