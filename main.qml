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
        anchors.top: parent
        anchors.left: parent
        width: parent.width/6
        height: parent.height
        color: "#0D226F"
        Loader{
            id: button1
            y: 50
            //anchors.horizontalCenter:parent.horizontalCenter не работает эта строка
            x: parent.width/3
            source: "qrc:/Mainmenu.qml"
            //Функция для смены содержимого в Loader
            function loadFragment(index){

                        switch(index){
                        case 0:
                            loader.source = "qrc:/Buttonmain.qml"
                            break;
                        case 1:
                            loader.source = "qrc:/Buttonmistake.qml"
                            break;
                        case 2:
                            loader.source = "qrc:/Buttonweather.qml"
                            break;
                        case 3:
                            loader.source = "qrc:/Mapmain.qml"
                            break;
                        case 4:
                            loader.source = "qrc:/Setupmain.qml"
                            break;
                        default:
                            loader.source = "qrc:/Buttonmain.qml"
                            break;
                        }
                    }
            MouseArea {
                                        anchors.fill: parent

                                        // По нажатию на пункт меню заменяем компонент в Loader
                                        onClicked: {
                                            loader.loadFragment(index)}}

                }
     }
    Loader{
        id: proverka
        y:50
        x: parent.width/6+50
        source: "qrc:/Setupmain.qml"
    }



}




