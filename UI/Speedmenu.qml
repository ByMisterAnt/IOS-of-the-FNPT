import QtQuick 2.12
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.12
Item {
    width: parent.width
    height: parent.height

    Image {
            id: imageback
            anchors.fill: parent
            opacity: 0.1
            source: "qrc:/images/airplaneback.jpeg"
            clip: false

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
        anchors.top: example40.top
        anchors.topMargin: -100
        anchors.horizontalCenter: parent.horizontalCenter
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
            id: text35
            width: 135
            height: 18
            color: "#0d226e"
            text: "Скорость в м/с"
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 16
            font.family: "Arial"
        }
        MouseArea {
            id: mouseArea27
            anchors.verticalCenter: parent.verticalCenter
            width: 200
            height: 30
                        hoverEnabled: true
                        onClicked: line.clicked()
                        cursorShape: Qt.PointingHandCursor

        TextInput {
            id: textInput34
            anchors.verticalCenter: parent.verticalCenter
            anchors.fill: parent
            color: "#0d226e"
            maximumLength: 200
            font.pixelSize: 16
            text: qsTr("")
            font.family: "Arial"
            Rectangle{
                id:line
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 5
                anchors.left: parent.left
                width: 200
                height: 3

                color:
                        {"#334999"
                            if (mouseArea27.containsMouse)
                            {
                                if(mouseArea27.pressed)
                                {
                                    return "#334999"
                                }
                                else
                                {
                                    colorAnim5.start()
                                    return  "#334999"
                                }
                            }

                            else
                            {
                                unhoverAnim5.start()
                                return "#334999"

                            }
                        }


                        PropertyAnimation
                        {
                            id: colorAnim5;
                            target: line;
                            property: "color";
                            from:"#334999";
                            to: "#334999";
                            duration: 300
                        }

                        PropertyAnimation
                        {
                             id: unhoverAnim5;
                             target: line;
                             property: "color";
                             from: "#334999";
                             to: "#00334999";
                             duration: 300
                        }
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
        anchors.centerIn: parent
        width: 400
        height: 70
        radius: 20
        color: "#e5f6fe"
        border.width: 0
        Row {
            id: row1
            anchors.fill: parent
            anchors.left: parent.left
            anchors.leftMargin: 10
            spacing: 15
        Text {
            id: text45
            anchors.verticalCenter: parent.verticalCenter
            width: 135
            height: 18
            color: "#0d226e"
            text: "Ускорение в м/с^2"
            font.pixelSize: 16
            font.family: "Arial"
        }
        MouseArea {
            id: mouseArea28
            anchors.verticalCenter: parent.verticalCenter
            width: 200
            height: 30
                        hoverEnabled: true
                        onClicked: line1.clicked()
                        cursorShape: Qt.PointingHandCursor

        TextInput {
            id: textInput36
            anchors.fill: parent
            anchors.verticalCenter: parent.verticalCenter
            color: "#0d226e"
            maximumLength: 200
            font.pixelSize: 16
            text: qsTr("")
            font.family: "Arial"
            Rectangle{
                id:line1
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 5
                anchors.left: parent.left
                width: 200
                height: 3

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
        anchors.bottom: example40.bottom
        anchors.bottomMargin: -100
        anchors.left: example40.left
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
        anchors.bottom: example40.bottom
        anchors.bottomMargin: -100
        anchors.right: example40.right
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
