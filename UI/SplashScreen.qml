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


            SequentialAnimation
            {
                running: true
                NumberAnimation { target: pathAngle; property: "sweepAngle"; to: 360; duration: 2000 }
                ScriptAction
                {
                    script:
                    {
                        app.openMain();
                        splashScreen.hide();
                    }
                }
            }

        }

        Image
        {
            id: logo
            anchors.centerIn: parent
            width: 350
            height: 350
            source: "qrc:/Images/mai.svg"
        }



}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2}D{i:4}D{i:6}D{i:8}D{i:9}D{i:7}D{i:1}
D{i:10}
}
##^##*/
