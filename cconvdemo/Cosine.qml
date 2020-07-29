import QtQuick 2.0
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14

Item {
    id: rootItem
    Rectangle{
     id: spinRectId
     width:   parent.width
     height:  parent.height

     Row{
        spacing: 45
        x: spinRectId.x + 20
        y: spinRectId.y + 80

        Label{
          height: parent.height
          verticalAlignment: Text.AlignVCenter
          text: "Amplitude:"
          font.pixelSize: 17
        }

        SpinBox{
            id: amplitude
            from:-10
            to:10
            value: 1
            onValueChanged: {
                console.log(amplitude.value + " " + period.value + " " + phase.value + " " + length.value + " " + delay.value)
                ccd.cos(amplitude.value, period.value, phase.value, length.value, delay.value)

            }
        }
     }

     Row{
        spacing: 45
        x: spinRectId.x + 50
        y: spinRectId.y + 170
        Label{
          height: parent.height
          verticalAlignment: Text.AlignVCenter
          text: "Period:"
          font.pixelSize: 17
        }

        SpinBox{
            id: period
            from:-10
            to:10
            value: 10
        }
     }

     Row{
        spacing: 45
        x: spinRectId.x + 53
        y: spinRectId.y + 260
        Label{
          height: parent.height
          verticalAlignment: Text.AlignVCenter
          text: "Phase:"
          font.pixelSize: 17
        }

        SpinBox{
            id: phase
            from:-10
            to:10
            value: 0
        }
     }


     Row{
        spacing: 45
        x: spinRectId.x + 45
        y: spinRectId.y + 350
        Label{
          height: parent.height
          verticalAlignment: Text.AlignVCenter
          text: "Length:"
          font.pixelSize: 17
        }

        SpinBox{
            id: length
            from:-10
            to:10
            value: 10
        }
     }


     Row{
        spacing: 45
        x: spinRectId.x + 55
        y: spinRectId.y + 440
        Label{
          height: parent.height
          verticalAlignment: Text.AlignVCenter
          text: "Delay:"
          font.pixelSize: 17
        }

        SpinBox{
            id: delay
            from:-10
            to:10
            value: 0
        }
     }

    }
}
