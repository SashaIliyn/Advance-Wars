//Name: Albert Sta Cruz
//Lab: Lab 2 Splash Screen
//Project Name: Lab 2
#include <QApplication>
#include <QQmlApplicationEngine>

#include <QQmlContext>  //step2
#include "settings.h"
int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
QQmlApplicationEngine engine;
    // Call main.qml
      SettingsPage _derp; //step1
      engine.rootContext()->setContextProperty("herp", &_derp); //step2


    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
