#ifndef APPENGINE_H
#define APPENGINE_H

#include <iostream>
#include <string>
#include <QString>
#include <QObject>


class appEngine : public QObject
{
    Q_OBJECT

public:

    explicit appEngine(QObject *parent = 0);

    void megaPrintFunction(std::string text);

    QString str;

signals:

    void sendToQml(QString message);

public slots:

    void printFromQml(QString areaText);

};

#endif // APPENGINE_H
