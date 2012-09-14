# Linguistic Potluck: Crowdsourcing Localization in Rails
## Heather Rivers

## Introduction
Bridge gap between computers language and ours

## Definitions

locales
i18n 
localization or l10n
token
  placeholder in a string
  hardest part of i18n
  should always store the highest level translation of text (store meanings)
  let your users help with translation

## How do we store rules? Localization is hard.

People will only fall in love with your app until they're able to make
decisions in their native lanuage. With a secondary language, they
aren't as emotionally involved.

## Parallel Benefits

1. Design good software through separation of concerns

Storage > Selection > Transformation > Presentation
i18n enforces separating these concerns
(see slides for complete details on separation)

Only intent is stored in template!

2. Simple UI

Localizations increases cost of every word
Well placed, widely understood symbol is awesome

3. Encourages you to ditch images for Semantic Markup and CSS

4. Forces flexible page layout to support different sizes and shapes of
   content

5. Make you very sure of your encodings

Content-Types consistent
MOJIBAKE will result it means "a terrible thing" (encoding error)

## Get list of target languages

* HTTP Headers
* Google Analyitics

## Linguistics

morpheme - smallest chunk of a language which means something
cat has one morpheme

I saw the cats running away
6 words, 9 morphemes
(see slides)

### Agreement
Ratio can be calculated for any language from Analytic to Synthetic

Analytic is typically 1 to 1 ratio

Synthetic is typically much higher like 2 to 9
  a word in this language is a whole phrase in another language

Ratio predicts how much agreement there is in languages

Agreement is very WET
Synthetic is very DRY

Agreement categories
 1. Pluralization
    2 cases for numbers in English
    Tons in Arabic
 2. Gender

## Plan of attach for implementing i18n

Machine, Crowdsourcing or Professional Translators

### Machine
Client-side solution from Google
Users have the ability to edit, approve and reject translations
(see slides for path through storage > selection > transformation >
presentation)

PROS: relying on 3rd party API and bad user experience

### Self-hosted
Storage is our boxes

Selection establish locale in path

Transformation apply stored rules to data in request

Presentation render result

#### In Rails
I18n.translate
I18n.localize
I18n.transliterate
i18n activerecord gem
globalize3 gem
tr8n (pronounced tron, used by Yammer)

YAML sucks, so store translations into persistent key/value store
Heavily cache translations!

### Croudsourcing
PROS: almost free, progressive enhancement and totally self monitoring

### Professional Translators

CONS: Delays so make everything as automatic as possible
PROS: Good for landing page copy

Turn around time can be reduced by using 3rd parties such as Gengo
http://gengo.com/
5 to 15 cents a word

#### Gengo
ReST API
Ruby client










