import QtQuick 2.6
import QtQuick.Controls 1.5
//import QtMultimedia 5.6

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Advance Wars")
    color: "transparent"
    // main spalsh image
    Image {
        anchors.fill: parent
        source: "img/background.png"
        width: 640
        height: 480
    }
    // settings page
    SettingsPage {
        id: settingspage
        visible: false
    }
    // main mainsplash screen
    Rectangle {
        id: mainsplash
        property alias mouseArea: mainmousearea
        property real  maximumDragX: 0
        property real  maximumDragY: 0
        property alias drag: mouseArea1.drag
        width: 400
        height: 300
        border.width: 2
        radius: 10
        visible: true
        // main Advance Wars title
        Rectangle {
            id: maintitle
            property alias text: maintitletextarea
            width: 400
            height: 60
            border.width: 2
            color: "transparent"
            y: 60
            Text{
                id: maintitletextarea
                anchors.centerIn: parent
                text: "Advance Wars"
                font.family: "Helvetica"
                font.pointSize: 18
                color: "black"
            }
        }
        // load game button
        Rectangle {
            id: loadgamerect
            property alias mouseArea: mouseArea1
            property alias text: loadgametextarea
            width: 100
            height: 50
            border.width: 2
            radius: 5
            color: "transparent"
            x: parent.width * 3 / 5
            y: parent.height * 4 / 6
            z: 10
            Text {
                id: loadgametextarea
                anchors.centerIn: parent
                text: "Load Game"
                font.family: "Helvetica"
                font.pointSize: 14
                color: "black"
                MouseArea {
                    id: loadgamemousearea
                    anchors.fill: parent
                    onPressed: {
                        mainsplash.visible = false
                        settingspage.visible = false
                        brd_board.visible = false
                    }
                    onClicked: {
                        mainsplash.visible = false
                        settingspage.visible = false
                        brd_board.visible = false
                    }
                }
            }
            MouseArea {
                id: mouseArea1
                //anchors.fill: parent
                //hoverEnabled: true
                //onPressed: {mainsplash.visible = false
                //settings.visible = true}
                //onClicked: {mainsplash.visible = false}
                //onEntered: {parent.color = "#CCE5FF"
                //parent.opacity = .2}
                //onExited: {parent.color = "transparent"
                //parent.opacity = 1}
            }
        }
        // new game button
        Rectangle {
            id: newgamerect
            property alias mouseArea: mainmousearea
            property alias text: newgametextarea
            width: 100
            height: 50
            border.width: 2
            radius: 5
            color: "transparent"
            x: parent.width / 5
            y: parent.height * 4 / 6
            z: 10
            Text {
                id: newgametextarea
                anchors.centerIn: parent
                text: "New Game"
                font.family: "Helvetica"
                font.pointSize: 14
                color: "black"
                MouseArea {
                    id: newgamemousearea
                    anchors.fill: parent
                    onPressed: {
                        mainsplash.visible = false
                        brd_board.visible = true
                        settingspage.visible = false
                    }
                    onClicked: {
                        mainsplash.visible = false
                        brd_board.visible = true
                        settingspage.visible = false
                    }
                }
            }
            MouseArea {
                id: mainmousearea
            }
        }
        //settings button
        Rectangle {
            property alias mouseArea: mouseArea4
            property alias text: settingstextarea
            width: 100
            height: 30
            border.width: 2
            radius: 5
            color: "transparent"
            x: parent.width * 2 / 5
            y: parent.height * 7 / 8
            z: 10
            Text {
                id: settingstextarea
                anchors.centerIn: parent
                text: "Settings"
                font.family: "Helvetica"
                font.pointSize: 14
                color: "black"
                MouseArea {
                    id: settingsmousearea
                    anchors.fill: parent
                    onPressed: {
                        mainsplash.visible = false
                        settingspage.visible = true
                        gametitle.visible = false
                        brd_board.visible = false
                    }
                    onClicked: {
                        mainsplash.visible = false
                        settingspage.visible = true
                        gametitle.visible = false
                        brd_board.visible = false
                    }
                }
            }
            MouseArea{
                id:mouseArea4
            }
        }
        MouseArea{
            id:mouseArea3
            anchors.fill: parent
            drag.target: parent
            //onClicked:{splash.visible = false}
            //drag.maximumX: maximumDragX
            //drag.maximumY: maximumDragY
        }


    }


    //end of first mainsplash screen
}
