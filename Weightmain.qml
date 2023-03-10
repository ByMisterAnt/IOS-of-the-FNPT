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
        anchors.topMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: -20
        width: 800
        height: 800
        source: "qrc:/photoplane1/airplane12.png"
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
        anchors.topMargin: 30
        anchors.left: parent.left
        anchors.leftMargin: -100
        width: 400
        height: 70
        color: "#e5f6fe"
        radius: 20
        border.width: 0

        Text {
            id: text11
            x: 15
            y: 25
            width: 74
            height: 18
            color: "#0d226e"
            text: "Вес самолета в т"
            font.pixelSize: 16
            font.family: "Arial"
        }
        DropShadow
            {
                anchors.fill: shadow29
                horizontalOffset: 3
                verticalOffset: 3
                radius: 10
                samples: 15
                source: shadow29
                color: "#c3d0ff"
            }
        Rectangle{
            id:shadow29
           x: 155
           y: 25
           width: 230
           height: 20
           radius: 20
           color: "#dff5ff"
       }
        TextInput {
            id: textInput11
            x: 160
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
            anchors.fill: example20
            horizontalOffset: 4
            verticalOffset: 4
            radius: 10
            samples: 15
            source: example20
            color: "#0d226e"
        }
    Rectangle {
        id: example20
        anchors.top: parent.top
        anchors.topMargin: 30
        anchors.left: parent.left
        anchors.leftMargin: 460
        width: 400
        height: 70
        color: "#e5f6fe"
        radius: 20
        border.width: 0

        Text {
            id: text21
            x: 15
            y: 25
            width: 74
            height: 18
            color: "#0d226e"
            text: "Вес топлива в т"
            font.pixelSize: 16
            font.family: "Arial"
        }
        DropShadow
            {
                anchors.fill: shadow39
                horizontalOffset: 3
                verticalOffset: 3
                radius: 10
                samples: 15
                source: shadow39
                color: "#c3d0ff"
            }
        Rectangle{
            id:shadow39
           x: 155
           y: 25
           width: 230
           height: 20
           radius: 20
           color: "#dff5ff"
       }
        TextInput {
            id: textInput21
            x: 160
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
        anchors.topMargin: 130
        anchors.left: parent.left
        anchors.leftMargin: 460
        width: 200
        height: 70
        color: "#e5f6fe"
        radius: 20
        border.width: 0

        Text {
            id: text31
            x: 15
            y: 25
            width: 74
            height: 18
            color: "#0d226e"
            text: "т"
            font.pixelSize: 16
            font.family: "Arial"
        }
        DropShadow
            {
                anchors.fill: shadow49
                horizontalOffset: 3
                verticalOffset: 3
                radius: 10
                samples: 15
                source: shadow49
                color: "#c3d0ff"
            }
        Rectangle{
            id:shadow49
           x: 35
           y: 25
           width: 150
           height: 20
           radius: 20
           color: "#dff5ff"
       }
        TextInput {
            id: textInput31
            x: 40
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
        anchors.topMargin: 580
        anchors.left: parent.left
        anchors.leftMargin: 460
        width: 200
        height: 70
        color: "#e5f6fe"
        radius: 20
        border.width: 0

        Text {
            id: text41
            x: 15
            y: 25
            width: 74
            height: 18
            color: "#0d226e"
            text: "т"
            font.pixelSize: 16
            font.family: "Arial"
        }
        DropShadow
            {
                anchors.fill: shadow59
                horizontalOffset: 3
                verticalOffset: 3
                radius: 10
                samples: 15
                source: shadow59
                color: "#c3d0ff"
            }
        Rectangle{
            id:shadow59
           x: 35
           y: 25
           width: 150
           height: 20
           radius: 20
           color: "#dff5ff"
       }
        TextInput {
            id: textInput41
            x: 40
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
            anchors.fill: example50
            horizontalOffset: 4
            verticalOffset: 4
            radius: 10
            samples: 15
            source: example50
            color: "#0d226e"
        }
    Rectangle {
        id: example50
        anchors.top: parent.top
        anchors.topMargin: 270
        anchors.left: parent.left
        anchors.leftMargin: 550
        width: 200
        height: 70
        color: "#e5f6fe"
        radius: 20
        border.width: 0

        Text {
            id: text51
            x: 15
            y: 25
            width: 74
            height: 18
            color: "#0d226e"
            text: "т"
            font.pixelSize: 16
            font.family: "Arial"
        }
        DropShadow
            {
                anchors.fill: shadow69
                horizontalOffset: 3
                verticalOffset: 3
                radius: 10
                samples: 15
                source: shadow69
                color: "#c3d0ff"
            }
        Rectangle{
            id:shadow69
           x: 35
           y: 25
           width: 150
           height: 20
           radius: 20
           color: "#dff5ff"
       }
        TextInput {
            id: textInput51
            x: 40
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
            anchors.fill: example60
            horizontalOffset: 4
            verticalOffset: 4
            radius: 10
            samples: 15
            source: example60
            color: "#0d226e"
        }
    Rectangle {
        id: example60
        anchors.top: parent.top
        anchors.topMargin: 270
        anchors.left: parent.left
        anchors.leftMargin: 10
        width: 200
        height: 70
        color: "#e5f6fe"
        radius: 20
        border.width: 0

        Text {
            id: text61
            x: 15
            y: 25
            width: 74
            height: 18
            color: "#0d226e"
            text: "т"
            font.pixelSize: 16
            font.family: "Arial"
        }
        DropShadow
            {
                anchors.fill: shadow79
                horizontalOffset: 3
                verticalOffset: 3
                radius: 10
                samples: 15
                source: shadow79
                color: "#c3d0ff"
            }
        Rectangle{
            id:shadow79
           x: 35
           y: 25
           width: 150
           height: 20
           radius: 20
           color: "#dff5ff"
       }
        TextInput {
            id: textInput61
            x: 40
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
            anchors.fill: rectangle70
            horizontalOffset: 7
            verticalOffset: 7
            radius: 10
            samples: 15
            source: rectangle70
            color: "#0d226e"
        }
    Rectangle {
        id: rectangle70
        anchors.top: parent.top
        anchors.topMargin: 700
        anchors.left: parent.left
        anchors.leftMargin: -100
        width: 190
        height: 70
        radius: 20
        border.width: 0
        color:
                {"#e5f6fe"
                    if (mouseArea70.containsMouse)
                    {
                        if(mouseArea70.pressed)
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
                    target: rectangle70;
                    property: "color";
                    from:"#e5f6fe";
                    to: "#c3d0ff";
                    duration: 300
                }

                PropertyAnimation
                {
                     id: unhoverAnim;
                     target: rectangle70;
                     property: "color";
                     from: "#c3d0ff";
                     to: "#e5f6fe";
                     duration: 300
                }


        Text {
            id: text70
            x: 55
            y: 26
            color: "#0d226e"
            text: qsTr("Обновить")
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            font.styleName: "Regular"
            font.family: "Arial"
        }

        MouseArea {
            id: mouseArea70
            x: 0
            y: 0
            width: 190
            height: 70
            anchors.fill: parent
                        hoverEnabled: true
                        onClicked: rectangle70.clicked()
                        cursorShape: Qt.PointingHandCursor
        }
    }


    DropShadow
        {
            anchors.fill: rectangle80
            horizontalOffset: 7
            verticalOffset: 7
            radius: 10
            samples: 15
            source: rectangle80
            color: "#0d226e"
        }
    Rectangle {
        id: rectangle80
        anchors.top: parent.top
        anchors.topMargin: 700
        anchors.left: parent.left
        anchors.leftMargin: 110
        width: 190
        height: 70
        radius: 20
        border.width: 0
        color:
                {"#e5f6fe"
                    if (mouseArea80.containsMouse)
                    {
                        if(mouseArea80.pressed)
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
                    target: rectangle80;
                    property: "color";
                    from:"#e5f6fe";
                    to: "#c3d0ff";
                    duration: 300
                }

                PropertyAnimation
                {
                     id: unhoverAnim1;
                     target: rectangle80;
                     property: "color";
                     from: "#c3d0ff";
                     to: "#e5f6fe";
                     duration: 300
                }


        Text {
            id: text80
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
            id: mouseArea80
            x: 0
            y: 0
            width: 190
            height: 70
            anchors.fill: parent
                        hoverEnabled: true
                        onClicked: rectangle80.clicked()
                        cursorShape: Qt.PointingHandCursor
        }
    }
}
