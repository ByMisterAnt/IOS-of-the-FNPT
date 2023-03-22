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
            anchors.fill: example10
            horizontalOffset: 6
            verticalOffset: 6
            radius: 15
            samples: 22
            source: example10
            color: "#0d226e"
        }
    Rectangle {
        id: example10
        anchors.top: example30.top
        anchors.topMargin: -150
        anchors.horizontalCenter: parent.horizontalCenter
        width: 600
        height: 100
        radius: 30
        color: "#e5f6fe"
        border.width: 0
        Row{
            id: row
            anchors.fill: parent
            anchors.left: parent.left
            anchors.leftMargin: 20
            spacing: 22
        Text {
            id: text10
           anchors.verticalCenter: parent.verticalCenter
            width: 155
            height: 30
            color: "#0d226e"
            text: "IP адресс"
            font.pixelSize: 30
            font.family: "Arial"
        }
        MouseArea {
            id: mouseArea23
            width: 345
            height: 45
            anchors.verticalCenter: parent.verticalCenter
                        hoverEnabled: true
                        onClicked: line.clicked()
                        cursorShape: Qt.PointingHandCursor
        TextInput {
            id: textInput10
            anchors.top: example10.top
            anchors.topMargin: 9
            maximumLength: 200
            anchors.fill: parent
            color: "#0d226e"
            text: qsTr("")
            font.pixelSize: 30
            font.family: "Arial"

        Rectangle{
            id:line
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 5
            anchors.left: parent.left
            width: 345
            height: 5


            color:
                    {"#334999"
                        if (mouseArea23.containsMouse)
                        {
                            if(mouseArea23.pressed)
                            {
                                return "#334999"
                            }
                            else
                            {
                                colorAnim2.start()
                                return  "#334999"
                            }
                        }

                        else
                        {
                            unhoverAnim2.start()
                            return "#334999"

                        }
                    }


                    PropertyAnimation
                    {
                        id: colorAnim2;
                        target: line;
                        property: "color";
                        from:"#334999";
                        to: "#334999";
                        duration: 300
                    }

                    PropertyAnimation
                    {
                         id: unhoverAnim2;
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
            anchors.fill: rectangle20
            horizontalOffset: 10
            verticalOffset: 10
            radius: 15
            samples: 22
            source: rectangle20
            color: "#0d226e"
        }
    Rectangle {
        id: rectangle20
        anchors.bottom: example30.bottom
        anchors.bottomMargin: -150
        anchors.left: example30.left
        width: 285
        height: 100
        radius: 30
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
            anchors.centerIn: rectangle20
            color: "#0d226e"
            text: qsTr("Отправить")
            font.pixelSize: 30
            horizontalAlignment: Text.AlignHCenter
            font.styleName: "Regular"
            font.family: "Arial"
        }

        MouseArea {
            id: mouseArea20
            x: 0
            y: 0
            width: 285
            height: 100
            anchors.fill: parent
                        hoverEnabled: true
                        onClicked:
                        {
                            app.setIpPort("http://"+textInput10.text+":"+textInput30.text)
                        }
                        cursorShape: Qt.PointingHandCursor
        }
    }



    DropShadow
        {
            anchors.fill: example30
            horizontalOffset: 6
            verticalOffset: 6
            radius: 15
            samples: 22
            source: example30
            color: "#0d226e"
        }
    Rectangle {
        id: example30
        anchors.centerIn: parent
        width: 600
        height: 100
        radius: 30
        color: "#e5f6fe"
        border.width: 0
        Row{
            id: row1
            anchors.fill: parent
            anchors.left: parent.left
            anchors.leftMargin: 20
            spacing: 22
        Text {
            id: text30
            anchors.verticalCenter: parent.verticalCenter
            width: 155
            height: 30
            color: "#0d226e"
            text: "Порт"
            font.pixelSize: 30
            font.family: "Arial"
        }
        MouseArea {
            id: mouseArea24
            width: 345
            height: 45
            anchors.verticalCenter: parent.verticalCenter
                        hoverEnabled: true
                        onClicked: line1.clicked()
                        cursorShape: Qt.PointingHandCursor

        TextInput {
            id: textInput30
            //anchors.verticalCenter: parent.verticalCenter
            anchors.top: example30.top
            anchors.topMargin: 9
            anchors.fill: parent
            color: "#0d226e"
            text: qsTr("")
            font.pixelSize: 30
            maximumLength: 200
            font.family: "Arial"
            Rectangle{
                id:line1
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 5
                anchors.left: parent.left
                width: 345
                height: 5

                color:
                        {"#334999"
                            if (mouseArea24.containsMouse)
                            {
                                if(mouseArea24.pressed)
                                {
                                    return "#334999"
                                }
                                else
                                {
                                    colorAnim3.start()
                                    return  "#334999"
                                }
                            }

                            else
                            {
                                unhoverAnim3.start()
                                return "#334999"

                            }
                        }


                        PropertyAnimation
                        {
                            id: colorAnim3;
                            target: line1;
                            property: "color";
                            from:"#334999";
                            to: "#334999";
                            duration: 300
                        }

                        PropertyAnimation
                        {
                             id: unhoverAnim3;
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
}
