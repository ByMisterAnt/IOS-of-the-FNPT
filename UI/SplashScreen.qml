import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Shapes 1.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Window
{
    title: qsTr("IOS")
    id: splashScreen
    width: 500
    height: 500
    visible: true
    color: "transparent"

    flags: Qt.Window | Qt.FramelessWindowHint

    property int loadPercent: 0
    Shape
    {
        id: arcContainer

        anchors.fill: parent
        // Enable multisampled rendering
        layer.enabled: true
        layer.samples: 4

        // Outer gray arc:
        ShapePath {
            id: shapePathRed
            fillColor: "transparent"
            //strokeColor: "transparent"
            strokeWidth: 15
            capStyle: ShapePath.RoundCap
            PathAngleArc {
                centerX: arcContainer.width/2
                centerY: arcContainer.height/2
                radiusX: arcContainer.width/2-shapePathRed.strokeWidth/2
                radiusY: arcContainer.height/2-shapePathRed.strokeWidth/2
                startAngle: 0
                sweepAngle: 270
            }
        }

        // Inner blue arc:
        ShapePath {
            id: shapePathBlue
            fillColor: "transparent"
            strokeColor: "blue"
            strokeWidth: 15
            capStyle: ShapePath.RoundCap


            PathAngleArc {
                id: pathAngle
                centerX: arcContainer.width/2
                centerY: arcContainer.height/2
                radiusX: arcContainer.width/2-shapePathBlue.strokeWidth/2
                radiusY: arcContainer.height/2-shapePathBlue.strokeWidth/2
                startAngle: -90
                sweepAngle: 0



            }
        }

    }

    Column
    {
        id: column
        width: 350
        height: 350
        anchors.centerIn: parent
        spacing: 10

        Image
        {
            id: logo
            width: 300
            height: 300
            anchors.horizontalCenter: parent.horizontalCenter
            source: "qrc:/Images/mai.svg"
        }

        Text
        {
            id: loadText
            width: 350
            height: 30
            anchors.horizontalCenter: parent
            color: "#ffffff"
            text: loadPercent + "%"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 25
        }
        Text
        {
            id: loadingText
            width: 350
            height: 30
            color: "#ffffff"
            anchors.horizontalCenter: parent
            text: qsTr("Загрузка...")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }


    SequentialAnimation
    {
        running: true
        NumberAnimation { target: pathAngle; property: "sweepAngle"; to: 360; duration: 3000 }

        ScriptAction
        {
            script:
            {
                loadingText.text = qsTr("Готово")
                app.openMain();
                splashScreen.hide();
            }
        }
    }

    SequentialAnimation
    {
        running: true
        NumberAnimation { target: splashScreen; property: "loadPercent"; to: 100; duration: 3000 }
    }

}
