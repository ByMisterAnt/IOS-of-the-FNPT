import QtQuick 2.12
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.12

Item {
    width: parent.width
    height: parent.height
    anchors.centerIn: parent

    Image {
            id: imageback1
            anchors.fill: parent
            opacity: 0.1
            source: "qrc:/images/airplaneback.jpeg"
            clip: false

        }

    Image {
        id: imageback
        width: 800
        height: 800
        source: "qrc:/images/airplane12.png"
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
        radius: 20
        color: "#e5f6fe"
        border.width: 0
        Row{
            id: row
            anchors.fill: parent
            anchors.left: parent.left
            anchors.leftMargin: 10
            spacing: 15
        Text {
            id: text11
            anchors.verticalCenter: parent.verticalCenter
            width:125
            height: 18
            color: "#0d226e"
            text: "Вес самолета в т"
            font.pixelSize: 16
            font.family: "Arial"
        }

        TextInput {
            id: textInput11
            anchors.verticalCenter: parent.verticalCenter
            maximumLength: 200
            width: 210
            height: 20
            color: "#0d226e"
            text: qsTr("")
            font.pixelSize: 16
            selectionColor: "#0d226e"
            selectedTextColor: "#e5f6fe"
            font.family: "Arial"
            Rectangle{
                id:line1
                anchors.bottom: parent.bottom
                anchors.bottomMargin: -3
                anchors.left: parent.left
                width: 210
                height: 3
                MouseArea {
                    id: mouseArea28
                    anchors.bottom: parent.bottom
                    anchors.left: parent.left
                    width: 210
                    height: 20
                                hoverEnabled: true
                                onClicked: line1.clicked()
                                cursorShape: Qt.PointingHandCursor
                }
                color:
                        {"#334999"
                            if (mouseArea28.containsMouse)
                            {
                                if(mouseArea28.pressed)
                                {
                                    return "#334999"
                                }
                                else
                                {
                                    colorAnim6.start()
                                    return  "#334999"
                                }
                            }

                            else
                            {
                                unhoverAnim6.start()
                                return "#334999"

                            }
                        }


                        PropertyAnimation
                        {
                            id: colorAnim6;
                            target: line1;
                            property: "color";
                            from:"#334999";
                            to: "#334999";
                            duration: 300
                        }

                        PropertyAnimation
                        {
                             id: unhoverAnim6;
                             target: line1;
                             property: "color";
                             from: "#334999";
                             to: "#00334999";
                             duration: 300
                        }
            }
        }
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
        radius: 20
        color: "#e5f6fe"
        border.width: 0
        Row{
            id: row23
            anchors.fill: parent
            anchors.left: parent.left
            anchors.leftMargin: 10
            spacing: 15
        Text {
            id: text21
            anchors.verticalCenter: parent.verticalCenter
            width: 115
            height: 18
            color: "#0d226e"
            text: "Вес топлива в т"
            font.pixelSize: 16
            font.family: "Arial"
        }

        TextInput {
            id: textInput21
            anchors.verticalCenter: parent.verticalCenter
            maximumLength: 200
            width: 210
            height: 20
            color: "#0d226e"
            text: qsTr("")
            font.pixelSize: 16
            selectionColor: "#0d226e"
            selectedTextColor: "#e5f6fe"
            font.family: "Arial"
            Rectangle{
                id:line2
                anchors.bottom: parent.bottom
                anchors.bottomMargin: -3
                anchors.left: parent.left
                width: 210
                height: 3
                MouseArea {
                    id: mouseArea29
                    anchors.bottom: parent.bottom
                    anchors.left: parent.left
                    width: 210
                    height: 20
                                hoverEnabled: true
                                onClicked: line2.clicked()
                                cursorShape: Qt.PointingHandCursor
                }
                color:
                        {"#334999"
                            if (mouseArea29.containsMouse)
                            {
                                if(mouseArea29.pressed)
                                {
                                    return "#334999"
                                }
                                else
                                {
                                    colorAnim7.start()
                                    return  "#334999"
                                }
                            }

                            else
                            {
                                unhoverAnim7.start()
                                return "#334999"

                            }
                        }


                        PropertyAnimation
                        {
                            id: colorAnim7;
                            target: line2;
                            property: "color";
                            from:"#334999";
                            to: "#334999";
                            duration: 300
                        }

                        PropertyAnimation
                        {
                             id: unhoverAnim7;
                             target: line2;
                             property: "color";
                             from: "#334999";
                             to: "#00334999";
                             duration: 300
                        }
            }
        }
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
        radius: 20
        color: "#e5f6fe"
        border.width: 0
        Row{
            id: row3
            anchors.fill: parent
            anchors.left: parent.left
            anchors.leftMargin: 10
            spacing: 15
        Text {
            id: text31
            anchors.verticalCenter: parent.verticalCenter
            width: 5
            height: 18
            color: "#0d226e"
            text: "т"
            font.pixelSize: 16
            font.family: "Arial"
        }
        TextInput {
            id: textInput31
            anchors.verticalCenter: parent.verticalCenter
            maximumLength: 100
            width: 130
            height: 20
            color: "#0d226e"
            text: qsTr("")
            font.pixelSize: 16
            selectionColor: "#0d226e"
            selectedTextColor: "#e5f6fe"
            font.family: "Arial"
            Rectangle{
                id:line3
                anchors.bottom: parent.bottom
                anchors.bottomMargin: -3
                anchors.left: parent.left
                width: 130
                height: 3
                MouseArea {
                    id: mouseArea31
                    anchors.bottom: parent.bottom
                    anchors.left: parent.left
                    width: 130
                    height: 20
                                hoverEnabled: true
                                onClicked: line3.clicked()
                                cursorShape: Qt.PointingHandCursor
                }
                color:
                        {"#334999"
                            if (mouseArea31.containsMouse)
                            {
                                if(mouseArea31.pressed)
                                {
                                    return "#334999"
                                }
                                else
                                {
                                    colorAnim8.start()
                                    return  "#334999"
                                }
                            }

                            else
                            {
                                unhoverAnim8.start()
                                return "#334999"

                            }
                        }


                        PropertyAnimation
                        {
                            id: colorAnim8;
                            target: line3;
                            property: "color";
                            from:"#334999";
                            to: "#334999";
                            duration: 300
                        }

                        PropertyAnimation
                        {
                             id: unhoverAnim8;
                             target: line3;
                             property: "color";
                             from: "#334999";
                             to: "#00334999";
                             duration: 300
                        }
            }
        }
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
        radius: 20
        color: "#e5f6fe"
        border.width: 0
        Row{
            id: row4
            anchors.fill: parent
            anchors.left: parent.left
            anchors.leftMargin: 10
            spacing: 15
        Text {
            id: text41
            anchors.verticalCenter: parent.verticalCenter
            width: 5
            height: 18
            color: "#0d226e"
            text: "т"
            font.pixelSize: 16
            font.family: "Arial"
        }

        TextInput {
            id: textInput41
            anchors.verticalCenter: parent.verticalCenter
            maximumLength: 100
            width: 130
            height: 20
            color: "#0d226e"
            text: qsTr("")
            font.pixelSize: 16
            selectionColor: "#0d226e"
            selectedTextColor: "#e5f6fe"
            font.family: "Arial"
            Rectangle{
                id:line4
                anchors.bottom: parent.bottom
                anchors.bottomMargin: -3
                anchors.left: parent.left
                width: 130
                height: 3
                MouseArea {
                    id: mouseArea32
                    anchors.bottom: parent.bottom
                    anchors.left: parent.left
                    width: 130
                    height: 20
                                hoverEnabled: true
                                onClicked: line4.clicked()
                                cursorShape: Qt.PointingHandCursor
                }
                color:
                        {"#334999"
                            if (mouseArea32.containsMouse)
                            {
                                if(mouseArea32.pressed)
                                {
                                    return "#334999"
                                }
                                else
                                {
                                    colorAnim9.start()
                                    return  "#334999"
                                }
                            }

                            else
                            {
                                unhoverAnim9.start()
                                return "#334999"

                            }
                        }


                        PropertyAnimation
                        {
                            id: colorAnim9;
                            target: line4;
                            property: "color";
                            from:"#334999";
                            to: "#334999";
                            duration: 300
                        }

                        PropertyAnimation
                        {
                             id: unhoverAnim9;
                             target: line4;
                             property: "color";
                             from: "#334999";
                             to: "#00334999";
                             duration: 300
                        }
            }
        }
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
        radius: 20
        color: "#e5f6fe"
        border.width: 0
        Row{
            id: row5
            anchors.fill: parent
            anchors.left: parent.left
            anchors.leftMargin: 10
            spacing: 15
        Text {
            id: text51
            anchors.verticalCenter: parent.verticalCenter
            width: 5
            height: 18
            color: "#0d226e"
            text: "т"
            font.pixelSize: 16
            font.family: "Arial"
        }
        TextInput {
            id: textInput51
            anchors.verticalCenter: parent.verticalCenter
            maximumLength: 100
            width: 130
            height: 20
            color: "#0d226e"
            text: qsTr("")
            font.pixelSize: 16
            selectionColor: "#0d226e"
            selectedTextColor: "#e5f6fe"
            font.family: "Arial"
            Rectangle{
                id:line5
                anchors.bottom: parent.bottom
                anchors.bottomMargin: -3
                anchors.left: parent.left
                width: 130
                height: 3
                MouseArea {
                    id: mouseArea33
                    anchors.bottom: parent.bottom
                    anchors.left: parent.left
                    width: 130
                    height: 20
                                hoverEnabled: true
                                onClicked: line5.clicked()
                                cursorShape: Qt.PointingHandCursor
                }
                color:
                        {"#334999"
                            if (mouseArea33.containsMouse)
                            {
                                if(mouseArea33.pressed)
                                {
                                    return "#334999"
                                }
                                else
                                {
                                    colorAnim10.start()
                                    return  "#334999"
                                }
                            }

                            else
                            {
                                unhoverAnim10.start()
                                return "#334999"

                            }
                        }


                        PropertyAnimation
                        {
                            id: colorAnim10;
                            target: line5;
                            property: "color";
                            from:"#334999";
                            to: "#334999";
                            duration: 300
                        }

                        PropertyAnimation
                        {
                             id: unhoverAnim10;
                             target: line5;
                             property: "color";
                             from: "#334999";
                             to: "#00334999";
                             duration: 300
                        }
            }
        }
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
        radius: 20
        color: "#e5f6fe"
        border.width: 0
        Row{
            id: row6
            anchors.fill: parent
            anchors.left: parent.left
            anchors.leftMargin: 10
            spacing: 15
        Text {
            id: text61
            anchors.verticalCenter: parent.verticalCenter
            width: 5
            height: 18
            color: "#0d226e"
            text: "т"
            font.pixelSize: 16
            font.family: "Arial"
        }
        TextInput {
            id: textInput61
            anchors.verticalCenter: parent.verticalCenter
            maximumLength: 100
            width: 130
            height: 20
            color: "#0d226e"
            text: qsTr("")
            font.pixelSize: 16
            selectionColor: "#0d226e"
            selectedTextColor: "#e5f6fe"
            font.family: "Arial"
            Rectangle{
                id:line6
                anchors.bottom: parent.bottom
                anchors.bottomMargin: -3
                anchors.left: parent.left
                width: 130
                height: 3
                MouseArea {
                    id: mouseArea34
                    anchors.bottom: parent.bottom
                    anchors.left: parent.left
                    width: 130
                    height: 20
                                hoverEnabled: true
                                onClicked: line6.clicked()
                                cursorShape: Qt.PointingHandCursor
                }
                color:
                        {"#334999"
                            if (mouseArea34.containsMouse)
                            {
                                if(mouseArea34.pressed)
                                {
                                    return "#334999"
                                }
                                else
                                {
                                    colorAnim11.start()
                                    return  "#334999"
                                }
                            }

                            else
                            {
                                unhoverAnim11.start()
                                return "#334999"

                            }
                        }


                        PropertyAnimation
                        {
                            id: colorAnim11;
                            target: line6;
                            property: "color";
                            from:"#334999";
                            to: "#334999";
                            duration: 300
                        }

                        PropertyAnimation
                        {
                             id: unhoverAnim11;
                             target: line6;
                             property: "color";
                             from: "#334999";
                             to: "#00334999";
                             duration: 300
                        }
            }
        }
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
