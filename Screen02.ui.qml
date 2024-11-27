

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick

Rectangle {
    property var appProp
    id: secondScene
    width: 1892
    height: 1051
    anchors.topMargin: 14 * secondScene.appProp.scaleW
    anchors.left: parent.left
    anchors.leftMargin: 14 * secondScene.appProp.scaleW
    anchors.right: parent.right
    anchors.rightMargin: 14 * secondScene.appProp.scaleW
    transformOrigin: Item.TopLeft
    color: "#00000000"
    border.width: 0
    scale: 1 * secondScene.appProp.scaleW

    Column {
        id: secondContent
        width: 1920
        height: 1051

        Row {
            scale: 1
            id: allShells
            spacing: 28

            Column {
                scale: 1
                id: shells
                width: 932
                height: 902
                spacing: 28

                Text {
                    scale: 1
                    id: liveShells
                    width: 899
                    height: 174
                    color: "#ffffff"
                    text: "Live Shells"
                    font.pixelSize: 183
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.WordWrap
                    anchors.horizontalCenter: parent.horizontalCenter
                    styleColor: "#000000"
                    font.styleName: "Regular"
                    fontSizeMode: Text.Fit
                    textFormat: Text.AutoText
                    font.bold: false
                    font.family: "Averia Serif Libre"
                }

                Row {
                    scale: 1
                    id: live
                    width: 899
                    height: 235
                    anchors.horizontalCenter: parent.horizontalCenter
                    spacing: 11

                    BorderImage {
                        scale: 1
                        id: live1
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: live2
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: live3
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: live4
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: live5
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: live6
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: live7
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: live8
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: live9
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: live10
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }
                }

                Text {
                    scale: 1
                    id: blankShells
                    width: 899
                    height: 174
                    color: "#ffffff"
                    text: "Blank Shells"
                    font.pixelSize: 183
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.WordWrap
                    anchors.horizontalCenter: parent.horizontalCenter
                    textFormat: Text.AutoText
                    styleColor: "#000000"
                    fontSizeMode: Text.Fit
                    font.styleName: "Regular"
                    font.family: "Averia Serif Libre"
                    font.bold: false
                }

                Row {
                    scale: 1
                    id: blank
                    width: 899
                    height: 235
                    anchors.horizontalCenter: parent.horizontalCenter
                    spacing: 11

                    BorderImage {
                        scale: 1
                        id: blank1
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: blank2
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: blank3
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: blank4
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: blank5
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: blank6
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: blank7
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: blank8
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: blank9
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: blank10
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }
                }
            }

            Column {
                scale: 1
                id: extras
                width: 932
                height: 902
                spacing: 28

                Text {
                    scale: 1
                    id: shellsOrder
                    width: 899
                    height: 174
                    color: "#ffffff"
                    text: "Shells Order"
                    font.pixelSize: 183
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.WordWrap
                    anchors.horizontalCenter: parent.horizontalCenter
                    textFormat: Text.AutoText
                    styleColor: "#000000"
                    fontSizeMode: Text.Fit
                    font.styleName: "Regular"
                    font.family: "Averia Serif Libre"
                    font.bold: false
                }

                Row {
                    scale: 1
                    id: order
                    width: 899
                    height: 235
                    anchors.horizontalCenter: parent.horizontalCenter
                    spacing: 11

                    BorderImage {
                        scale: 1
                        id: order1
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: order2
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: order3
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: order4
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: order5
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: order6
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: order7
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: order8
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: order9
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: order10
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }
                }

                Text {
                    scale: 1
                    id: phoneOrder
                    width: 899
                    height: 174
                    color: "#ffffff"
                    text: "Phone Order"
                    font.pixelSize: 183
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.WordWrap
                    anchors.horizontalCenter: parent.horizontalCenter
                    textFormat: Text.AutoText
                    styleColor: "#000000"
                    fontSizeMode: Text.Fit
                    font.styleName: "Regular"
                    font.family: "Averia Serif Libre"
                    font.bold: false
                }

                Row {
                    scale: 1
                    id: phone
                    width: 899
                    height: 235
                    anchors.horizontalCenter: parent.horizontalCenter
                    spacing: 11

                    BorderImage {
                        scale: 1
                        id: phone1
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: phone2
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: phone3
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: phone4
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: phone5
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: phone6
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: phone7
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: phone8
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: phone9
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }

                    BorderImage {
                        scale: 1
                        id: phone10
                        width: 80
                        height: 235
                        source: "Resources/no_shell.png"
                    }
                }
            }
        }

        BorderImage {
            scale: 1
            id: nextRound
            width: 254
            height: 149
            source: "Resources/next_round.png"
            anchors.horizontalCenter: parent.horizontalCenter

            MouseArea {
                id: mouseArea
                anchors.fill: parent
                scrollGestureEnabled: false
                cursorShape: Qt.PointingHandCursor

                Connections {
                    target: mouseArea
                    function onPressed() {
                        nextRound.source = "Resources/next_round_dark.png"
                    }
                }

                Connections {
                    target: mouseArea
                    function onReleased() {
                        nextRound.source = "Resources/next_round.png"
                    }
                }

                Connections {
                    target: mouseArea
                    function onClicked() {
                        console.log("Clicked: Switching to screen02")
                        secondScene.appProp.switchToScreen("Screen01.ui.qml")
                    }
                }
            }
        }
    }
}
