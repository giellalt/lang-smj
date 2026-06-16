# Lemma-tests for *nouns* in ...`nouns.lexc`


## Lemma statistics
* 16251 lemmas
* 100.0 % success

## Settings used

```json
{
    "adjectives": {
        "lemmatags": [
            "+A+Sg+Nom"
        ],
        "lexcfile": ".../adjectives.lexc"
    },
    "analyser": ".../analyser-gt-norm.hfstol",
    "generator": ".../generator-gt-norm.hfstol",
    "nouns": {
        "exclusions": [
            "(ShCmp|RCmpnd|\u00c5LLAGASJ|CmpN/Only|Err/Der|Err/Lex|Use/MT|Use/-Spell|CmpNP/Suff|CmpNP/Pref|Err/Cmp)"
        ],
        "lemmatags": [
            "+N+Sg+Nom",
            "+N+Pl+Nom"
        ],
        "lexcfile": ".../nouns.lexc"
    },
    "propernouns": {
        "exclusions": [
            "(Use/-Spell)"
        ],
        "lemmatags": [
            "+N+Prop+Sg+Nom",
            "+N+Prop+Pl+Nom",
            "+N+Prop+Attr"
        ],
        "lexcfile": ".../smj-propernouns.lexc"
    },
    "verbs": {
        "exclusions": [
            "(\\+Neg|STRAYFORMS|\\+Use/MT|Err/Lex|ShCmp|RCmpnd|CmpN/Only|Err/Cmp)"
        ],
        "lemmatags": [
            "+V+Inf"
        ],
        "lexcfile": ".../verbs.lexc"
    }
}
```
