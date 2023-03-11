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
            width: 74
            height: 18
            color: "#0d226e"
            text: "Долгота"
            font.pixelSize: 16
            font.family: "Arial"
        }

        TextInput {
            id: textInput11
            anchors.verticalCenter: parent.verticalCenter
            maximumLength: 200
            width: 285
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
                width: 265
                height: 3
                MouseArea {
                    id: mouseArea28
                    anchors.bottom: parent.bottom
                    anchors.left: parent.left
                    width: 265
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
        anchors.topMargin: 200
        anchors.left: imageback.left
        anchors.leftMargin: 250
        width: 400
        height: 70
        radius: 20
        color: "#e5f6fe"
        border.width: 0
        Row{
            id: row1
            anchors.fill: parent
            anchors.left: parent.left
            anchors.leftMargin: 10
            spacing: 15
        Text {
            id: text22
            anchors.verticalCenter: parent.verticalCenter
            width: 74
            height: 18
            color: "#0d226e"
            text: "Широта"
            font.pixelSize: 16
            font.family: "Arial"
        }

        TextInput {
            id: textInput22
            anchors.verticalCenter: parent.verticalCenter
            width: 285
            height: 20
            color: "#0d226e"
            text: qsTr("")
            font.pixelSize: 16
            selectionColor: "#0d226e"
            maximumLength: 200
            selectedTextColor: "#e5f6fe"
            font.family: "Arial"
            Rectangle{
                id:line2
                anchors.bottom: parent.bottom
                anchors.bottomMargin: -3
                anchors.left: parent.left
                width: 265
                height: 3
                MouseArea {
                    id: mouseArea29
                    anchors.bottom: parent.bottom
                    anchors.left: parent.left
                    width: 265
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
        anchors.topMargin: 300
        anchors.left: imageback.left
        anchors.leftMargin: 250
        width: 400
        height: 70
        radius: 20
        color: "#e5f6fe"
        border.width: 0
        Row{
            id: row2
            anchors.fill: parent
            anchors.left: parent.left
            anchors.leftMargin: 10
            spacing: 15
        Text {
            id: text35
            anchors.verticalCenter: parent.verticalCenter
            width: 74
            height: 18
            color: "#0d226e"
            text: "Высота в ft"
            font.pixelSize: 16
            font.family: "Arial"
        }

        TextInput {
            id: textInput34
            anchors.verticalCenter: parent.verticalCenter
            width: 285
            height: 20
            color: "#0d226e"
            text: qsTr("")
            font.pixelSize: 16
            selectionColor: "#0d226e"
            maximumLength: 200
            selectedTextColor: "#e5f6fe"
            font.family: "Arial"
            Rectangle{
                id:line3
                anchors.bottom: parent.bottom
                anchors.bottomMargin: -3
                anchors.left: parent.left
                width: 265
                height: 3
                MouseArea {
                    id: mouseArea31
                    anchors.bottom: parent.bottom
                    anchors.left: parent.left
                    width: 265
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
        anchors.topMargin: 400
        anchors.left: imageback.left
        anchors.leftMargin: 250
        width: 400
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
            id: text45
            anchors.verticalCenter: parent.verticalCenter
            width: 74
            height: 18
            color: "#0d226e"
            text: "Аэродром"
            font.pixelSize: 16
            font.family: "Arial"
        }

        TextInput {
            id: textInput46
            anchors.verticalCenter: parent.verticalCenter
            width: 285
            height: 20
            color: "#0d226e"
            text: qsTr("")
            font.pixelSize: 16
            selectionColor: "#0d226e"
            maximumLength: 300
            selectedTextColor: "#e5f6fe"
            font.family: "Arial"
            Rectangle{
                id:line4
                anchors.bottom: parent.bottom
                anchors.bottomMargin: -3
                anchors.left: parent.left
                width: 265
                height: 3
                MouseArea {
                    id: mouseArea32
                    anchors.bottom: parent.bottom
                    anchors.left: parent.left
                    width: 265
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
            anchors.fill: rectangle
            horizontalOffset: 7
            verticalOffset: 7
            radius: 10
            samples: 15
            source: rectangle
            color: "#0d226e"
        }
    Rectangle {
        id: rectangle
        anchors.top: parent.top
        anchors.topMargin: 500
        anchors.left: imageback.left
        anchors.leftMargin: 250
        width: 400
        height: 70
        radius: 20
        border.width: 0
        color:
                {"#e5f6fe"
                    if (mouseArea.containsMouse)
                    {
                        if(mouseArea.pressed)
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
                    target: rectangle;
                    property: "color";
                    from:"#e5f6fe";
                    to: "#c3d0ff";
                    duration: 300
                }

                PropertyAnimation
                {
                     id: unhoverAnim;
                     target: rectangle;
                     property: "color";
                     from: "#c3d0ff";
                     to: "#e5f6fe";
                     duration: 300
                }


        Text {
            id: text1
            x: 96
            y: 26
            color: "#0d226e"
            text: qsTr("Выбрать аэродром на карте")
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            font.styleName: "Regular"
            font.family: "Arial"
        }
        MouseArea {
            id: mouseArea
            x: 0
            y: 0
            width: 400
            height: 70
            anchors.fill: parent
                        hoverEnabled: true
                        onClicked: rectangle.clicked()
                        cursorShape: Qt.PointingHandCursor
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
        anchors.topMargin: 600
        anchors.left: imageback.left
        anchors.leftMargin: 250
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
        anchors.topMargin: 600
        anchors.left: imageback.left
        anchors.leftMargin: 460
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
                        onClicked:
                        {
                            app.sendToFG("http://127.0.0.1:8000/json/position/altitude-ft", textInput34.text);
                            rectangle2.clicked()
                        }
                        cursorShape: Qt.PointingHandCursor
        }

    }





}
