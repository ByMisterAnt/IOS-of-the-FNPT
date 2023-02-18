#ifndef FGADAPTER_H
#define FGADAPTER_H

#include <QObject>
#include <QNetworkAccessManager>
#include <QByteArray>
#include <QNetworkReply>
#include <QJsonDocument>
#include <QJsonObject>


class FgAdapter : public QObject
{
    Q_OBJECT

public:
    FgAdapter();

    void sender(QString addr, QString value);
};

#endif // FGADAPTER_H
