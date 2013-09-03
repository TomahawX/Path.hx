package path;

class Path {

    static private var sep:String = '/';

    static public function abspath (path) {
        return sys.fullPath(path);
    }

    static public function exists (path:String):Bool {
        return sys.FileSystem.exists(path);
    }

    static public function join (parts:Array<String>) {
        return parts.join(sep);
    }

    static public function split (path):Array<String> {
        var pattern = ~/^([^\/\\]*)\/([^\/\\]*)$/;
        pattern.match(path);
        return [pattern.matched(1), pattern.matched(2)]
    }

    static public function basename (path) {
        // Not implemented yet
    }

    static public function commonprefix (list) {
        // Not implemented yet
    }

    static public function dirname (path) {
        // Not implemented yet
    }

    static public function lexists (path) {
        // Not implemented yet
    }

    static public function expanduser (path) {
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

    static public function splitext (path) {
        // Not implemented yet
    }

    static public function splitunc (path) {
        // Not implemented yet
    }

    static public function walk (path, visit, arg) {
        // Not implemented yet
    }
}