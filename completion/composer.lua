  --help           -h Display this help message.
  --quiet          -q Do not output any message.
  --verbose        -v|vv|vvv Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
  --version        -V Display this application version.
  --ansi              Force ANSI output.
  --no-ansi           Disable ANSI output.
  --no-interaction -n Do not ask any interactive question.
  --profile           Display timing and memory usage information
  --working-dir    -d If specified, use the given directory as working directory.

about            Short information about Composer
archive          Create an archive of this composer package
config           Set config options
	--global (-g): Operate on the global config file located at $COMPOSER_HOME/config.json by default. Without this option, this command affects the local composer.json file or a file specified by --file.
	--editor (-e): Open the local composer.json file using in a text editor as defined by the EDITOR env variable. With the --global option, this opens the global config file.
	--unset: Remove the configuration element named by setting-key.
	--list (-l): Show the list of current config variables. With the --global option this lists the global configuration only.
	--file="..." (-f): Operate on a specific file instead of composer.json. Note that this cannot be used in conjunction with the --global option.
create-project   Create new project from a package into given directory.
	--repository-url: Provide a custom repository to search for the package, which will be used instead of packagist. Can be either an HTTP URL pointing to a composer repository, or a path to a local packages.json file.
	--stability (-s): Minimum stability of package. Defaults to stable.
	--prefer-source: Install packages from source when available.
	--prefer-dist: Install packages from dist when available.
	--dev: Install packages listed in require-dev.
	--no-install: Disables installation of the vendors.
	--no-plugins: Disables plugins.
	--no-scripts: Disables the execution of the scripts defined in the root package.
	--no-progress: Removes the progress display that can mess with some terminals or scripts which don't handle backspace characters.
	--keep-vcs: Skip the deletion of the VCS metadata for the created project. This is mostly useful if you run the command in non-interactive mode.
depends          Shows which packages depend on the given package
	--link-type: The link types to match on, can be specified multiple times.
diagnose         Diagnoses the system to identify common errors.
dump-autoload    Dumps the autoloader
	--optimize (-o): Convert PSR-0 autoloading to classmap to get a faster autoloader. This is recommended especially for production, but can take a bit of time to run so it is currently not done by default.
global           Allows running commands in the global composer dir ($COMPOSER_HOME).
help             Displays help for a command
 --xml                 To output help as XML
 --format              To output help in other formats
 --raw                 To output raw command help
 --help (-h)           Display this help message.
 --quiet (-q)          Do not output any message.
 --verbose (-v|vv|vvv) Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
 --version (-V)        Display this application version.
 --ansi                Force ANSI output.
 --no-ansi             Disable ANSI output.
 --no-interaction (-n) Do not ask any interactive question.
 --profile             Display timing and memory usage information
 --working-dir (-d)    If specified, use the given directory as working directory.
init             Creates a basic composer.json file in current directory.
	--name: Name of the package.
	--description: Description of the package.
	--author: Author name of the package.
	--homepage: Homepage of the package.
	--require: Package to require with a version constraint. Should be in format foo/bar:1.0.0.
	--require-dev: Development requirements, see --require.
	--stability (-s): Value for the minimum-stability field.
install          Installs the project dependencies from the composer.lock file if present, or falls back on the composer.json.
	--prefer-source: There are two ways of downloading a package: source and dist. For stable versions composer will use the dist by default. The source is a version control repository. If --prefer-source is enabled, composer will install from source if there is one. This is useful if you want to make a bugfix to a project and get a local git clone of the dependency directly.
	--prefer-dist: Reverse of --prefer-source, composer will install from dist if possible. This can speed up installs substantially on build servers and other use cases where you typically do not run updates of the vendors. It is also a way to circumvent problems with git if you do not have a proper setup.
	--dry-run: If you want to run through an installation without actually installing a package, you can use --dry-run. This will simulate the installation and show you what would happen.
	--dev: Install packages listed in require-dev (this is the default behavior).
	--no-dev: Skip installing packages listed in require-dev.
	--no-scripts: Skips execution of scripts defined in composer.json.
	--no-plugins: Disables plugins.
	--no-progress: Removes the progress display that can mess with some terminals or scripts which don't handle backspace characters.
	--optimize-autoloader (-o): Convert PSR-0 autoloading to classmap to get a faster autoloader. This is recommended especially for production, but can take a bit of time to run so it is currently not done by default.

licenses         Show information about licenses of dependencies
list             Lists commands
	--xml      To output list as XML
	--raw      To output raw command list
	--format   To output list in other formats
require          Adds required packages to your composer.json and installs them
	--prefer-source: Install packages from source when available.
	--prefer-dist: Install packages from dist when available.
	--dev: Add packages to require-dev.
	--no-update: Disables the automatic update of the dependencies.
	--no-progress: Removes the progress display that can mess with some terminals or scripts which don't handle backspace characters.
run-script       Run the scripts defined in composer.json.
search           Search for packages
	--only-name (-N): Search only in name.
self-update      Updates composer.phar to the latest version.
show             Show information about packages
	--installed (-i): List the packages that are installed.
	--platform (-p): List only platform packages (php & extensions).
	--self (-s): List the root package info.
status           Show a list of locally modified packages
update           Updates your dependencies to the latest version according to composer.json, and updates the composer.lock file.
	--prefer-source: Install packages from source when available.
	--prefer-dist: Install packages from dist when available.
	--dry-run: Simulate the command without actually doing anything.
	--dev: Install packages listed in require-dev (this is the default behavior).
	--no-dev: Skip installing packages listed in require-dev.
	--no-scripts: Skips execution of scripts defined in composer.json.
	--no-plugins: Disables plugins.
	--no-progress: Removes the progress display that can mess with some terminals or scripts which don't handle backspace characters.
	--optimize-autoloader (-o): Convert PSR-0 autoloading to classmap to get a faster autoloader. This is recommended especially for production, but can take a bit of time to run so it is currently not done by default.
	--lock: Only updates the lock file hash to suppress warning about the lock file being out of date.
	--with-dependencies Add also all dependencies of whitelisted packages to the whitelist. So all packages with their dependencies are updated recursively.
validate         Validates a composer.json
