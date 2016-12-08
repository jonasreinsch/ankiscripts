#!/bin/bash

# This script copies '˸˸' (two times the
# MODIFIER LETTER RAISED COLON) to the Mac OS pasteboard so
# that you can use it in Anki.

echo -n ˸˸ | pbcopy
echo copied ˸˸ to the pasteboard, use C-v to paste.

# In Anki, a sequence of two colons (::) is used as a special character sequence
# for cloze deletions. If you need a double colon inside
# a cloze deletion - e.g. for Perl Modules like Lingua::EN::Inflexion,
# you could write that instead as Lingua˸˸EN˸˸Inflexion, i.e. by
# using the similar looking Unicode character '˸'.

# Btw., if you want to know which character that is, you can use
# Perl's ord function to get the codepoint (760) and then
# translate to the Unicode name with charnames::viacode:

# $ perl -E'use utf8; use charnames (); say charnames::viacode ord "˸"'
# MODIFIER LETTER RAISED COLON
