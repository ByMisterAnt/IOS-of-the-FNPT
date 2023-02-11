import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

import "../Elements"


Item {
    anchors.fill: parent

    property string value: "просто кнопка"
    property color bgColor: "#0D226F"

    Row
    {
        anchors.fill: parent

        Page
        {
            width: parent.width / 4 +100
            height: parent.height
            padding: 10

            background: Rectangle
            {
                color: bgColor
            }

            ListView
            {
                id: mainBtnColumn

                anchors.fill: parent
                spacing:  10

                model: mainListModel

                delegate: CustomButton
                {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom

                    buttonColorPressed: "#1163ae"
                    buttonColorHover: "#136ec1"
                    buttonColor: "#0085FF"
                    buttonTextColor: "white"

                    imageUrl: model.url     //"qrc:/Images/video.png"
                    buttonText: model.text  //"Начать"

                    onClicked:
                    {

                        changedTextField.text = inputText.text + model.value;
                        app.printFromQml(inputText.text);

                    }
                }

            }

        }
        Column{

            width: parent.width * 3 / 4 - 100
            height: parent.height

            Rectangle {
                id: backgroundd
                anchors.fill: parent
                color: "#334999"
                Image
                {
                    id: bgImage
                    anchors.fill: parent

                    source: "qrc:/Images/bgPlane.png"
                    anchors.verticalCenter: parent.verticalCenter
                    smooth: true
                }
            }
            Text {
                id: changedTextField
                text: qsTr("Текст до")
            }

            TextInput {
                id: inputText
                text: qsTr("Default text ")
                height: 100
            }


            CustomButton
            {
                id: buttonVideoStart

                Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom

                buttonColorPressed: "#1163ae"
                buttonColorHover: "#136ec1"
                buttonColor: "#0085FF"
                buttonTextColor: "white"


                imageUrl: "qrc:/Images/video.png"
                buttonText: "Просто"

                onClicked:
                {

                    changedTextField.text = inputText.text + value;
                    app.printFromQml(inputText.text);

                }

            }

        }


    }

    ListModel
    {
        id: mainListModel
        ListElement
        {
            url: "qrc:/Images/MainScteenIcon.png"
            text: "Начать"
            value: "btn1"
        }

        ListElement
        {
            url: "qrc:/Images/WeatherIcon.png"
            text: "Погода"
            value: "btn2"
        }

        ListElement
        {
            url: "qrc:/Images/LocationIcon.png"
            text: "Локация"
            value: "btn3"

        }
    }



    Connections {

        target: app

        function onSendToQml(receivedText){
            changedTextField.text += receivedText
        }
    }
}
