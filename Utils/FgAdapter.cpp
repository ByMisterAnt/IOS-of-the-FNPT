#include "FgAdapter.h"

FgAdapter::FgAdapter() : QObject()
{

}

void FgAdapter::sender(QString addr, QString value)
{
    QNetworkAccessManager *mgr = new QNetworkAccessManager(this);
    const QUrl url(addr);//ui->lineEdit_2->text());//"http://127.0.0.1:8000/json/position/altitude-ft"));
    QNetworkRequest request(url);
    request.setHeader(QNetworkRequest::ContentTypeHeader, "application/json");


    QJsonObject obj;
    obj["value"] = QString(value);//"1110,3";
    //obj["key2"] = "value2";
    QJsonDocument doc(obj);
    QByteArray data = doc.toJson();
    // or
    // QByteArray data("{\"key1\":\"value1\",\"key2\":\"value2\"}");
    QNetworkReply *reply = mgr->post(request, data);

    QObject::connect(reply, &QNetworkReply::finished, [=](){
        if(reply->error() == QNetworkReply::NoError){
            QString contents = QString::fromUtf8(reply->readAll());
            qDebug() << contents;
        }
        else{
            QString err = reply->errorString();
            qDebug() << err;
        }
        reply->deleteLater();
    });

    delete reply;
    delete mgr;
}
