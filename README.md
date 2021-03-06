---
---

[iOS Font Maker](http://thehelpful.com/iosfonts/) is used to convert my favorite open fonts for iOS use.

# Usage #

On an iOS device, use Safari to open the links and it will warn you if you want to install it. (Feel free to take a look at the source code. Nothing harmful is done.)

# License #

The fonts included here are free to use. Read their respective license by following the links to their original website.

# Fonts #

The following fonts are downloaded and put in `/fonts/`:

- TeX Fonts:
	- [The Latin Modern (LM) Family of Fonts --- GUST](http://www.gust.org.pl/projects/e-foundry/latin-modern)
	- [Computer Modern Unicode fonts](http://cm-unicode.sourceforge.net/download.html)
- English Fonts:
	- [Charter --- Butterick’s Practical Typography](http://practicaltypography.com/charter.html)  
	- [ickc/et-book: A webfont of the typeface used in Edward Tufte’s books.](https://github.com/ickc/et-book)  
	- [mozilla/Fira: Mozilla's new typeface, used in Firefox OS](https://github.com/mozilla/Fira)
	- [adobe-fonts/source-code-pro: Monospaced font family for user interface and coding environments](https://github.com/adobe-fonts/source-code-pro)
- Chinese Fonts:
	- [Noto Sans CJK – Google Noto Fonts](https://www.google.com/get/noto/help/cjk/) [^NotoSans]
	- [SetoFont](http://en.justfont.com/fontdetail/147)

[^NotoSans]: Due to size constraints, the fonts is not put here. See [noto-cjk/NotoSans-region-otf at master · ickc/noto-cjk](https://github.com/ickc/noto-cjk/tree/master/NotoSans-region-otf).

## Todo ##

- English
	- [XCharter---extension of Charter](https://www.ctan.org/pkg/xcharter?lang=en)
- Chinese
	- [cwtex](https://github.com/l10n-tw/cwtex-q-fonts-TTFs)
	- [HanWang Zhuyin ruby fonts](http://www.fysh.tc.edu.tw/download/index.php?dir=font/王漢宗48套字型(free)/)
	- [Hanazono fonts](http://fonts.jp/hanazono/) is too big since the iOS mobile config has a file size limit.
- Hebrew
	- [Fonts for Scholars: the Cardo Font](http://scholarsfonts.net/cardofnt.html)
- Greek
	- [Download - Gentium](http://software.sil.org/gentium/download/)
	- [Download - Charis SIL](http://software.sil.org/charis/download/)
	- [Download - Doulos SIL](http://software.sil.org/doulos/download/)


# Mobile Config #

Open these links in Mobile Safari:

- TeX Fonts:
	- Latin Modern
		- [Latin Modern (full)](mobileconfig/lmodern-full.mobileconfig) [^lmodern-full]
		- [Latin Modern (10pt only)](mobileconfig/lmodern10.mobileconfig) [^lmodern10]
	- [Computer Modern Unicode](mobileconfig/cmunicode.mobileconfig)
- English Fonts:
	- [Charter](mobileconfig/charter.mobileconfig)
	- [ET-Books](mobileconfig/etbembo.mobileconfig)
	- Fira Sans
		- [Fira Sans (full)](mobileconfig/FiraSans-full.mobileconfig) [^FiraSans-full]
		- [Fira Sans (without "FiraSansCondensed" variants)](mobileconfig/FiraSans.mobileconfig) [^FiraSans]
	- [Source Code Pro](mobileconfig/SourceCodePro.mobileconfig)
- Chinese Fonts:
	- [Noto Sans TC](mobileconfig/NotoSansTC.mobileconfig) [^NotoSansTC]
	- [SetoFont](mobileconfig/SetoFont.mobileconfig)

[^lmodern-full]: Best for Word/Pages/etc on iOS when you want to choose the exact font variants. Cause problems when used in HTML in iOS, probably because of all the different font sizes.

[^lmodern10]: Best for HTML on iOS. Single font size variants only.

[^FiraSans-full]: cannot be installed on iOS: too big (17.5MB)

[^FiraSans]: all "FiraSansCondensed" variants are not included.

[^NotoSansTC]: only Noto Sans TC with normal and bold weights are included due to size constraints

# Tests #

Open these links to test if the fonts are loading properly:

- [Latin Modern](tests/test-lmodern.html)
- [Computer Modern Unicode](tests/test-cmunicode.html)
- [Charter](tests/test-charter.html)
- [ET-Books](tests/test-etbembo.html)
- [Fira Sans](tests/test-firasans.html)
- [Source Code Pro](tests/test-sourcecodepro.html)