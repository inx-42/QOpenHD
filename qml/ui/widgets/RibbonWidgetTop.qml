import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.12
import Qt.labs.settings 1.0
import QtQuick.Shapes 1.0


import OpenHD 1.0

BaseWidget {
    id: ribbonwidgettop
    z: -1 // Set a lower z value to keep it in the background
    width: parent.width
    height: 30

    visible: settings.show_ribbon_top

    widgetIdentifier: "ribbon_top"
    bw_verbose_name: "RIBBON TOP"

    defaultAlignment: 0
    defaultXOffset: 0
    defaultYOffset: 0
    defaultHCenter: true
    defaultVCenter: false

    hasWidgetDetail: true

    widgetDetailComponent: ScrollView {
        contentHeight: idBaseWidgetDefaultUiControlElements.height
        ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
        clip: true

        BaseWidgetDefaultUiControlElements{
            id: idBaseWidgetDefaultUiControlElements
        }
    }

    Item {
        id: widgetInner

        anchors.fill: parent
        scale: bw_current_scale
        opacity: bw_current_opacity

        Rectangle {
            width: parent.width
            height: parent.height
            opacity: 0.5 // Adjust opacity to control the fading effect
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#02adcb" }
                GradientStop { position: 1.0; color: "transparent" }
            }
        }
    }
}
