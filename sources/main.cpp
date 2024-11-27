#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QGuiApplication>
#include <QString>
#include <QVariantMap>
#include "controller.cpp"

int live;
int blank;


int main(int argc, char *argv[])
{
    qDebug() << "Start aplikacji";

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    Controller controller;

    engine.rootContext()->setContextProperty("controller", &controller);
    qDebug() << "Controller zarejestrowany w kontekście";

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

#include "main.moc"
