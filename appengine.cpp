#include "appengine.h"


appEngine::appEngine(QObject *parent) : QObject(parent)
{

}

void appEngine::megaPrintFunction(std::string text)
{
    std::cout << text << std::endl;
}

void appEngine::printFromQml(QString areaText)
{
    megaPrintFunction(areaText.toStdString());

    str = areaText;
    emit sendToQml("мега сообщение");
}

void appEngine::sendToFG(QString addr, QString value)
{
    mgr = new QNetworkAccessManager(this);
    const QUrl url(addr);
    QNetworkRequest request(url);
    request.setHeader(QNetworkRequest::ContentTypeHeader, "application/json");

    QJsonObject obj;
    obj["value"] = QString(value);
    QJsonDocument doc(obj);
    QByteArray data = doc.toJson();
    mgr->post(request, data);

}


