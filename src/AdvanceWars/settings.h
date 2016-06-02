#ifndef SETTINGS_H
#define SETTINGS_H
#include <Qsettings>
#include <QObject>

class SettingsPage : public QObject
{
    Q_OBJECT
public slots:
    void setOff()
    {
        _set.setValue("_music", false);
    }

    void setOn()
    {
        _set.setValue("_music", true);
    }

    bool state()
    {return _set.value("_music").toBool(); }
public:
    SettingsPage()
        :_set("Nimbus", "Advance-Wars")
    {
    }

private:
    QSettings _set;
};

#endif // SETTINGS_H
