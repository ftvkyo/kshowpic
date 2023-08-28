import QtQuick 2.0
import QtQuick.Controls 2.5 as QQC2
import QtQuick.Dialogs 1.0 as QQD
import QtQuick.Layouts 1.0
import org.kde.kirigami 2.4 as Kirigami

Kirigami.FormLayout {
    id: page
    property alias cfg_picPath: picPath.text

    RowLayout {
        Kirigami.FormData.label: i18n("File to display:")

        QQC2.TextField {
            id: picPath
            placeholderText: i18n("No file selected.")
        }
        QQC2.Button {
            text: i18n("Browse")
            icon.name: "folder-symbolic"
            onClicked: fileDialogLoader.active = true

            Loader {
                id: fileDialogLoader
                active: false

                sourceComponent: QQD.FileDialog {
                    id: fileDialog
                    folder: shortcuts.pictures
                    nameFilters: [
                        i18n("Image files (%1)", "*.jpg *.jpeg *.png *.gif *.bmp *.svg"),
                        i18n("All files (%1)", "*"),
                    ]
                    onAccepted: {
                        picPath.text = fileUrl
                        fileDialogLoader.active = false
                    }
                    onRejected: {
                        fileDialogLoader.active = false
                    }
                    Component.onCompleted: open()
                }
            }
        }
    }
}
