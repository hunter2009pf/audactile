#include "collectiontreewidgetitem.h"
#include "collectiontreewidgetsong.h"

CollectionTreeWidgetItem::CollectionTreeWidgetItem(TreeLevel level, QTreeWidget *parent) :
    QTreeWidgetItem(parent, 0)
{
    this->level = level;
}

unsigned int CollectionTreeWidgetItem::getNodeLevel() {
    return level;
}

QList<QUrl> CollectionTreeWidgetItem::getUrlList() {
    qDebug("CollectionTreeWidgetItem getUrlList");
    QList<QUrl> urlList;

    int childrenTotal = childCount();

    // If we have children, we must be at an album or artist
    if (childrenTotal > 0) {
        for (int i = 0; i < childrenTotal; i++) {
            CollectionTreeWidgetItem *childNode = (CollectionTreeWidgetItem*)child(i);
            int nodeLevel = childNode->getNodeLevel();
            qDebug("Level " + QString::number(nodeLevel).toUtf8());
            if (childNode->getNodeLevel() > LevelMusic) {
                urlList.append(childNode->getUrlList());
            }
            else {
                CollectionTreeWidgetSong *song = (CollectionTreeWidgetSong*)childNode;
                urlList.append(song->getUrlList());
            }
        }
    }
    // If we do not have children, maybe it's an song
    else {
        if (getNodeLevel() == LevelMusic) {
            CollectionTreeWidgetSong *song = (CollectionTreeWidgetSong*)this;
            urlList.append(song->getUrlList());
        }
    }

    return urlList;
}