import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Particles 2.0

Window {
    visible: true
    width: 900
    height: 900
    title: qsTr("Hello World\ntest")
//    Text{
//        x:100
//        y:100
//        font.pixelSize: 26
//        text:"test111\ntest111"
//        lineHeightMode: Text.FixedHeight
//        lineHeight:  50  //1.923
//    }
//    Text{
//        x:200
//        y:100
//        font.pixelSize: 20

//        text:"test\ntest"
//lineHeightMode: Text.FixedHeight
////        lineHeightMode: Text.FixedHeight
//        lineHeight: 50//+26
//    }
//    Text{
//        x:200
//        y:100
//        font.pixelSize: 26
//        text:"test\ntest"

//        lineHeightMode: Text.FixedHeight
//        lineHeight: 50//+26
//    }

Rectangle{
    x:0
    y:0
    width: 450
    height: 450
    border.color: "green"

    ParticleSystem{
        anchors.fill: parent
        ImageParticle {
            groups: ["stars"]
            anchors.fill: parent
            source: "qrc:/star.png"
            alpha:0.8
            alphaVariation:0.2
            autoRotation:true
            color:"black"
            colorVariation:1.0
        }
        Emitter {
            group:"stars"
            maximumEmitted:-1
            lifeSpanVariation:1000
            emitRate: parent.width/600.0*13
            lifeSpan:2000
            size:20
            sizeVariation: 10
            anchors.fill: parent
        }
        //边眨变动
        Turbulence {
            anchors.fill: parent
            strength: 50
//            once:true

        }

    }
}

Rectangle{
    x:450
    y:0
    width: 450
    height: 450
    border.color: "green"

    ParticleSystem{
        anchors.fill: parent
        ImageParticle {
            groups: ["stars"]
            anchors.fill: parent
            source: "qrc:/star.png"
            alpha:0.8
            alphaVariation:0.2
            autoRotation:true
            color:"black"
            colorVariation:1.0
        }
        Emitter {
            group:"stars"
            maximumEmitted:-1
            lifeSpanVariation:1000
            emitRate: parent.width/600.0*13
            lifeSpan:2000
            size:20
            sizeVariation: 10
            anchors.fill: parent
        }
      Wander{
            anchors.fill: parent
            pace:1000
            xVariance : 20
            yVariance : 20

        }

    }
}

Rectangle{
    x:0
    y:450
    width: 450
    height: 450
    border.color: "green"

    ParticleSystem{
        anchors.fill: parent
        ImageParticle {
            groups: ["stars"]
            anchors.fill: parent
            source: "qrc:/star.png"
            alpha:0.8
            alphaVariation:0.2
            autoRotation:true
            color:"black"
            colorVariation:1.0
        }
        Emitter {
            group:"stars"
            maximumEmitted:-1
            lifeSpanVariation:1000
            emitRate: parent.width/600.0*13
            lifeSpan:2000
            size:20
            sizeVariation: 10
            anchors.fill: parent
       }

        Gravity{
            angle : 90
            magnitude : 50
        }

    }
}


Rectangle{
    x:450
    y:450
    width: 450
    height: 450
    border.color: "green"

    ParticleSystem{
        anchors.fill: parent
        ImageParticle {
            groups: ["stars"]
            anchors.fill: parent
            source: "qrc:/star.png"
            alpha:0.8
            alphaVariation:0.2
            autoRotation:true
            color:"black"
            colorVariation:1.0
        }
        Emitter {
            group:"stars"
            maximumEmitted:-1
            lifeSpanVariation:1000
            emitRate: parent.width/600.0*13
            lifeSpan:2000
            size:20
            sizeVariation: 10
            anchors.fill: parent
            velocity: PointDirection {
                            x: 100;
                            y: 0;
                            xVariation: 0;
                            yVariation: 100/6;
                        }
        }
        Gravity{
            angle : 90
            magnitude : 30
        }


    }
}

}
