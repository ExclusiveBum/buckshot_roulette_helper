

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick

Rectangle {
    id: mainScene
    property var appProp
    width: 1920
    height: 581
    anchors.top: parent.top
    anchors.topMargin: 95 * mainScene.appProp.scaleW
    anchors.left: parent.left
    anchors.leftMargin: 95 * mainScene.appProp.scaleW
    anchors.right: parent.right
    anchors.rightMargin: 95 * mainScene.appProp.scaleW
    transformOrigin: Item.TopLeft
    color: "#00000000"
    border.width: 0
    scale: 1 * mainScene.appProp.scaleW

    Column {
        id: mainContent
        height: 486
        width: 1730
        scale: 1

        Row {
            id: shellsWarning
            scale: 1
            spacing: 94

            BorderImage {
                id: liveShell
                width: 96
                height: 282
                visible: true
                source: "Resources/live_shell.png"
                scale: 1
                clip: false
            }

            Rectangle {
                id: live
                width: 442
                height: 252
                color: "#000000"
                radius: 25
                border.color: "#e4d19c"
                border.width: 10
                anchors.top: parent.top
                anchors.topMargin: 15
                clip: false
                scale: 1

                TextInput {
                    id: liveInput
                    color: "#00ff00"
                    text: qsTr("10")
                    anchors.fill: parent
                    font.pixelSize: 250
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    clip: false
                    scale: 1
                    maximumLength: 2
                    inputMask: ""
                    font.strikeout: false
                    font.family: "White Rabbit"
                    selectedTextColor: "#00ff00"
                    selectionColor: "#012456"
                }
            }

            Text {
                id: warning
                width: 278
                height: 140
                opacity: 1
                visible: true
                color: "#ffffff"
                text: qsTr("There can't be only 1 type of shells.")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.WordWrap
                clip: false
                scale: 1
                font.family: "Averia Serif Libre"
            }

            Rectangle {
                id: blank
                width: 442
                height: 252
                color: "#000000"
                radius: 25
                border.color: "#e4d19c"
                border.width: 10
                anchors.top: parent.top
                anchors.topMargin: 15
                scale: 1

                TextInput {
                    id: blankInput
                    color: "#00ff00"
                    text: qsTr("10")
                    anchors.fill: parent
                    font.pixelSize: 250
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    selectionColor: "#012456"
                    selectedTextColor: "#00ff00"
                    scale: 1
                    maximumLength: 2
                    inputMask: ""
                    font.strikeout: false
                    font.family: "White Rabbit"
                }
            }

            BorderImage {
                id: blankShell
                width: 96
                height: 282
                source: "Resources/blank_shell.png"
                scale: 1
            }
        }
        BorderImage {
            id: start
            width: 231
            height: 204
            source: "Resources/check_icon.png"
            anchors.horizontalCenter: parent.horizontalCenter
            scale: 1

            MouseArea {
                id: mouseArea
                anchors.fill: parent
                scrollGestureEnabled: false
                cursorShape: Qt.PointingHandCursor

                Connections {
                    target: mouseArea
                    function onPressed() {
                        start.source = "Resources/check_icon_dark.png"
                    }
                }

                Connections {
                    target: mouseArea
                    function onReleased() {
                        start.source = "Resources/check_icon.png"
                    }
                }

                Connections {
                    target: mouseArea
                    function onClicked() {
                        console.log("Controller dostępny:",
                                    mainScene.appProp.controller)

                        var map = {
                            "liveS": liveInput.text,
                            "blankS": blankInput.text
                        }
                        mainScene.appProp.switchToScreen("Screen02.ui.qml")
                        if (mainScene.appProp && mainScene.appProp.controller) {
                            mainScene.appProp.controller.updateValues(map)
                            console.log("Clicked: Switching to screen02")
                            mainScene.appProp.switchToScreen("Screen02.ui.qml")
                        } else {
                            console.log("Controller lub appProp jest niezdefiniowane!")
                        }
                    }
                }
            }
        }
    }
}
