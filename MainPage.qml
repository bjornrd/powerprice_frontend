import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12
import QtCharts 2.2




Page {
    function getDummyData(numPoints)
    {
        var points = [];
        for(var i=0; i<numPoints; i++)
        {
            points.push({val: Math.random()})
        }

        return points
    }

    function getDummyXaxisData(numPoints)
    {
//        var points = []
//        for(var i=0; i<numPoints; i++)
//            points.push({val: Qt.formatDate("hh:mm:ss", ))
    }

    width: 600
    height: 400

    header: GridLayout {
        Column{
            Row {
                RadioButton {
                    text: "NO1"
                    checked: false
                    autoExclusive: false
                }

                RadioButton {
                    text: "NO2"
                    checked: false
                    autoExclusive: false
                }

                RadioButton {
                    text: "NO3"
                    checked: false
                    autoExclusive: false
                }

                RadioButton {
                    text: "NO4"
                    checked: false
                    autoExclusive: false
                }

                RadioButton {
                    text: "NO5"
                    checked: false
                    autoExclusive: false
                }

                // Spacer item to align items above left->right
                Item {
                   Layout.fillWidth: true
                   Layout.fillHeight: true
                }
            }

            Row {

                RadioButton {
                    text: "Today"
                    checked: false
                    autoExclusive: false
                }

                RadioButton {
                    text: "Tomorrow"
                    checked: false
                    autoExclusive: false
                }

                // Spacer item to align items above left->right
                Item {
                   Layout.fillWidth: true
                   Layout.fillHeight: true
                }

            }
        }
    }

    PriceChartView{
        id: price_chartView
        title: "Power Price"

    }



}
