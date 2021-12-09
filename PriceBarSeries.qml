import QtQuick 2.0
import QtCharts 2.3

BarSeries {
    function findClosestPoint(series, point)
    {
        var min_val = 10000000.0; // Just something large
        var min_idx = -1;
        for(var i=0; i<series.count; i++)
        {
            var m = Math.abs(series.at(i).x - point.x)

            if(m < min_val)
            {
                min_val = m
                min_idx = i
            }
        }

        return min_idx
    }

    onHovered: {
        var closestPoint = findClosestPoint(this, point);

        var p = chart.mapToPosition(this.at(closestPoint))
        var text = qsTr("x: %1, y: %2").arg(this.at(closestPoint).x).arg(this.at(closestPoint).y)
        id_tooltip.x = p.x
        id_tooltip.y = p.y - id_tooltip.height
        id_tooltip.text = text
//        id_tooltip.timeout = 1000
        id_tooltip.visible = true
    }
}
