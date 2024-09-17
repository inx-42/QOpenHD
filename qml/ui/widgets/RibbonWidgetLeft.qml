import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.12
import Qt.labs.settings 1.0
import QtQuick.Shapes 1.0


import OpenHD 1.0

BaseWidget {
    id: ribbonwidgetleft
    z: -1 // Set a lower z value to keep it in the background
    width: parent.width
    height: parent.height

    visible: settings.show_ribbon_top

    widgetIdentifier: "ribbon_left"
    bw_verbose_name: "RIBBON LEFT"

    defaultAlignment: 0
    defaultXOffset: 0
    defaultYOffset: 0
    defaultHCenter: false
    defaultVCenter: true

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

        Shape {
            width: parent.width
            height: parent.height
            ShapePath {
                fillColor: "transparent" // Set the fill color to transparent
                strokeColor: "white" // Set the outline color to white
                strokeWidth: 1 // Set the outline width

                PathMove {
                    x: 0
                    y: 0
                }

                PathLine {
                    x: width / 10
                    y: height / 10
                }

                PathLine {
                    x: width / 10
                    y: (3 * height) / 3.35
                }

                PathLine {
                    x: 0
                    y: height
                }

                PathLine {
                    x: 0 // Close the path by adding a line to the starting point
                    y: 0
                }

        }
    }

        Shape {
            width: parent.width
            height: parent.height
            ShapePath {
                fillColor: "transparent" // Set the fill color to transparent
                strokeColor: "white" // Set the outline color to white
                strokeWidth: 1 // Set the outline width

                PathMove {
                    x: width
                    y: 0
                }

                PathLine {
                    x: (9 * width) / 10
                    y: height / 10
                }

                PathLine {
                    x: (9 * width) / 10
                    y: (3 * height) / 3.35
                }

                PathLine {
                    x: width
                    y: height
                }

                PathLine {
                    x: width // Close the path by adding a line to the starting point
                    y: 0
                }

        }
    }

}
}
