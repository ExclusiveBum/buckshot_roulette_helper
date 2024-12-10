#ifndef CONTROLLER_H
#define CONTROLLER_H

#include <QObject>

class Controller : public QObject
{
    Q_OBJECT
public:
    Q_INVOKABLE void updateValues(const QVariantMap &newValues);
    Q_INVOKABLE void setShells();
    int live;
    int blank;


signals:
    void updateValues();
};

#endif // CONTROLLER_H
