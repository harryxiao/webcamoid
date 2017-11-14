/* Webcamoid, webcam capture application.
 * Copyright (C) 2011-2017  Gonzalo Exequiel Pedone
 *
 * Webcamoid is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Webcamoid is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Webcamoid. If not, see <http://www.gnu.org/licenses/>.
 *
 * Web-Site: http://webcamoid.github.io/
 */

import QtQuick 2.7
import QtQuick.Layouts 1.3

Rectangle {
    id: rectangle
    width: 640
    height: 480
    color: "#3f2a7e"

    property int patternSize: 24

    FontLoader {
        id: quickSand;
        source: "Quicksand-Regular.ttf"
    }

    ColumnLayout {
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        GridLayout {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            columns: 2

            // Info
            Image {
                id: icon
                width: 128
                height: width
                sourceSize.width: width
                sourceSize.height: height
                source: "webcamoid.png"
            }

            ColumnLayout {
                Text {
                    id: programName
                    color: "#ffffff"
                    text: qsTr("Webcamoid")
                    font.weight: Font.Bold
                    font.family: quickSand.name
                    font.pixelSize: 40
                }

                Text {
                    color: "#ffffff"
                    text: qsTr("The ultimate webcam suite!")
                    leftPadding: 24
                    font.weight: Font.Bold
                    font.family: quickSand.name
                    font.pixelSize: 0.5 * programName.font.pixelSize
                }
            }

            // Color pattern
            GridLayout {
                columns: 8
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.columnSpan: 2

                Text {
                    text: "R"
                    color: "#ffffff"
                    font.family: quickSand.name
                    font.pixelSize: 0.3 * programName.font.pixelSize
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }
                Text {
                    text: "G"
                    color: "#ffffff"
                    font.family: quickSand.name
                    font.pixelSize: 0.3 * programName.font.pixelSize
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }
                Text {
                    text: "B"
                    color: "#ffffff"
                    font.family: quickSand.name
                    font.pixelSize: 0.3 * programName.font.pixelSize
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }

                Text {
                    text: "C"
                    color: "#ffffff"
                    font.family: quickSand.name
                    font.pixelSize: 0.3 * programName.font.pixelSize
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }
                Text {
                    text: "M"
                    color: "#ffffff"
                    font.family: quickSand.name
                    font.pixelSize: 0.3 * programName.font.pixelSize
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }
                Text {
                    text: "Y"
                    color: "#ffffff"
                    font.family: quickSand.name
                    font.pixelSize: 0.3 * programName.font.pixelSize
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }

                Text {
                    text: "K"
                    color: "#ffffff"
                    font.family: quickSand.name
                    font.pixelSize: 0.3 * programName.font.pixelSize
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }
                Text {
                    text: "W"
                    color: "#ffffff"
                    font.family: quickSand.name
                    font.pixelSize: 0.3 * programName.font.pixelSize
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }

                // RGB
                Rectangle {
                    color: "#ff0000"
                    width: patternSize
                    height: patternSize
                }
                Rectangle {
                    color: "#00ff00"
                    width: patternSize
                    height: patternSize
                }
                Rectangle {
                    color: "#0000ff"
                    width: patternSize
                    height: patternSize
                }

                // CMY
                Rectangle {
                    color: "#00ffff"
                    width: patternSize
                    height: patternSize
                }
                Rectangle {
                    color: "#ff00ff"
                    width: patternSize
                    height: patternSize
                }
                Rectangle {
                    color: "#ffff00"
                    width: patternSize
                    height: patternSize
                }

                // BW
                Rectangle {
                    color: "#000000"
                    width: patternSize
                    height: patternSize
                }
                Rectangle {
                    color: "#ffffff"
                    width: patternSize
                    height: patternSize
                }
            }
        }

        // Usage
        Text {
            color: "#ffffff"
            text: "This is a Webcamoid's virtual webcam test.\n"
                + "Go to Webcamoid, enable virtual webcam output and\n"
                + "play some webcam, desktop or video, doing so will\n"
                + "create a new device for the stream, and will make\n"
                + "this device disappear."
            topPadding: 8
            Layout.columnSpan: 2
            font.family: quickSand.name
            font.pixelSize: 0.45 * programName.font.pixelSize
        }
    }
}
