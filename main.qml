import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15


Window {
    id: mainUI

    width: 1280
    height: 640
    visible: false
    title: qsTr("IOS")

    Loader
        {
            id: mainLoader

            anchors.fill: parent

            source: "qrc:/UI/MainScreen.qml"
        }

    Loader
        {
            id: mainLoader2

            x: 250
            width: parent.width / 2
            height: parent.height

            source: "qrc:/Elements/Buttonmistake.qml"
        }

    Connections
    {
        target: app

        function onOpenMain()
        {
            mainUI.visible = true;
        }
    }
}

