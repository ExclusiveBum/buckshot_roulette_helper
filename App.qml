// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick

Window {
    id: app
    width: 1920
    height: 1080
    visible: true
    color: "#00000000"
    title: "Buckshot_Roulette_Helper"
    property real scaleW: 1
    // Zdefiniowanie właściwości controller w App.qml
    property var controller: controller

    onWidthChanged: {
        height = width * (9 / 16);
        scaleW = height/1080;
    }

    onHeightChanged: {
        width = height * (16 / 9);
        scaleW = width/1920;
    }

    Loader {
        id: screenLoader
        anchors.fill: parent
        source: "Screen01.ui.qml"
        onLoaded: {
            console.log("Czy controller jest zarejestrowany globalnie?", typeof controller);
            console.log("Controller:", app.controller);
              // Logowanie controller w App.qml
            screenLoader.item.appProp = app;
        }
    }

    function switchToScreen(screenFile) {
        console.log("Switching to:", screenFile);
        screenLoader.source = screenFile;
    }
}
