import qbs
import qbs.FileInfo

CppApplication {
    name: "mv_formatting"
    condition: Qt.widgets.present && Qt.widgets.config.tableview

    Depends { name: "Qt.widgets"; required: false }

    files: [
        "main.cpp",
        "mymodel.cpp",
        "mymodel.h",
    ]

    Group {
        fileTagsFilter: ["application"]
        qbs.install: true
        qbs.installDir: FileInfo.joinPaths(Qt.core.examplesInstallDir, "widgets", "tutorials",
                                           "modelview", "2_formatting")
    }
}
