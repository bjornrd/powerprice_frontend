import QtQuick 2.0
import QtCharts 2.0
import QtQuick.Controls 2.15


ChartView {
    title: "Power Prices"
    anchors.fill: parent
    legend.alignment: Qt.AlignBottom
    antialiasing: true
    theme: ChartView.ChartThemeDark

    property alias axisX: axisX
    property alias axisY: axisY
    property alias toolTip: id_tooltip


    ValueAxis {
        id: axisY
        tickCount: 3
        max: 4
        min: 0
    }

    ValueAxis {
        id: axisX
        tickCount: 5
        max: 24
        min: 0
    }

//        DateTimeAxis{
//            id: xTime
//            gridVisible: false
//        }

    ToolTip {
       id: id_tooltip
       contentItem: Text{
           color: "#21be2b"
           text: id_tooltip.text
       }
       background: Rectangle {
           border.color: "#21be2b"
       }
    }


    PriceLineSeries {
        id: firstLineSeries
        axisX: axisX
        axisY: axisY

        name: "NO3 - 06/12/2021"
     }

    PriceLineSeries {
        id: secondLineSeries
        name: "NO4 - 06/12/2021"
     }

    Component.onCompleted: {
        var firstPoints = getDummyData(24)
        var secondPoints = getDummyData(24)
        for(var i=0; i<firstPoints.length; i++)
        {
            firstLineSeries.append(i, firstPoints[i].val)
            secondLineSeries.append(i, secondPoints[i].val)
        }

    }



}
