# Syllable Segmentation for the Yakut Language

This project entails developing a rule-based transducer aimed at segmenting Yakut word forms into syllables. The transducer takes a lower-cased word form as input and generates the same word form with special symbols inserted as boundaries between syllables.


For instance, given the input <i>сахалар</i>, the transducer will output:

```
са##ха##лар
```

The transducer checks for:

- not allowed characters;
- not allowed starting consonants;
- not allowed ending consonants;
- not allowed consonant clusters;
- vowel harmony violations.

Only word forms that successfully pass all these checks are accepted and returned as output.

The transducer implements the specifications for Yakut word forms as outlined in Ubryatova E.I. et al.'s "Grammatika sovremennogo yakutskogo literaturnogo yazyka" (Volume 1: Fonetika i morfologiya, Nauka, 1982).


It's worth noting that the boundary markers used for segmentation can be customized within the source code to suit specific preferences or requirements.


## Installation

To use the transducer, you'll need to install SFST. For information on SFST and installation instructions, please visit:

https://www.cis.uni-muenchen.de/~schmid/tools/SFST/

Additionally, you can explore these Python libraries offering bindings for the Stuttgart Finite State Transducer:

https://pypi.org/project/sfst-transduce/

https://pypi.org/project/sfst/

## Execution

To execute the transducer, use the command 'fst-mor', followed by the name of the compiled transducer file:

```
fst-mor syllabification.a
```

To recompile the transducer, navigate to the 'src' directory and use the 'fst-compiler-utf8' command followed by the file name 'ymv.fst' (which includes the rest of the files) and a name for the new transducer:

```
fst-compiler-utf8 syllabification.fst syllabification.a
```



