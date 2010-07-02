#ifndef SETTINGSDIALOG_H
#define SETTINGSDIALOG_H

#include <QVBoxLayout>
#include <QApplication>
#include <QDesktopWidget>
#include <QDialogButtonBox>

#include "widgets/foldersettingswidget.h"
#include "widgets/lastfmsettingswidget.h"

class SettingsDialog : public QWidget
{
    Q_OBJECT

public:
    SettingsDialog(QWidget *parent);

private:
    void updateMediaFolders();
    QDialogButtonBox *buttonBox;
    FolderSettingsWidget *folderSettingsWidget;
    LastFmSettingsWidget *lastFmSettingsWidget;

private slots:
    void applySettings();
    void handleAbstractButton(QAbstractButton*);


};

#endif // SETTINGSDIALOG_H
