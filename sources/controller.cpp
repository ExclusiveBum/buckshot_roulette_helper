#include <QQmlApplicationEngine>
#include "controller.h"

extern int live;
extern int blank;

/*Q_INVOKABLE*/ void Controller::updateValues(const QVariantMap &newValues)
{
    QString liveS = newValues["liveS"].toString();
    QString blankS = newValues["blankS"].toString();
    bool okL;
    bool okB;
    live = liveS.toInt(&okL);
    blank = blankS.toInt(&okB);

    if (okL)
    {
        qDebug() << "Konwersja powiodła się. Wartość num: " << live;
    }
    else
    {
        qDebug() << "Błąd konwersji.";
    }

}
