import QtQuick 2.0
import QtQuick.Controls 1.5
import QtMultimedia 5.6

// settings page
Rectangle {
    id: settingsrect
    anchors.fill: parent
    border.width: 2
    radius: 10
    visible: true

    property bool is_playing: true

    property variant songs: ["Opening"]
    property int song_index: 0
    property variant sources: [":/../songs/01-advance-wars-1-opening.mp3"]

    property int number_of_songs: 1

    // Advance Wars title
    Rectangle {
        id: settingstitlerect
        width: parent.width
        height: 60
        border.width: 2
        color: "transparent"
        y: 60
        Text {
            id: titletextarea
            anchors.centerIn: parent
            text: "Advance Wars"
            font.family: "Helvetica"
            font.pointSize: 18
            color: "black"
        }
    }
    // return button
    Rectangle {
        id: settingsreturnrect
        width: 100
        height: 50
        border.width: 2
        radius: 5
        color: "transparent"
        x: parent.width * 3 / 5
        y: parent.height * 4 / 6
        z: 10
        Text {
            id: returntextarea
            anchors.centerIn: parent
            text: "Return"
            font.family: "Helvetica"
            font.pointSize: 14
            color: "black"
        }
    }
    // save button
    Rectangle {
        id: settingssaverect
        width: 100
        height: 50
        border.width: 2
        radius: 5
        color: "transparent"
        x: parent.width / 5
        y: parent.height * 4 / 6
        Text {
            id:savetextarea
            anchors.centerIn: parent
            text: "Save"
            font.family: "Helvetica"
            font.pointSize: 14
            color: "black"
        }
    }
    // number of cells
    Rectangle {
        id: settingscellsrect
        x: 188
        y: 189
        width: 66
        height: 22
        border.width: 1
        TextInput {
            id: cellstextinput
            anchors.fill: parent
            text: qsTr("# of cells")
            horizontalAlignment: Text.AlignHCenter
            selectionColor: "#008068"
            font.pixelSize: 12
            MouseArea {
                id: cellsmousearea
                anchors.fill: parent
                onClicked:{
                    parent.text = ""
                }
                Keys.onReturnPressed:{
                    //Cursed_8_ball.set_draggable(true);
                    //Cursed_8_ball.set_question(txtin_input.text);
                }
            }
        }
    }
    // text for board size
    Text {
        id: boardsizetext
        x: 110
        y: 189
        width: 78
        height: 22
        text: qsTr("Board Size:")
        font.pixelSize: 12
    }
    // text for sound checkbox
    Text {
        id: soundtext
        x: 110
        y: 217
        width: 108
        height: 22
        text: qsTr("Turn Sound On/Off")
        font.pixelSize: 12
    }
    // checkbox for sound
    CheckBox {
        id: soundcheckbox
        x: 224
        y: 217
        width: 19
        height: 19
        checked: false
        MouseArea {
            id: soungmousearea
            anchors.fill: parent
            onClicked: {
                // play song
                if (soundcheckbox.checked === true) {
                    soundcheckbox.checked = false
                    is_playing = false
                    songplaying.pause()
                }
                // pause song
                else {
                    soundcheckbox.checked = true
                    is_playing = true
                    songplaying.play()
                }
                console.log("Play button clicked!")
            }
        }
    }
    // number of players
    Rectangle {
        id: settingsplayersrect
        x: 188
        y: 161
        width: 66
        height: 22
        border.width: 1
        TextInput {
            id: playerstextinput
            anchors.fill: parent
            text: qsTr("#")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 12
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    parent.text = ""
                }
                Keys.onReturnPressed: {
                    //Cursed_8_ball.set_draggable(true);
                    //Cursed_8_ball.set_question(txtin_input.text);
                }
            }
        }
    }
    // text for number of players
    Text {
        id: plyaerstext
        x: 110
        y: 161
        width: 78
        height: 22
        text: qsTr("Player Count:")
    }
    Audio {
        id: songplaying
        source: sources[0]
    }
}
