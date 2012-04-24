**Presenter:** Cameron Dutro (@camertron)

## Bio

> Cameron Dutro has worked for Twitter's International Team for about a year and a half, helping build and maintain the Translation Center, Twitter's crowdsourced translation platform.  Although he only started using Ruby and Rails a few years ago, he's a big fan of their extendibility and elegance.  Cameron is also the author of the [twitter_cldr](http://github.com/twitter/twitter-cldr-rb) gem, an attempt to bring JDK-level internationalization capabilities to the Ruby community.

## Abstract

> Twitter's internationalization (i18n) and localization (l10n) model doesn't follow traditional methods.  Instead of contracting out to professional translators, Twitter maintains an active community of over 500,000 volunteers who have helped successfully launch Twitter in 28 languages, including right-to-left languages like Hebrew and Arabic.  Learn about some of the technical challenges we face, how to translate a Rails application at scale, and what to do when the i18n gem and po files aren't quite enough.  We'll take a look at the tricky stuff too, like dates, times, lists, plurals, alphabetization, and capitalization using the twitter_cldr gem, and go over internationalization best practices.  Finally, we'll explain how to maintain internationalization of your Javascript alongside your Rails code for an end-to-end solution.

## Notes

### Introduction

**Localization**: Translating text.  Abbreviated L10n.<br/>
**Internationalization**: Dates, times, plurals, capitalization, sorting, searching, etc.  In short, everything else.  Abbreviated i18n.<br/>
**Globalization**: The umbrella term for both i18n and L10n.

### The Rails Way

i18n gem
* `t()` function
* multiple backends
* gettext compatible
* slow
* Ruby-only

.yml / .po files
* compact
* machine-readable
* not inline
* inconvenient
* not web-friendly (i.e. not JavaScript friendly)

#### Here's an example setup:

config/locales/en.yml:
```
my:
  fancy:
    message: Hello
```

config/locales/es.yml:
```
my:
  fancy:
    message: Hola
```

Ruby example:
```ruby
t("my.fancy.message")
```

### Twitter's Approach

Translation Center / .json interchange format
* full localization solution
* crowdsourced
* platform independent

#### Translation Center Statistics

* 550,000 volunteers
* 16,000 active (English) phrases
* 1,450,000 translations
* 300,000 approved translations

#### Translation Center Capabilities

* enables engineers to import new phrases
* provides a way to organize English phrases into logical groups
* centralizes translation via the community
* allows for moderation of strings by a few hand-selected translators that have elevated moderator privileges
* supports exporting translations into several formats, including .strings for iOS and .xml for Android

#### Providing Context for Phrases

* comments attached to each phrase
* automatically captured screenshots highlighting each English phrase on the page
* the translation-hint directive in mustache
* inline translation (not currently implemented, future project)

#### Incentives

* reputation system keeps track of translator "karma" and phrase "maturity" instead of just translation quantity
* translator badge awarded and shown on translator's twitter.com profile
* moderator privileges

### Technical Stuff

fast_gettext gem (instead of i18n gem)
* `_()` function instead of `t()`
* multiple backends
* gettext compatible
* faster than i18n / gettext
* inline
* ruby only

JavaScript equivalent
* `_()` function
* uses hash from JSON dump from Translation Center
* fast
* inline

The JS equivalent for `_()` is very simple.  Here's what we do:

```javascript
var twttr = { i18n: { ... } };

function _(key) {
  return twttr.i18n[key] || key;
}
```

Mustache equivalent
* patched the existing mustache gem to support `{{_i}}{{/i}}` tags to encapsulate localizable text
* logic-less views (no Ruby evals)
* language independent

#### Code examples

ERB:
```ruby
<%= _("Hello, world") %>
```

JavaScript:
```javascript
function() {
  return _("Hello, world");
}
```

Mustache:
```html
<p>
  {{_i}}Hello, world{{/i}}
</p>
```

#### Release process

* extract embedded strings using static analysis tools, convert to JS bundle
* import bundle into Translation Center, duplicates automatically removed
* export one JSON bundle per language from the Translation Center
* use the JSON dump and fast_gettext on the server-side, just the JSON on the client side

