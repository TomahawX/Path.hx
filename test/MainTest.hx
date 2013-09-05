import path.Path;

class MainTest {

    static function readFolder(arg, dirName, fileNames) {
        trace(dirName, fileNames);
    }

    static function main() {
        Path.walk(Path.abspath('.'), MainTest.readFolder, null);
    }

}
