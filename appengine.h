#ifndef APPENGINE_H
#define APPENGINE_H

#include <iostream>
#include <string>
#include <QString>
#include <QObject>
#include <QNetworkAccessManager>
#include <QByteArray>
#include <QNetworkReply>
#include <QJsonDocument>
#include <QJsonObject>

class appEngine : public QObject
{
    Q_OBJECT

public:

    explicit appEngine(QObject *parent = 0);

    void megaPrintFunction(std::string text);

    QString str;


signals:

    void openMain();
    void sendToQml(QString message);

public slots:

    void printFromQml(QString areaText);
    void sendToFG(QString addr, QString value);
    void setIpPort(QString ipport);

private:
    QNetworkAccessManager *mgr;
    QString ip_port;
};

#endif // APPENGINE_H
