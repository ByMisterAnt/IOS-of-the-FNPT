import QtQuick 2.12
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.12
Item
{
    width: parent.width
    height: parent.height

    Image
    {
        id: imageback
        anchors.fill: parent
        opacity: 0.1
        source: "qrc:/images/weather.jpeg"
        clip: false
    }

    Column
    {
        anchors.fill: parent
        anchors.topMargin: 100

        spacing: 40


        DropShadow
        {
            width: 600
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalOffset: 6
            verticalOffset: 6
            radius: 15
            samples: 22
            source: example20
            color: "#0d226e"

            Rectangle
            {
                id: example10

                width: 600
                height: 100

                radius: 30
                color: "#e5f6fe"
                border.width: 0


                Row
                {
                    id: row
                    anchors.fill: parent
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    spacing: 22

                    Text
                    {
                        id: text11
                        anchors.verticalCenter: parent.verticalCenter
                        width: 155
                        height: 30
                        color: "#0d226e"
                        text: "Долгота"
                        font.pixelSize: 30
                        font.family: "Arial"
                    }
                    MouseArea
                    {
                        id: mouseArea28
                        width: 345
                        height: 45
                        anchors.verticalCenter: parent.verticalCenter
                        hoverEnabled: true
                        onClicked: line1.clicked()
                        cursorShape: Qt.PointingHandCursor

                        TextInput
                        {
                            id: textInput11
                            anchors.top: example10.top
                            anchors.topMargin: 9
                            anchors.fill: parent
                            maximumLength: 200
                            color: "#0d226e"
                            text: qsTr("")
                            font.pixelSize: 30
                            font.family: "Arial"

                            Rectangle
                            {
                                id:line1
                                anchors.bottom: parent.bottom
                                anchors.topMargin: 5
                                anchors.left: parent.left
                                width: 345
                                height: 5
                                radius: 2.5

                                color:
                                {
                                    "#334999"
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
                                     to: "#a4a4a4";
                                     duration: 300
                                }
                            }
                        }
                    }
                }
            }
        }

        DropShadow
        {
            width: 600
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalOffset: 6
            verticalOffset: 6
            radius: 15
            samples: 22
            source: example20
            color: "#0d226e"

            Rectangle {
                id: example20
                // anchors.top: example34.top
                // anchors.topMargin: -150
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
                    id: text22
                    anchors.verticalCenter: parent.verticalCenter
                    width: 155
                    height: 30
                    color: "#0d226e"
                    text: "Широта"
                    font.pixelSize: 30
                    font.family: "Arial"
                }
                MouseArea {
                    id: mouseArea29
                    width: 345
                    height: 45
                    anchors.verticalCenter: parent.verticalCenter
                                hoverEnabled: true
                                onClicked: line2.clicked()
                                cursorShape: Qt.PointingHandCursor

                TextInput {
                    id: textInput22
                    anchors.top: example20.top
                    anchors.topMargin: 9
                    anchors.fill: parent
                    color: "#0d226e"
                    text: qsTr("")
                    font.pixelSize: 30
                    maximumLength: 200
                    font.family: "Arial"
                    Rectangle{
                        id:line2
                        anchors.bottom: parent.bottom
                        anchors.topMargin: 5
                        anchors.left: parent.left
                        width: 345
                        height: 5
                        radius: 2.5

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
                                     to: "#a4a4a4";
                                     duration: 300
                                }
                    }
                }
                }
            }

            }
        }

        DropShadow
        {
            width: 600
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalOffset: 6
            verticalOffset: 6
            radius: 15
            samples: 22
            source: example34
            color: "#0d226e"

            Rectangle {
                id: example34
                anchors.centerIn: parent
                width: 600
                height: 100
                radius: 30
                color: "#e5f6fe"
                border.width: 0
                Row{
                    id: row2
                    anchors.fill: parent
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    spacing: 22
                Text {
                    id: text35
                    anchors.verticalCenter: parent.verticalCenter
                    width: 155
                    height: 30
                    color: "#0d226e"
                    text: "Высота в ft"
                    font.pixelSize: 30
                    font.family: "Arial"
                }
                MouseArea {
                    id: mouseArea31
                    width: 345
                    height: 45
                    anchors.verticalCenter: parent.verticalCenter
                                hoverEnabled: true
                                onClicked: line3.clicked()
                                cursorShape: Qt.PointingHandCursor

                TextInput {
                    id: textInput34
                    // anchors.top: example34.top
                     anchors.topMargin: 9
                    anchors.fill: parent
                    color: "#0d226e"
                    text: qsTr("")
                    font.pixelSize: 30
                    maximumLength: 200
                    font.family: "Arial"
                    Rectangle{
                        id:line3
                        anchors.bottom: parent.bottom
                        anchors.topMargin: 5
                        anchors.left: parent.left
                        width: 345
                        height: 5
                        radius: 2.5

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
                                     to: "#a4a4a4";
                                     duration: 300
                                }
                    }
                }
                }
            }
            }
        }

        DropShadow
        {
            width: 600
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalOffset: 6
            verticalOffset: 6
            radius: 15
            samples: 22
            source: example40
            color: "#0d226e"

            Rectangle {
                id: example40
                anchors.bottom: example34.bottom
                // anchors.bottomMargin: -150
                width: 600
                height: 100
                anchors.horizontalCenter: parent.horizontalCenter
                radius: 30
                color: "#e5f6fe"
                border.width: 0
                Row{
                    id: row3
                    anchors.fill: parent
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    spacing: 22
                Text {
                    id: text45
                    anchors.verticalCenter: parent.verticalCenter
                    width: 155
                    height: 30
                    color: "#0d226e"
                    text: "Аэродром"
                    font.pixelSize: 30
                    font.family: "Arial"
                }
                MouseArea {
                    id: mouseArea32
                    width: 345
                    height: 45
                    anchors.verticalCenter: parent.verticalCenter
                                hoverEnabled: true
                                onClicked: line4.clicked()
                                cursorShape: Qt.PointingHandCursor

                TextInput {
                    id: textInput46
                    anchors.top: example40.top
                    anchors.topMargin: 9
                    anchors.fill: parent
                    color: "#0d226e"
                    text: qsTr("")
                    font.pixelSize: 30
                    maximumLength: 200
                    font.family: "Arial"
                    Rectangle{
                        id:line4
                        anchors.bottom: parent.bottom
                        anchors.topMargin: 5
                        anchors.left: parent.left
                        width: 345
                        height: 5
                        radius: 2.5

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
                                     to: "#a4a4a4";
                                     duration: 300
                                }
                    }
                }
                }
            }
        }
        }

        DropShadow
        {
            width: 600
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalOffset: 6
            verticalOffset: 6
            radius: 15
            samples: 22
            source: rectangle
            color: "#0d226e"

            Rectangle {
                id: rectangle
                //anchors.bottom: example34.bottom
                //anchors.bottomMargin: -300
                width: 600
                height: 100
                anchors.horizontalCenter: parent.horizontalCenter
                radius: 30
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
                    anchors.centerIn: rectangle
                    color: "#0d226e"
                    text: qsTr("Выбрать аэродром на карте")
                    font.pixelSize: 30
                    horizontalAlignment: Text.AlignHCenter
                    font.styleName: "Regular"
                    font.family: "Arial"
                }
                MouseArea {
                    id: mouseArea
                    x: 0
                    y: 0
                    width: 600
                    height: 100
                    anchors.fill: parent
                                hoverEnabled: true
                                onClicked: rectangle.clicked()
                                cursorShape: Qt.PointingHandCursor
                }
            }
        }

        Row
        {
            width: 285*2 +20
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 20
        DropShadow
        {
            width: 285
            height: 100
            horizontalOffset: 6
            verticalOffset: 6
            radius: 15
            samples: 22
            source: rectangle1
            color: "#0d226e"

            anchors.left: rectangle.left

            Rectangle {
                id: rectangle1
                anchors.bottom: example34.bottom
                //anchors.bottomMargin: -450
                anchors.left: rectangle.left
                width: 285
                height: 100
                radius: 30
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
                    anchors.centerIn: rectangle1
                    color: "#0d226e"
                    text: qsTr("Обновить")
                    font.pixelSize: 30
                    horizontalAlignment: Text.AlignHCenter
                    font.styleName: "Regular"
                    font.family: "Arial"
                }
                MouseArea {
                    id: mouseArea1
                    x: 0
                    y: 0
                    width: 285
                    height: 100
                    anchors.fill: parent
                                hoverEnabled: true
                                //onClicked:
                                cursorShape: Qt.PointingHandCursor
                }
            }
        }

        DropShadow
        {
            width: 285
            height: 100

            horizontalOffset: 6
            verticalOffset: 6
            radius: 15
            samples: 22
            source: rectangle2
            color: "#0d226e"

            anchors.right: rectangle.right

            Rectangle {
                id: rectangle2
                //anchors.bottom: example34.bottom
                // anchors.bottomMargin: -450
                anchors.right: rectangle.right
                width: 285
                height: 100
                radius: 30
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
                    anchors.centerIn: rectangle2
                    color: "#0d226e"
                    text: qsTr("Отправить")
                    font.pixelSize: 30
                    horizontalAlignment: Text.AlignHCenter
                    font.styleName: "Regular"
                    font.family: "Arial"
                }

                MouseArea {
                    id: mouseArea2
                    x: 0
                    y: 0
                    width: 285
                    height: 100
                    anchors.fill: parent
                                hoverEnabled: true
                                onClicked:
                                {
                                    //onClicked: rectangle1.clicked
                                    app.sendToFG("/json/position/altitude-ft", textInput34.text);
                                    app.sendToFG("/json/position/latitude-deg", textInput22.text);
                                    app.sendToFG("/json/position/longitude-deg", textInput11.text);
                                }
                                cursorShape: Qt.PointingHandCursor
                }

            }
        }

        }
        }





            /*








    DropShadow
        {
            anchors.fill: rectangle2
            horizontalOffset: 10
            verticalOffset: 10
            radius: 15
            samples: 22
            source: rectangle2
            color: "#0d226e"
        }

    Rectangle {
        id: rectangle2
        //anchors.bottom: example34.bottom
        // anchors.bottomMargin: -450
        anchors.right: rectangle.right
        width: 285
        height: 100
        radius: 30
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
            anchors.centerIn: rectangle2
            color: "#0d226e"
            text: qsTr("Отправить")
            font.pixelSize: 30
            horizontalAlignment: Text.AlignHCenter
            font.styleName: "Regular"
            font.family: "Arial"
        }

        MouseArea {
            id: mouseArea2
            x: 0
            y: 0
            width: 285
            height: 100
            anchors.fill: parent
                        hoverEnabled: true
                        onClicked:
                        {
                            //onClicked: rectangle1.clicked
                            app.sendToFG("/json/position/altitude-ft", textInput34.text);
                            app.sendToFG("/json/position/latitude-deg", textInput22.text);
                            app.sendToFG("/json/position/longitude-deg", textInput11.text);
                        }
                        cursorShape: Qt.PointingHandCursor
        }

    }

}
*/


}
