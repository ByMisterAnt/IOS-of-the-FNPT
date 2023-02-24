import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15

Window {
    width: 1280
    height: 720
    visible: true
    color: "#334999"
    title: qsTr("IOS")
    // Пересчёт независимых от плотности пикселей в физические пиксели устройства
   readonly property int dpi: Screen.pixelDensity * 25.4
       function dp(x){ return (dpi < 120) ? x : x*(dpi/160); }



    Rectangle {
        id: mainrectangle
        //anchors.top: parent
        //anchors.left: parent
        width: parent.width/6
        height: parent.height
        color: "#0D226F"
        Loader{
            id: button1
            anchors.top: parent.top
            anchors.topMargin: 35
            x: parent.width/3
            source: "qrc:/Mainmenu.qml"

     }
    Loader{
        id: proverka
        anchors.top: parent.top
        anchors.topMargin: 35
        x: parent.width+20
        source: "qrc:/Buttonmain.qml"
    }

}

}




