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


