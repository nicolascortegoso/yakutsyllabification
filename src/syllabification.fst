%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%  Author:          Cortegoso-Vissio, Nicolas; Zakharov, Victor Pavlovich
%  University:      SPBGU, Saint-Petersburg State University
%  Department:      Mathematical linguistics
%  Title:           Syllabication transducer for Yakut language
%  Last review:     28/03/2024

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% The transducer takes a Yakut word form as input and divides it into their constituent syllables. It checks for:
% - not allowed starting consonants;
% - not allowed ending consonants;
% - not allowed consonant clusters;
% - vowel harmony violations.
% The input word form is only accepted (output back) if it passes all the specified checks.




% 1. ALPHABET DEFINITION -----------------------------------------------------------------------------------------------

#vocals# = аыоуеэиөү
#consonants# = пткбдгсхһҕмнҥлрйчь

#alphabet# = #vocals# #consonants#



% 2. SYLLABLES ---------------------------------------------------------------------------------------------------------

#include "boundaries.fst"

% Below it is possible to modify the boundaries between syllables in analysis mode.
% The symbol <> can be optionally be replaced by \▁ to mark initial tokens like in the SentencePiece algorithm.

$mono$   = (<>:<s>                [#alphabet#]+ <>:<e>)                  || "syllables.lex"
$start$  = (<>:<s>                [#alphabet#]+ \#:[#boundaries#])       || "syllables.lex"
$middle$ = (\#:[#boundaries#]     [#alphabet#]+ \#:[#boundaries#])       || "syllables.lex"
$end$    = (\#:[#boundaries#]     [#alphabet#]+ <>:<e>)                  || "syllables.lex"



% 3. SYLLABLE CONCATENATION --------------------------------------------------------------------------------------------

% A filter to rule-out non valid concatenation between syllables.

$=C1$ = [<s> <e> #boundaries#]
$joint$ = $=C1$ $=C1$
$concatenation-filter$ = ($joint$ [#alphabet#]+)* $joint$


% The transducer recognize monosyllabic or polysyllabic word forms.
% A polysyllabic word form is defined as the concatenation of an starting syllable and a final syllable with zero or
% more syllables in between.


$wordform$ = <>:<s> ($mono$ | $start$ ($middle$)* ($end$)) <>:<e> || $concatenation-filter$



% 4. MARKER DELETION ---------------------------------------------------------------------------------------------------

ALPHABET = [#alphabet#] [<s> <e> #boundaries#]:<>
$delete-boundaries$ = .*

$wordform$ || $delete-boundaries$
