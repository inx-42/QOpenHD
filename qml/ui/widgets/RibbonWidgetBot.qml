import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.12
import Qt.labs.settings 1.0
import QtQuick.Shapes 1.0
import OpenHD 1.0

Item {
    id: ribbonwidgetbot
    z: -1 // Set a lower z value to keep it in the background
    width: parent.width
    height: 30

    visible: settings.show_ribbon_bot


    anchors {
        bottom: parent.bottom
        bottomMargin: 0 // Adjust the margin as needed to control the distance from the bottom
    }

    Rectangle {
        width: parent.width
        height: parent.height
        opacity: 0.4 // Adjust opacity to control the fading effect
        gradient: Gradient {
            GradientStop { position: 0.0; color: "transparent" }
            //GradientStop { position: 1.0; color: "#02adcb" }
            GradientStop { position: 1.0; color: "#fc550d" }
        }

        ColumnLayout {
            anchors.fill: parent

            Text {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
                text: "[  EDITH DEFENCE SYSTEMS  ]"
                font.pixelSize: 13
                font.family: "3ds"
                color: "white"
            }
        }
    }
}

