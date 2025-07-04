# Word Generator
This is a word generator. This takes all the letters of the english alphabet and uses it to generate words of the
desired length and to then generate the desired number of randomized words.
## How are vowels treated?
As a general rule of thumb, all vowels can be found placed side by side in the english language. The same cannot be said
about consonants I.E. `XZ`, `ZT`, `TX`, etc. Hence, vowels do not need restrictions on where they can be placed or how
they should follow or preceed one another. In fact, the vowels in a word only really need to be limited to 1 or 2 vowels
between consonants to make coherent sense. Exceptions do exist `beautiful` having 3 vowels between `b` and `t`.\
\
There are two exceptions that will be disallowed: `ae` is almost never seen. I say 'almost' due to `encyclopaedia`, 
`paediatric`, `anaemia`, `aesthetic`, etc. This exception is valid as this vowel pair is seldom used.\
\
The second exception is `uo` as it is **never** used in the english language. Go ahead, find a word with that vowel 
pair in it. You won't.
## How are consonants treated?
Generally speaking, all vowels can preceed and follow all other vowels. However, the same cannot be said for consonants. 
As a general rule of thumb, the basic sequences of vowels and consonants in the english language are `VC`, `CV`, `VCV`, 
and `VCCV`. However, mind `twelfths` `CCVCCCCC` and `abstain` `VCCCVVC`. These nuanced variations also known as "Ostrich Words" 
will be ignored.\
\
In reality, `VCCV` will be treated as `VC` followed by `CV`. As such, we are left with three `VCV`, `VC`, and `CV` which 
may not simplify the rules stated here. However, it will simplify inner workings of this script.\
\
Some consonant variations will be excempt from being generated. For instance, `ZX` and `XZ` aren't ever used in the english
language. `PJ` and `JP` are never seen (`JPEG` does not count as it's not a real word. Instead, it's an abbreviation of multiple words). 
There are many examples like these, however this was simply to name a few.