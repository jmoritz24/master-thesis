# MacTeX Biber uses lipo to start its native executable.
# Prefer the standalone Apple tools for Biber on this system.
if ($^O eq 'darwin' &&
    !defined $ENV{'DEVELOPER_DIR'} &&
    -x '/Library/Developer/CommandLineTools/usr/bin/lipo') {
    $biber = 'env DEVELOPER_DIR=/Library/Developer/CommandLineTools ' . $biber;
}
