#include "filesystemwidget.h"

FilesystemWidget::FilesystemWidget()
{
    // Create the toolbar
    QToolBar *fsToolbar = new QToolBar();
    fsToolbar->setMovable(false);

    goUpAction = new QAction(QIcon::fromTheme("go-up"), tr("Go up"), this);
    connect(goUpAction, SIGNAL(triggered()), this, SLOT(goUp()));
    fsToolbar->addAction(goUpAction);

    goHomeAction = new QAction(QIcon::fromTheme("go-home"), tr("Go up"), this);
    connect(goHomeAction, SIGNAL(triggered()), this, SLOT(goHome()));
    fsToolbar->addAction(goHomeAction);


    // Create the filesystem view
    fsWidgetModel = new QFileSystemModel();
    fsListView = new QListView();
    fsListView->setModel(fsWidgetModel);

    // We shall use this to filter available file extensions from Phonon
    //fsWidgetModel->setFilter(getPhononExtensions());

    connect(fsWidgetModel, SIGNAL(rootPathChanged(QString)), this, SLOT(pathChanged(QString)));
    connect(fsListView, SIGNAL(doubleClicked(QModelIndex)), this, SLOT(doubleClickAt(QModelIndex)));

    // Create a new horizontal box
    QVBoxLayout *vlayout = new QVBoxLayout();
    vlayout->addWidget(fsToolbar);
    vlayout->addWidget(fsListView);
    goHome();

    this->setLayout(vlayout);

}


void FilesystemWidget::goUp() {
    dir.cdUp();
    updateWidget();
}


void FilesystemWidget::goHome() {
    startLocation = QDesktopServices::storageLocation(QDesktopServices::MusicLocation);
    if (startLocation.isEmpty() || !dir.exists(startLocation)) {
        dir = QDir::homePath();
    }
    else {
        dir = startLocation;
    }

    updateWidget();

}

void FilesystemWidget::pathChanged(QString newPath) {
    // Enable/disable go up button
    if (dir.absolutePath() == QDir::rootPath()) { goUpAction->setDisabled(true); }
    else { goUpAction->setEnabled(true); }
    updateWidget();
}


void FilesystemWidget::doubleClickAt(QModelIndex modelIndex) {
    // It it's a dir, we must change path
    if (fsWidgetModel->isDir(modelIndex)) {
        dir = QDir(fsWidgetModel->filePath(modelIndex));
        updateWidget();
    }
    
    // If it's a file, we must add it to playlist
    else {
        // TODO: add file
    }
}


void FilesystemWidget::updateWidget() {
    fsWidgetModel->setRootPath(dir.absolutePath());
    fsListView->setRootIndex(fsWidgetModel->index(dir.absolutePath()));
}


QStringList*  FilesystemWidget::getPhononExtensions() {
    QStringList mimetypes = Phonon::BackendCapabilities::availableMimeTypes();
    // TODO: obtain disponible extensions
}