import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.14
import QtLocation 5.6
import QtPositioning 5.6

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Power Price")

    SwipeView {
        id: swipeView
        anchors.fill: parent
//        currentIndex: tabBar.currentIndex

        MainPage {
            id: main_page

        }
    }


}
