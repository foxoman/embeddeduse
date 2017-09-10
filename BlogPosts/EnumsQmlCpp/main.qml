import QtQuick 2.6
import QtQuick.Window 2.2
import com.embeddeduse.models 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Passing Enums between QML and C++")

    property MainModel mainModel : MainModel {}
    Component.onCompleted: console.log("QML: warningLevel = ", mainModel.warningLevel)

    Rectangle {
        anchors.fill: parent
        color: {
            switch (mainModel.warningLevel) {
            case WarningLevel.Error:
                "red"
                break
            case WarningLevel.Warning:
                "orange"
                break
            case WarningLevel.Info:
                "green"
                break
            case WarningLevel.Debug:
                "purple"
                break
            default:
                "magenta"
                break
            }
        }
    }
}