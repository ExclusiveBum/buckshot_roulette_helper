#include <QQmlApplicationEngine>
#include "controller.h"

extern int live;
extern int blank;
extern std::string shells[][10];

int Controller::setValues(const QVariantMap &newValues)
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
                    if((live==0 && blank>1) || (live>1 && blank==0))
                    {
                        qDebug() << "There can't be only one type of shells";
                        return 1;
                    }
                    else
                    {
                        setShells();
                        return 0;
                    }
                }
                else
                {
                    qDebug() << "There must be maximum of 10 shells";
                    return 2;
                }
            }
            else
            {
                qDebug() << "There must be minimum of 2 shells";
                return 3;
            }
        }
        else
        {
            qDebug() << "There can't be no shells";
            return 4;
        }
    }
    else
    {
        qDebug() << "You need to enter the all numbers";
        return 5;
    }

}

void Controller::setShells()
{
    for (int i=0; i<live; i++)
    {
        shells[0][i] = "ls";
    }
    for (int  i=0; i<blank; i++)
    {
        shells[1][i] = "bs";
    }
    for (int i=0; i<4; i++)
    {
        for (int j=0; j<10; j++)
        {
            printf("%s ", shells[i][j].c_str());
        }
        printf("%c", '\n');
    }
}
