import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15


Window
{
    id: mainUI
    width: 1280
    height: 720

    visible: false
    color: "#334999"
    title: qsTr("IOS")
    // Пересчёт независимых от плотности пикселей в физические пиксели устройства
    // delete this function
   readonly property int dpi: Screen.pixelDensity * 25.4
       function dp(x){ return (dpi < 120) ? x : x*(dpi/160); }


    Row
    {
        id: mainRow
        anchors.fill: parent

        spacing: 5

        Rectangle
        {
            id: mainrectangle

            width: (parent.width/4 > 350) ? 350 : parent.width/4
            height: parent.height
            color: "#0D226F"

            Row
            {

                anchors.fill: parent
                anchors.centerIn: parent
                anchors.leftMargin: 10
                spacing: 10

                Loader
                {
                    id: button1
                    width: parent.width / 2 - 5
                    height: parent.height


                    // anchors.horizontalCenter: parent.horizontalCenter
                    // anchors.verticalCenter: parent.verticalCenter
                    anchors.centerIn: mainrectangle

                    source: "qrc:/Elements/Mainmenu.qml"
                }
                Loader{
                    id: proverka
                    width: parent.width / 2 - 5
                    height: parent.height
                    source: "qrc:/Elements/Buttonmain.qml"
                }
            }

            Connections
            {
                target: app

                function onOpenMain()
                {
                    //mainUI.visible = showFullScreen();
                    mainUI.visible = true;

                }
            }
        }

        Loader{
            id:podokno

            width: parent.width - mainrectangle.width
            height: parent.height

            source: "qrc:/UI/Speedmenu.qml"
        }
    }
}




