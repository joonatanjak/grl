# grl
Simple command-line Greek lexicon for Biblical (Koine) Greek.

# Usage
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
    Only output the KJV definition of παρακοῆς
        grl -k παρακοῆς
    You can find some words using the rough transliteraion of it
        grl agape

