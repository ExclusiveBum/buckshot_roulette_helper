#ifndef CONTROLLER_H
#define CONTROLLER_H

#include <QObject>

class Controller : public QObject
{
    Q_OBJECT
public:
    Q_INVOKABLE int setValues(const QVariantMap &newValues);
    Q_INVOKABLE void setShells();
    int live;
    int blank;


signals:
    int setValues();
};

#endif // CONTROLLER_H