Problem: translation bundles are too large to send to the client - sometimes upwards of 500kb.  What now?

#### Release process, take two

* export JSON from the Translation Center
* use static analysis tools to bake translations directly into mustache templates and JavaScript files, generate a mustache/js bundle for each language
* Ruby still renders server side

Import / translate / export process mostly the same for mobile platforms (Android, iOS), but .xml and .strings formats are supported and used instead of JSON.

Supported formats:
* iOS .strings, UTF-16
* Android .xml, UTF-8
* Twitter.com, .json, UTF-8
* Standard Rails .yml, UTF-8 (eg. mobile.twitter.com)

### Internationalizing Your App

You'll have to consider all these things:
* dates / times
* numbers
* sorting
* URLs
* currencies
* language names
* countries
* units of measure
* character encodings
* captcha
* pluralization
* tokenization
* stemming
* addresses
* phone numbers
* cultural cues
* abbreviations
* text direction
* colors

#### Best practices

* budget enough time and resources
* integrate into release process
* remain culturally neutral
* think globally
* embed strings in source code*
* avoid text in images
* leave enough room (65% rule)
* leave sentences intact
* use unicode, pick one encoding (UTF-8)
* use appropriate fonts
* keep it (really) simple
* consider scalability concerns
* use Ruby 1.9

*only if it makes sense for your app

#### JDK examples

Java has GREAT internationalization functionality built right in.

Dates and Times:

```java
String locale = "fr_FR";
Date today = new Date();
DateFormat dateFormatter = DateFormat.getDateInstance(DateFormat.DEFAULT, locale);
String dateOut = dateFormatter.format(today);

System.out.println(dateOut);  // 16 juin 2012
```

Numbers:

```java
String locale = "de_DE";
Integer quantity = new Integer(123456);
Double amount = new Double(345987.246);
NumberFormat numberFormatter = NumberFormat.getNumberInstance(locale);
String quantityOut = numberFormatter.format(quantity);
String amountOut = numberFormatter.format(amount);

System.out.println(quantityOut);  // 123.456
System.out.println(amountOut);    // 345.987,246
```

Collation (sorting)

```java
List list = new ArrayList<String>(new String[6] { "first", "mañana", "man", "many", 
                                                  "maxi",  "next" });
Collections.sort(list);

System.out.println(joinList(list));  // first, man, many, maxi, mañana, next

Collator esCollator = Collator.getInstance(new Locale("es_MX"));
Collections.sort(list, esCollator);

System.out.println(joinList(list));  // first, man, many, mañana, maxi, next
```

Note: for some reason, Chrome can't display the "n" with the tilde accent, at least on my machine :)

Why doesn't Ruby have support for these things?

### Introducing [TwitterCLDR](http://github.com/twitter/twitter-cldr-rb)

CLDR = Common Locale Data Repository, published by the Unicode Consortium

What does/will TwitterCLDR support?
* dates / times
* numbers
* sorting
* currencies
* language names
* countries
* units of measure
* abbreviations
* pluralization

What extra goodies might TwitterCLDR support in the slightly more distant future?
* addresses
* phone numbers

What is outside the scope of the TwitterCLDR project?
* tokenization
* stemming
* cultural cues
* character encoding
* text direction
* colors
* URLs
* captcha

#### Using TwitterCLDR

Dates and Times:

```ruby
# 21:46:09 24/04/2012
DateTime.now.localize(:es).to_s

# 21:46:09 UTC -0700 2012. április 24., szerda
DateTime.now.localize(:hu).to_full_s

# 21時46分09秒 UTC -07002012年4月24日水曜日
DateTime.now.localize(:ja).to_full_s

dt = TwitterCldr::LocalizedDateTime.new(DateTime.now, :es)
dt.to_s  # 21:46:09 24/04/2012
```
Note: your browser or Github may be messing with the encoding for this text, so you may not be able to see the Japanese example here.

Numbers:

