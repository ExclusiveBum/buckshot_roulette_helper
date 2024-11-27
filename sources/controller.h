#ifndef CONTROLLER_H
#define CONTROLLER_H

#include <QObject>

class Controller : public QObject
{
    Q_OBJECT
public:
    void updateValues(const QVariantMap &newValues);

signals:
    void valuesChanged();
};

#endif // CONTROLLER_H
