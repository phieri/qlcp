/*
  Q Light Controller Plus
  CustomTextEdit.qml

  Copyright (c) Massimo Callegari

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0.txt

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
*/

import QtQuick 2.0
import "."

Rectangle
{
    id: customTextEditRect
    width: 200
    height: 30
    radius: 3
    color: UISettings.bgMedium

    property alias inputText: textEdit2.text
    property int fontSize: 16

    signal textChanged(var text)

    border.color: "#222"

    TextInput
    {
        id: textEdit2
        color: UISettings.fgMain
        anchors.fill: parent
        anchors.margins: 4
        clip: false
        font.family: "RobotoCondensed"
        font.pointSize: fontSize
        echoMode: TextInput.Normal
        anchors.verticalCenter: parent.verticalCenter
        onTextChanged: customTextEditRect.textChanged(text)
    }
}
