import QtQuick 2.0
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14

Item {
   id: rootItem

   Rectangle{
     id: spinRectId
     width: parent.width
     height: parent.height

     Column{
       id: rootColumn
       anchors.left: parent.left
       anchors.right: parent.right
       anchors.top: parent.top
       anchors.bottom: parent.bottom
       anchors.topMargin:100
       //anchors.leftMargin: 50
       spacing: 100

       Row{
          spacing: 45
          x: rootColumn.x + 10
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
          x: rootColumn.x + 44
          Label{
            height: parent.height
            verticalAlignment: Text.AlignVCenter
            text: "Width:"
            font.pixelSize: 17
          }

          SpinBox{
              from:-10
              to:10
          }
       }

       Row{
          spacing: 45
          x: rootColumn.x + 46
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
}