```ruby
# 1.337
1337.localize(:es).to_s

# 1.337,000
1337.localize(:es).to_s(:precision => 3)

num = TwitterCldr::LocalizedNumber.new(1337, :es)
num.to_s(:precision => 3)  # 1.337,000
```

Currencies:

```ruby
# € 1.337,00
1337.localize(:es).to_currency.to_s(:currency => "EUR")

# S/. 1.337,00
1337.localize(:es).to_currency.to_s(:currency => "Peru")
1337.localize(:es).to_currency.to_s(:currency => "PEN")

# {:code=>"PEN", :currency=>"Nuevo Sol", :symbol=>"S/."}
TwitterCldr::Shared::Currencies.for_country("Peru")

# {:currency=>"Nuevo Sol", :symbol=>"S/.", :country=>"Peru"}
TwitterCldr::Shared::Currencies.for_code("PEN")
```
Note: your browser or Github may be messing with the encoding for this text, so you may not be able to see the Euro symbol here.

Plurals:

```ruby
str = _("there %{horse_count:horses} in the barn").localize
str % { :horse_count => 3,
        :horses => { :one => _("is one horse"),
                     :other => _("are %{horse_count} horses") } }

str = _("есть %{horse_count:horses} в сарае").localize
str % { :horse_count => 3,
        :horses => { :one => _("одна лошадь"),
                     :few => _("%{horse_count} лошади"),
                     :other => _("%{horse_count} лошадей") } }
```
Note: your browser or Github may be messing with the encoding for this text, so you may not be able to see the Russian text here.

Alternative Plural Syntax:

```ruby
str = _('there %<{"horse_count": {"one": "is one horse", "other": "are %{horse_count} horses"}}> in the barn').localize

str % { :horse_count => 3 }  # there are 3 horses in the barn

str = _('есть %<{"horse_count": {"one": "одна лошадь", "few":
"%{horse_count} лошади", "other": "%{horse_count} лошадей"}}> в сарае').localize

str % { :horse_count => 3 }  # есть 3 лошади в сарае
```
Note: your browser or Github may be messing with the encoding for this text, so you may not be able to see the Russian text here.

For more detailed usage notes for the gem, see the link to Github below.

#### Future plans

* normalization
* collation (sorting)
* capitalization
* abbreviations
* quoting
* javascript version

#### Special thanks:

* svenfuchs, for the ruby-cldr gem
* blackwinter, for the unicode gem
* xing, for the icu4r gem

(See links below)

### #StoryTime

* Chinese: Translators had difficulty choosing which version of the word "you" they wanted.
* Indonesian: SMS commands. `follow @user` and `unfollow @user` can also be translated as `live @user` and `kill @user` - not very friendly.
* German: Whereas in English we might say "delicious cheese rolled in herbs" (which at least has spaces), German might have: "Oberammergaueralpenkräuterdelikatessenfrühstückskäse"
* German: Another humorous translation.  English: "Rank Insignia on a River Captain’s Hat".  German: "Oberweserdampfschiffahrtsgesellschaftskapitänsmützenaufschriftsunterseite".
* Farsi: One of our Iranian moderators put him/herself at risk by helping us translate twitter.com into Farsi.
* Italian: The logged out homepage used to say, "Follow your interests".  In Italian, the literal translation for "follow" can also mean "stalk", so they ended up translating "Follow your interests" as "Succumb to your urges" instead.

Fin!

## External Links

* [Twitter Translation Center](http://translate.twttr.com/)
* [TwitterCLDR gem](http://github.com/twitter/twitter-cldr-rb)
* [Mustache specification](http://mustache.github.com/), [Mustache gem](https://github.com/defunkt/mustache)
* [Unicode's Common Locale Data Repository](http://cldr.unicode.org/)
* [svenfuch's ruby-cldr gem](https://github.com/svenfuchs/ruby-cldr)
* [blackwinter's unicode gem](https://github.com/blackwinter/unicode)
* [xing's icu4r gem](https://github.com/xing/icu4r)
* Just for fun, [Twitter.com in Arabic](http://twitter.com/?lang=ar).  Notice the layout is flipped for RTL languages :)