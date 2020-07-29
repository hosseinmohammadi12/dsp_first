#!/bin/usr/env python3

import sys

from PySide2.QtWidgets import QApplication
from PyQt5.QtCore import QObject
from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQml import QQmlApplicationEngine
from PyQt5.QtCore import QUrl, pyqtProperty, pyqtSlot, pyqtSignal, QVariant

from cosine import Cosine

import matplotlib.pyplot as plt

class CconvDemo(QObject):
    def __init__(self):
        QObject.__init__(self)
        self.cosine = 0
    
    

    # signals 
    sig_cos = pyqtSignal(list)
    

    # getters & setters

    def setCos(self,cos):
        if self.cosine != cos:
            self.cosine = cos
        self.sig_cos.emit(self.cosine)
    def getCos(self):
        return self.cosine
            

    # get cosine parameters (amplitude, period, phase, length, delay)
    @pyqtSlot(int, int, int, int, int)
    def cos(self, amplitude, period, phase, length, delay):
        cosine = Cosine()
        cosine.cosine(amplitude, period, phase, length, delay)
        self.cosine = cosine.y.tolist()
        # plt.plot(cosine.t,cosine.y)
        # plt.show()
        


    ##################### pyqtProperty #######################
    ##########################################################
    scos = pyqtProperty(list, getCos, notify=sig_cos)


if __name__ == "__main__":
    app = QApplication(sys.argv)
    engine = QQmlApplicationEngine()
    ccd = CconvDemo()
    ccd.cos(1, 14, 0, 10, 0)
    engine.rootContext().setContextProperty("ccd", ccd)
    engine.load(QUrl("cconvdemo.qml"))
    sys.exit(app.exec_())
