import QtQuick 2.0
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14

/*Item {
    id: root
    Rectangle{
     id: spinRecId
     width: parent.width
     height: parent.height
     //anchors.right: parent.right
     //color: parent.color
     //anchors.rightMargin: 60

     ColumnLayout{
       id: columnLayoutId
       anchors.left: parent.left
       anchors.right: parent.right
       anchors.top: parent.top
       anchors.bottom: parent.bottom
       spacing: 60

       RowLayout{
          id: row1Id
          Label{
            id:lbl1
            Layout.fillWidth: true
            text: "Amplitude:"
          }

          SpinBox{
             Layout.fillWidth: true
             from:-10
             to:10
          }
       }

       RowLayout{
          id: row2Id
          spacing: 38
          Label{
            Layout.fillWidth: true
            text: "Period:"
          }

          SpinBox{
              Layout.fillWidth: true
              from:-10
              to:10
          }
       }

       RowLayout{
          id: row3Id
          spacing: 42
          Label{
            Layout.fillWidth: true
            text: "Phase:"
          }
          SpinBox{
              Layout.fillWidth: true
              from:-10
              to:10
          }
       }

       RowLayout{
          id: row4Id
          spacing: 36
          Label{
            Layout.fillWidth: true
            text: "Length:"
          }

          SpinBox{
              Layout.fillWidth: true
              from:-10
              to:10
          }
       }

       RowLayout{
          id: row5Id
          spacing: 47
          Label{
              Layout.fillWidth: true
              text: "Delay:"
          }

          SpinBox{
              Layout.fillWidth: true
              from:-10
              to:10
          }
       }
     }
    }
}
*/


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
            from:-10
            to:10
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
            from:-10
            to:10
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
            from:-10
            to:10
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
            from:-10
            to:10
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
            from:-10
            to:10
        }
     }

    }
}




