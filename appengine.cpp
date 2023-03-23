#include "appengine.h"


appEngine::appEngine(QObject *parent) : QObject(parent)
{
    ip_port = "http://127.0.0.1:8000";
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
void appEngine::setIpPort(QString ipport)
{
    ip_port = ipport;
}

void appEngine::sendToFG(QString addr, QString value)
{
    if (value == "pause")
    {
        const QUrl url_get(ip_port+addr);
        QNetworkRequest request_get(url_get);
        request_get.setHeader(QNetworkRequest::ContentTypeHeader, "application/json");
        mgr.get(request_get);
    }


    else if (value!="")
    {
        const QUrl url(ip_port+addr);
        QNetworkRequest request(url);
        request.setHeader(QNetworkRequest::ContentTypeHeader, "application/json");

        QJsonObject obj;
        obj["value"] = QString(value);
        QJsonDocument doc(obj);
        QByteArray data = doc.toJson();
        mgr.post(request, data);
    }


}
