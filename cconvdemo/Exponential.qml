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
        y: spinRectId.y + 160

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
        y: spinRectId.y + 240

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
        y: spinRectId.y + 320

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

     Label{
         //height:  parent.height
         //verticalAlignment: Text.AlignVCenter
         id: label
         x: spinRectId.x + 45
         y: spinRectId.y + 385
         text: "Causality:"
         font.pixelSize: 17
     }

     Rectangle{
         id: causalityId
         width: 330
         height: 105
         x: label.x - 35
         y: label.y + 35
         color: "#c0c0c0"
         border.color: "black"
         border.width: 2

         Row{
            spacing: 30
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            RadioButton {
                    id: controrl
                    checked: true
                    text: qsTr("Causal")

            }
            RadioButton {
                    text: qsTr("Noncausal")
                }
         }
     }

   }

}
