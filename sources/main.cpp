#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QGuiApplication>
#include <QString>
#include <QVariantMap>
#include "controller.h"

int live = 0;
int blank = 0;
std::string shells[4][10] = {
    {"ns","ns","ns","ns","ns","ns","ns","ns","ns","ns"},
    {"ns","ns","ns","ns","ns","ns","ns","ns","ns","ns"},
    {"ns","ns","ns","ns","ns","ns","ns","ns","ns","ns"},
    {"ns","ns","ns","ns","ns","ns","ns","ns","ns","ns"}
};

int main(int argc, char *argv[])
{
    qDebug() << "Start aplikacji";

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    Controller controller;

    engine.rootContext()->setContextProperty("controllerx", &controller);

    // Ładowanie pliku QML
    const QUrl url(QStringLiteral("qrc:/App.qml"));
    engine.load(url);

    if (engine.rootObjects().isEmpty())
    {
        qDebug() << "Błąd: Nie załadowano pliku QML.";
        return -1;
    }
    qDebug() << "Plik QML został załadowany poprawnie.";

    return app.exec();
}

