import QtQuick 2.12
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.2

Item {
    width:640
    height:680
    property alias button1: button1
    property string buttonText: buttonText
    property color buttonTextColor: buttonTextColor
    property url imageUrl: imageUrl

    Row{
        id: button1
        anchors.fill: parent/6

        Image
        {
            id: icon1

            width: 80
            height: 80

            source: "/Users/user/Desktop/Iconssvg/mainicon.png"

            anchors.verticalCenter: parent.verticalCenter
        }

        Text{
            id:text1

            text: buttonText
            font.family: "Roboto"
            color: "#E5F6FE"
            font { light: true; pixelSize: 14 }

            anchors.verticalCenter: parent.verticalCenter
        }
}
}
