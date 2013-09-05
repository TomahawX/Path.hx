package path;

import sys.FileSystem;

class Path {

    static private var sep:String = '/';

    static public function abspath (path) {
        return FileSystem.fullPath(path);
    }

    static public function exists (path:String):Bool {
        return FileSystem.exists(path);
    }

    static public function join (parts:Array<String>):String {
        return parts.join(sep);
    }

    static public function split (path):Array<String> {
        var pattern = ~/^(.+)\/([^\/\\]+)$/;
        pattern.match(path);
        return [pattern.matched(1), pattern.matched(2)];
    }

    static public function basename (path:String):String {
        return Path.split(path)[1];
    }

    static public function dirname (path:String):String {
        return Path.split(path)[0];   
    }

    static public function expanduser (path:String):String {
        var pattern = ~/~/;

        return pattern.replace(path, Sys.environment().get('HOME'));
    }

    static public function splitext (path:String):Array<String> {
        var pattern = ~/(.+)(\.[^\.]+)/;

        pattern.match(path);
        return [pattern.matched(1), pattern.matched(2)];
    }

    static private function _visitFolder(path:String, visit:Dynamic, arg:Dynamic) {
        var fileNames = [];
        var subdirPathes = [];

        for (subElement in FileSystem.readDirectory(path)) {
            var subPath = Path.join([path, subElement]);

            if (FileSystem.isDirectory(subPath)) {
                subdirPathes.push(subPath);
            } else {
                fileNames.push(subElement);
            }
        }

        visit(arg, path, fileNames);

        for (subdirPath in subdirPathes) {
            _visitFolder(subdirPath, visit, arg);
        }

    }

    static public function walk (path:String, visit:Dynamic, arg:Dynamic) {
        if (Reflect.isFunction(visit)) {
            _visitFolder(path, visit, arg);
        }
    }

    static public function commonprefix (list) {
        // Not implemented yet
    }

    static public function lexists (path) {
        // Not implemented yet
    }

    static public function expandvars (path) {
        // Not implemented yet
    }

    static public function getatime (path) {
        // Not implemented yet
    }

    static public function getmtime (path) {
        // Not implemented yet
    }

    static public function getctime (path) {
        // Not implemented yet
    }

    static public function getsize (path) {
        // Not implemented yet
    }

    static public function isabs (path) {
        // Not implemented yet
    }

    static public function isfile (path) {
        // Not implemented yet
    }

    static public function isdir (path) {
        // Not implemented yet
    }

    static public function islink (path) {
        // Not implemented yet
    }

    static public function ismount (path) {
        // Not implemented yet
    }

    static public function normcase (path) {
        // Not implemented yet
    }

    static public function normpath (path) {
        // Not implemented yet
    }

    static public function realpath (path) {
        // Not implemented yet
    }

    static public function relpath (path, start) {
        // Not implemented yet
    }

    static public function samefile (path1, path2) {
        // Not implemented yet
    }

    static public function sameopenfile (fp1, fp2) {
        // Not implemented yet
    }

    static public function samestat (stat1, stat2) {
        // Not implemented yet
    }

    static public function splitdrive (path) {
        // Not implemented yet
    }

    static public function splitunc (path) {
        // Not implemented yet
    }
}