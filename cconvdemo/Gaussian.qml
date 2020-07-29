import QtQuick 2.0
import QtQuick.Controls 2.14

Item {   
    id: rootItem
    Rectangle{
     id: spinRectId
     width:   parent.width
     height:  parent.height

     Row{
        spacing: 15
        x: spinRectId.x + 65
        y: spinRectId.y + 80
        Label{
          height: parent.height
          verticalAlignment: Text.AlignVCenter
          text: "Scaling factor:"
          font.pixelSize: 17
        }

        SpinBox{
            from:-10
            to:10
        }
     }

     Row{
        spacing: 15
        x: spinRectId.x + 5
        y: spinRectId.y + 200

        Label{
          height:  parent.height
          verticalAlignment: Text.AlignVCenter
          text: "Exponential Constant:"
          font.pixelSize: 17
        }

        SpinBox{
          from:-10
          to:10
        }
     }

     Row{
        spacing: 15
        x: spinRectId.x + 115
        y: spinRectId.y + 320

        Label{
            height: parent.height
            verticalAlignment: Text.AlignVCenter
            text: "Length:"
            font.pixelSize: 17
        }

        SpinBox{
            from: -10
            to: 10
        }
     }

     Row{
        spacing: 15
        x: spinRectId.x + 125
        y: spinRectId.y + 440

        Label{
            height: parent.height
            verticalAlignment: Text.AlignVCenter
            text: "Delay:"
            font.pixelSize: 17
        }

        SpinBox{
            from: -10
            to: 10
        }
     }

   }

}
