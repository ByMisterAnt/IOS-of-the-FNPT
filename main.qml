import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15



Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("IOS")

    Loader
        {
            id: mainLoader

            anchors.fill: parent

            source: "qrc:/UI/MainScreen.qml"
        }

}
