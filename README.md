# grl
Simple command-line Greek lexicon for Biblical (Koine) Greek.

## Installation
> Dependencies: `python3`, `python-pip` and `git`, Install them with `apt`, `pacman` or any toher package manager.

```sh
git clone https://github.com/joonatanjak/grl.git
cd grl
sudo make install
```

Use `sudo make uninstall` to uninstall.
## Usage
```
usage: grl [options] <word>

Look up the Strong's lexicon of a koine greek word.
Options:
 -n, --number               Display the Strong's number.
 -u, --unicode              Display the word in unicode.
 -t, --transliteration      Display the transliteration.
 -p, --pronunciation        Display the pronunciation.
 -s, --strongs-definition   Display the Strong's definiton.
 -k, --kjv-definition       Display the KJV definition.

 -S, --strict               Output only, if the word has an exact match, otherwise exit(1).
 -q, --quiet                Only display the attributes. Each attribute will be seperated with a tab.
                            The order of each attribute is number, unicode, transliteration, pronunciation, strongs-definition, kjv-definition.
 -d, --default              Select the first similiar word without asking anything.
 -h, --help                 Show this message

When no options are supplied the program will output the Strong's number, unicode, pronunciation and KJV definition.
Examples:
    Look up "Θεός"
        grl Θεός
    Only output the Strong's definition of παρακοῆς
        grl -s παρακοῆς
    You can find some words using the rough transliteraion of it
        grl agape
```

## Known bugs
* References to Greek words from definitions are empty.

## Credits
Strong's Exhaustive Concordance by James Strong, 1890. XML by [Ulrik Sandborg-Petersen](http://ulrikp.org). Public Domain
