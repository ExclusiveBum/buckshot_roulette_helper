#include <QQmlApplicationEngine>
#include "controller.h"

extern int live;
extern int blank;
extern char shells[][10];

void Controller::updateValues(const QVariantMap &newValues)
{
    QString liveS = newValues["liveS"].toString();
    QString blankS = newValues["blankS"].toString();
    bool okL;
    bool okB;
    // if(liveS == "" && blankS == "")
    // {
    //     okL = false;
    //     okB = false;
    // }
    // else if(liveS == "" && blankS != "")
    // {
    //     okL = false;
    //     blank = blankS.toInt(&okB);
    // }
    // else if(liveS != "" && blankS == "")
    // {
    //     okB = false;
    //     live = liveS.toInt(&okL);
    // }
    // else
    // {
    //     live = liveS.toInt(&okL);
    //     blank = blankS.toInt(&okB);
    // }
    live = liveS.toInt(&okL);
    blank = blankS.toInt(&okB);


    if (okL && okB)
    {
        qDebug() << "Konwersja powiodła się. Wartość num: " << live;
        qDebug() << "Konwersja powiodła się. Wartość num: " << blank;
        if((live > 0) || (blank > 0))
        {
            if((live+blank) > 1)
            {
                if((live+blank) <= 10)
                {
                    if(!(live==0 && blank>1) || !(blank==0 && live>1))
                    {
                        setShells();
                    }
                    else
                    {
                        qDebug() << "There can't be only one type of shells";
                    }
                }
                else
                {
                    qDebug() << "There must be maximum of 10 shells";
                }
            }
            else
            {
                qDebug() << "There must be minimum of 2 shells";
            }
        }
        else
        {
            qDebug() << "There can't be no shells";
        }
    }
    else
    {
        qDebug() << "You need to enter the all numbers";
    }

}

void Controller::setShells()
{
    for (int i=0; i<live; i++)
    {
        shells[0][i] = 'l';
    }
    for (int  i=0; i<blank; i++)
    {
        shells[1][i] = 'b';
    }
    for (int i=0; i<4; i++)
    {
        qDebug() << shells[i];
    }
}
