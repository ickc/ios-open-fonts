---
HTML Header:	<script type="text/x-mathjax-config">MathJax.Ajax.config.path.Contrib="https://cdn.mathjax.org/mathjax/contrib",MathJax.Hub.Register.StartupHook("TeX Jax Ready",function(){MathJax.Hub.Insert(MathJax.InputJax.TeX.Definitions.macros,{cancel:["Extension","cancel"],bcancel:["Extension","cancel"],xcancel:["Extension","cancel"],cancelto:["Extension","cancel"]})}),MathJax.Hub.Config({TeX:{equationNumbers:{autoNumber:"AMS"},extensions:["[Contrib]/physics/physics.js","[Contrib]/siunitx/siunitx.js"]}});</script><script type="text/javascript" src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_CHTML-full"></script>
CSS:	https://ickc.github.io/multimarkdown-latex-css/css/multimarkdown-latex-sourcecodepro.css
HTML Header Level:	1
LaTeX Header Level:	1
LaTeX Input:	mmd-article-header
LaTeX input:	mmd-natbib-plain
LaTeX Input:	mmd-load-physics-related
LaTeX Input:	mmd-load-tables-related
LaTeX Input:	mmd-load-pdfpages
LaTeX Input:	mmd-load-headings
thmd:	chapter
LaTeX Input:	mmd-load-amsthm
title:	Yet Another Markdown Cheatsheet
subtitle:	Including MarkDown, MultiMarkdown, pandoc, GFM and LaTeX Math Syntax by MathJax  
Keywords:	MarkDown, MultiMarkDown, LaTeX, pandoc, gfm  
Revision:	0.10
Language:	English
author:	Kolen Cheung
Email:	khcheung@berkeley.edu
Affiliation:	University of California, Berkeley
Copyright:	2016 Kolen Cheung  
 	All Rights Reserved.
LaTeX Mode:	memoir
LaTeX Input:	mmd-article-begin-doc
tocd:	5
secd:	5
LaTeX Input:	mmd-load-toc-setcounter
LaTeX Input:	mmd-load-toc
LaTeX Footer:	mmd-memoir-footer
---

<!-- \begin{comment} -->
<script type="text/javascript" src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_CHTML-full"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.1.0/styles/default.min.css"><script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.1.0/highlight.min.js"></script><script>hljs.initHighlightingOnLoad();</script>

# Contents
{:.no_toc}

* Will be replaced with the ToC, excluding the "Contents" header
{:toc}

{{TOC}}

<!-- \end{comment} -->


# Introduction #

[Examples][] shows explicit examples for different syntaxes. [Other Syntaxes][] show the syntaxes that can't be shown explicitly.

## Organization ##

- Header levels (except possibly the last header level): features in groups
- Last header level or a list: different syntaxes
- TaskPaper-styled tags to indicate in what favor of Markdown such syntax is supported
	- `@markdown`: supported by original markdown, hence understood to be supported by all variants of markdown
	- `@ghpages`: GitHub-Favored Markdown, built by kramdown with GFM option. i.e. GitHub Pages' GitHub-Favored Markdown
	- `@mmd`: MultiMarkdown 
	- `@pandoc`: pandoc-favored markdown
	- `@phpextra`: PHP Markdown Extra (inspired some syntax in pandoc and mmd and gfm, not exhaustively tested here)
- TaskPaper Tags
	- `@...(partial)`: partial supports only
	- `@...(+...)`: when the extension is used
	- `@pandoc(--...)`: when the command line argument is used
	- `@pandoc(parsed)`: not verbatim, but parsed

Note:

- You might see `<!-- \begin{comment} -->...<!-- \end{comment} -->`. This is for mmd to tex to pdf use only. Ignore this.

# Examples #

## Header

@markdown

See [Emphasis][] and [Other Syntaxes][] to see alternative Setext-style header styles @markdown

### Header *Containing* ***Styling*** and a [Link](Https://www.wikipedia.org/) ###

@markdown

### Header Containing Attributes {#identifier .class1 key=value1}

@pandoc @phpextra

### Header Unnumbered {-}

@pandoc

### Header Unnumbered 2 {.Unnumbered}

@pandoc

### Auto Cross Reference

- [Link to Header](#header) @pandoc @ghpages @mmd
- [Link to Header][Header] @pandoc @mmd
- [Header][] @mmd @pandoc
- [Header] @mmd @pandoc

### User defined reference [userdefinedreference]

- [userdefinedreference][] @mmd
- [Link to userdefinedreference](#userdefinedreference) @mmd @pandoc(+mmd_header_identifiers)
- [Link to "Header Containing Attributes"](#identifier) @pandoc
- [another-link] @pandoc

[another-link]: #identifier

### Deeper Levels of Headers ###

#### Header4

##### Header5 ########################

###### Header6 ######

## Backslash Escapes ##

\*testing\* @markdown

Emphasis
--------

- *italic* or _italic_ @markdown
- **bold** or __bold__ @markdown
- ***bold italic*** or ___bold italic___ @markdown
- ~~strikethrough~~ @pandoc
- <span style="font-variant:small-caps;">Small caps</span> @pandoc @markdown(html)



### CriticMarkup ###

Visually it looks like emphasis. Functionally it is much more, and called Critic Markup @mmd

<!-- \begin{comment} -->

- Deletions from the original text: This is {--is --}a test.
- Additions: This {++is ++}a test.
- Substitutions: This {~~isn't~>is~~} a test.
- Highlighting: This is a {==test==}.
- Comments: This is a test{>>What is it a test of?<<}.

<!-- \end{comment} -->

See more at [CriticMarkup---MultiMarkdown Documentation](http://fletcher.github.io/MultiMarkdown-5/criticmarkup.html).

## Horizontal Rules

@markdown

***

3 or more hyphens or asterisks

---

## Break ##

@markdown

No break
like this

Soft break  
like this

Hard break

like this

## Superscript & Subscript

- x^2 @mmd
- d~o @mmd
- x^a+b^ @mmd @pandoc
- x~y,z~ @mmd @pandoc
- P~a\ cat~ @pandoc

## Smarty Pants ##

@markdown(+smartypants) @pandoc(--smart) @ghpages

- "Example 1"
- 'Example 2'
- en--dash
- em---dash
- ellipsis...

@mmd

- ``Example 3''

## Abbreviations (PHP Markdown Extra) ##

@mmd @phpextra @pandoc(+abbreviations)

*[HTML]: HyperText Markup Language
*[W3C]:  World Wide Web Consortium
*[PANDOC]: Pandoc will simply ignore this if the extension is used. A graceful fallback.

Testing abbreviations: HTML, W3C (mouseover it to see)

## Lists

### Ordered Lists ###

@markdown

1. test
3. test
2. test

### Unordered Lists ###

@markdown

- test
* test
+ test

### Nested Lists ###

@markdown

* test
    * test
* test
    1. test
    2. test
        * test
	        1. test
	        2. test
    3. test
* test

Note about LaTeX output in mmd/pandoc:

- The Maximum nesting level of lists in LaTeX is 4. The quick hack is to mix itemize and enumerate alternatively to go beyond this.

### Cutoff a List ###

@markdown


1.  one
2.  two
3.  three

<!-- -->

1.  uno
2.  dos
3.  tres

<!-- -->

-   item one
-   item two

<!-- end of list -->

    { my code block }


### List Item in a Block ###

@markdown

  * First paragraph.

    Continued.

  * Second paragraph. With a code block, which must be indented
    eight spaces:

        { code }

### Fancy Lists ###

@pandoc

#. one
#. two
 9)  Ninth
10)  Tenth
11)  Eleventh
       i. `i`
      ii. `ii`
     iii. `iii`
(2) Two
(5) Three
1.  Four
*   Five

## Definition Lists

### Method 1 ###

@mmd @phpextra @pandoc @ghpages

Physics
: The Fundamental of Science
: Describe the Nature
: Make Prediction

### Method 2

@ghpages @pandoc @mmd

Term 1

:   Definition 1

Term 2 with *inline markup*

:   Definition 2

        { some code, part of Definition 2 }

    Third paragraph of definition 2.

## Numbered Example Lists ##

@pandoc

(@)  My first example will be numbered (1).
(@)  My second example will be numbered (2).

Explanation of examples.

(@)  My third example will be numbered (3).

(@good)  This is a good example.

As (@good) illustrates, ...

## Code

- `testing` @markdown
- `\[\ket{a}\]`{.latex} @pandoc

### Fenced Code Blocks

#### Method 1

@markdown

	test
	test
		test
		# test

#### Method 2

@markdown(partial:language-not-supported) @ghpages @pandoc @mmd

```tex
\nabla \times \mathbf{E} = - \frac{\partial \mathbf{B}}{\partial t}
```

#### Method 3 ####

@pandoc

~~~markdown
test
test
	test
	# test
~~~

~~~ {#mycode .markdown .numberLines startFrom="100"}
test
test
	test
	# test
~~~

## Block-quotes

@markdown

> #### Test
> 
> test
> 
> > test

> > test
> 
> * test

> * test

### Block-quotes Quoting Codes ###

@markdown

>     \newcommand...

## Line Blocks ##

@ghpages(partial) @pandoc

| The limerick packs laughs anatomical
| In space that is quite economical.
|    But the good ones I've seen
|    So seldom are clean
| And the clean ones so seldom are comical

| 200 Main St.
| Berkeley, CA 94718

## Tables

### Method 1

@ghpages @pandoc @mmd

| Right | Left | Default | Center |
|------:|:-----|---------|:------:|
|   12  |  12  |    12   |    12  |
|  123  |  123 |   123   |   123  |
|    1  |    1 |     1   |     1  |

: Notice how pandoc can have optional caption like this

### Method 2

@mmd

[Table Caption]
|            |        Grouping           ||
| Left align | Right align | Center align |
|:-----------|------------:|:------------:|
| This       |        This |     This     |
| column     |      column |    column    |
| will       |        will |     will     |
| be         |          be |      be      |
| left       |       right |    center    |
| aligned    |     aligned |   aligned    |  
| And a big grouping is like this	|||  

### Method 3 ###

@pandoc

  Right     Left     Center     Default
-------     ------ ----------   -------
     12     12        12            12
    123     123       123          123
      1     1          1             1

Table:  Demonstration of simple table syntax.

### Method 4 ###

@pandoc

-------------------------------------------------------------
 Centered   Default           Right Left
  Header    Aligned         Aligned Aligned
----------- ------- --------------- -------------------------
   First    row                12.0 Example of a row that
                                    spans multiple lines.

  Second    row                 5.0 Here's another one. Note
                                    the blank line between
                                    rows.
-------------------------------------------------------------

Table: Here's the caption. It, too, may span
multiple lines.

### Method 5 ###

@pandoc

: Sample grid table.

+---------------+---------------+--------------------+
| Fruit         | Price         | Advantages         |
+===============+===============+====================+
| Bananas       | $1.34         | - built-in wrapper |
|               |               | - bright color     |
+---------------+---------------+--------------------+
| Oranges       | $2.10         | - cures scurvy     |
|               |               | - tasty            |
+---------------+---------------+--------------------+  

### Method 6 ###

@ghpages

<!-- \begin{comment} -->

|-----------------+------------+-----------------+----------------|
| Default aligned |Left aligned| Center aligned  | Right aligned  |
|-----------------|:-----------|:---------------:|---------------:|
| First body part |Second cell | Third cell      | fourth cell    |
| Second line     |foo         | **strong**      | blah            |
| Third line      |blah        | blah             | bar            |
|-----------------+------------+-----------------+----------------|
| Second body     |            |                 |                |
| 2 line          |            |                 |                |
|=================+============+=================+================|
| Footer row      |            |                 |                |
|-----------------+------------+-----------------+----------------|  

<!-- \end{comment} -->

See [Syntax | kramdown](http://kramdown.gettalong.org/syntax.html#tables)  

## Links

- https://www.wikipedia.org @pandoc(+autolink_bare_uris)
- <https://www.wikipedia.org> @markdown
- [Wikipedia.org](https://www.wikipedia.org) @markdown
- [Wikipedia.org](https://www.wikipedia.org "a title") @markdown
- [Mail to GitHub](mailto:support@github.com) @markdown

### Reference Links

- [Search here][Google] @markdown
- A [link][] with attributes. @mmd
- [Another link to the link above][link]. @mmd
- A [link1][] with attributes. @markdown
- [Another link][link2]. @markdown
- [link3]. @markdown

[Google]: https://www.google.com
[link]:  image.png "Title" class=external
         style="border: solid black 1px;"

[link1]: /foo/bar.html  "My title, optional"
[link2]: http://fsf.org (The free software foundation)
[link3]: /bar#special  'A title in single quotes'

## Footnotes ##

- Footnotes [^This is a mmd inline footnote] @mmd
- Footnotes ^[This is a pandoc inline footnote] @pandoc

### Reference Footnotes ###

- Footnotes[^whatever] @markdown
- Long Footnotes [^longnote] @pandoc @ghpages @mmd

[^whatever]: This is a footnote

[^longnote]: Here's one with multiple blocks.

    Subsequent paragraphs are indented to show that they
belong to the previous footnote.

        { some.code }

    The whole paragraph can be indented, or just the first
    line.  In this way, multi-paragraph footnotes work like
    multi-paragraph list items.

This paragraph won't be part of the note, because it
isn't indented.

### Glossaries ###

A special kind of footnote [^glossaryfootnote]. @mmd

[^glossaryfootnote]: glossary: term (optional sort key)
    The actual definition belongs on a new line, and can continue on
    just as other footnotes. Note how it fallbacks gracefully in Markdown.

See more at [Glossary---MultiMarkdown Documentation](http://fletcher.github.io/MultiMarkdown-5/glossary.html).

### Citations ###

It can looks like footnotes in HTML output.

#### MultiMarkdown ####

@mmd

- This is a statement that should be attributed to its source [p. 23][#Doe:2006].

[Not cited][#notcited]

[#Doe:2006]: John Doe. *Some Big Fancy Book*.  Vanity Press, 2006.    
[#notcited]:  John Doe. *Another Big Fancy Book*.  Vanity Press, 2016.    

See more at [Citations---MultiMarkdown Documentation](http://fletcher.github.io/MultiMarkdown-5/citations.html).

#### Pandoc ####

@pandoc

Very powerful but complicated. See more at [Citations---Pandoc Documentation](http://pandoc.org/README.html#citations).

## Images

- ![Alt Text](image.png "Optional Title") @markdown

### Reference Images

- ![Alt Text][imageid] @markdown
- ![An Image with Attributes][wikipedia] @mmd @pandoc(+mmd_link_attributes)
- ![An Image with Attributes](image.png){#id .class width=30 height=20px} @pandoc @phpextra(partial)
- a reference ![image][ref] with attributes. @pandoc @phpextra(partial)


[imageid]: image.png "Optional Title"

[wikipedia]: image.png "Title of the Image" width=40px height=40px

[ref]: image.png "optional title" {#id .class key=val key2="val 2"}

### Image with Links by Nesting Image and Link ###

- [![Image Link](image.png)](https://www.wikipedia.org/) @markdown

### Block Level Images ###

- Block level: HTML `figure` element in MultiMarkdown @mmd @pandoc

![***Block*** **Level**](image.png "Optional Title")

![***Not*** Block **Level**](image.png "Optional Title")\

## RAW ##

### HTML ###

- <div>This should *not* be markdown (or is it?) </div> @markdown
- <div markdown=1>This *is* markdown</div> @mmd @pandoc(+markdown_attribute)

See more at [Raw---MultiMarkdown Documentation](http://fletcher.github.io/MultiMarkdown-5/raw.html). See test in [Babelmark 2 - Compare markdown implementations](http://johnmacfarlane.net/babelmark2/?normalize=1&text=%3Cdiv%3EThis+should+*not*+be+markdown+(or+is+it%3F%29+%3C%2Fdiv%3E%0A%3Cdiv+markdown%3D1%3EThis+*is*+markdown%3C%2Fdiv%3E).

### LaTeX ###

- <!-- \newcommand\rawlatex{} --> @mmd
- \newcommand\rawlatex{} @pandoc(parsed)
- \begin{...} @pandoc

Other Syntaxes
==============

## Metadata ##

Note: mmd accepts capitalized metadata keys but others do not. For maximum compatibility, `author(s)`, `title`, etc. should be in lower cases.

### MultiMarkdown Metadata Block ###

@mmd @pandoc(+mmd_title_block)

```
title:    A Sample MultiMarkdown Document  
author:   Fletcher T. Penney  
date:     February 9, 2011  
comment:  This is a comment intended to demonstrate  
          metadata that spans multiple lines, yet  
          is treated as a single value.  
CSS:      http://example.com/standard.css
```

See more at [Metadata---MultiMarkdown Documentation](http://fletcher.github.io/MultiMarkdown-5/metadata.html).

### Pandoc Title Block ###

@pandoc

```
% title
% author(s) (separated by semicolons)
% date
```

### YAML Metadata Block ###

@Mmd(partial)

@pandoc @ghpages

```
---
title:    A Sample MultiMarkdown Document  
author:   Fletcher T. Penney  
date:     February 9, 2011  
tags: [nothing, nothingness]
abstract: |
  This is the abstract.

  It consists of two paragraphs.
---
```

## TOC ##

### Pandoc ###

@pandoc

Use `--toc` as a command argument.

### MultiMarkdown ###

@mmd

`{{TOC}}`, see beginning. It preprocess the headings and generate a ToC on its own, and doesn't give instruction for LaTeX to generate one. A hack is like this:

```
---
...
LaTeX Input:	mmd-load-toc-setcounter
LaTeX Input:	mmd-load-toc
...
---
<!-- \begin{comment} -->
{{TOC}}
<!-- \end{comment} -->
...
```

See more at [ickc/peg-multimarkdown-latex-support: Default support files for generating LaTeX documents with MMD 3 through MMD 5](https://github.com/ickc/peg-multimarkdown-latex-support).

### Kramdown ###

@ghpages

```
# Contents
{:.no_toc}

* Will be replaced with the ToC, excluding the "Contents" header
{:toc}
```


## Math ##

MathJax is assumed. MathJax has many configurable options. See [MathJax TeX and LaTeX Support — MathJax 2.6 documentation](http://mathjax.readthedocs.org/en/latest/tex.html).

### Markdown ###

@markdown

Add the following at the beginning of the document:

```html
<script type="text/javascript"
    src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_CHTML-full">
    </script>
```

MathJax.js is used and any codes within math delimiters are treated as raw HTML and to be processed by MathJax.

MathJax delimiter are `$$...$$`, `\\(...\\)` and `\\[...\\]` (because an extra `\` can be used to escape from MarkDown).

Depending on the markdown parser, extra tricks might be needed to make sure nothing within the math delimiter is treated as markdown (see [TeX and LaTeX in HTML documents — MathJax 2.6 documentation](http://mathjax.readthedocs.org/en/latest/tex.html#tex-and-latex-in-html-documents)). `$...$` can be used with MathJax configuration (see [TeX and LaTeX math delimiters — MathJax 2.6 documentation](http://mathjax.readthedocs.org/en/latest/tex.html#tex-and-latex-math-delimiters)).

### MultiMarkdown and Pandoc ###

There are subtleties how math should be used in HTML+MathJax and LaTeX output from single markdown source. See more in [Testing LaTeX Environments Usage in MathJax From Markdown Conversion (including mmd and pandoc)](https://github.com/ickc/mathjax-latex-md-mmd-pandoc).

#### MultiMarkdown ####

@mmd

Add the following metadata at the beginning of the document:

```html
HTML header:    <script type="text/javascript"
    src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_CHTML-full">
    </script>
```

MultiMarkdown math delimiter are `$...$`, `$$...$$`, `\\(...\\)` and `\\[...\\]`.

#### Pandoc ####

@pandoc(--mathjax)

For pandoc, add `--mathjax` in the command-line argument.

Default math delimiter for pandoc is `$...$`, `$$...$$`. Other options are configurable. See more in [Pandoc - Pandoc User’s Guide](http://pandoc.org/README.html#non-pandoc-extensions).

### Inline Math ###

- $1+1$
- \\(1 + 1\\) @pandoc(+tex_math_double_backslash)

### Block Math ###

- $$R R^T = I$$
- \\[A^T_S = B\\]

### Other Examples

- $$x = {-b \pm \sqrt{b^2-4ac} \over 2a}$$
- $$
\begin{aligned}
\dot{x} & = \sigma(y-x) \\\
\dot{y} & = \rho x - y - xz \\\
\dot{z} & = -\beta z + xy
\end{aligned}
$$
- $$\left( \sum_{k=1}^n a_k b_k \right)^2 \leq \left( \sum_{k=1}^n a_k^2 \right) \left( \sum_{k=1}^n b_k^2 \right)$$
- $$\mathbf{V}_1 \times \mathbf{V}_2 =  \begin{vmatrix}
\mathbf{i} & \mathbf{j} & \mathbf{k} \\\
\frac{\partial X}{\partial u} &  \frac{\partial Y}{\partial u} & 0 \\\
\frac{\partial X}{\partial v} &  \frac{\partial Y}{\partial v} & 0
\end{vmatrix}$$
- $$P(E) = {n \choose k} p^k (1-p)^{n-k}$$
- $$\frac{1}{\Bigl(\sqrt{\phi \sqrt{5}}-\phi\Bigr) e^{\frac25 \pi}} =
1+\frac{e^{-2\pi}} {1+\frac{e^{-4\pi}} {1+\frac{e^{-6\pi}}
{1+\frac{e^{-8\pi}} {1+\ldots} } } }$$
- $$
\begin{aligned}
\nabla \times \vec{\mathbf{B}} -\, \frac1c\, \frac{\partial\vec{\mathbf{E}}}{\partial t} & = \frac{4\pi}{c}\vec{\mathbf{j}} \\\
\nabla \cdot \vec{\mathbf{E}} & = 4 \pi \rho \\\
\nabla \times \vec{\mathbf{E}}\, +\, \frac1c\, \frac{\partial\vec{\mathbf{B}}}{\partial t} & = \vec{\mathbf{0}} \\\
\nabla \cdot \vec{\mathbf{B}} & = 0 \end{aligned}
$$
- $$1 +  \frac{q^2}{(1-q)}+\frac{q^6}{(1-q)(1-q^2)}+\cdots =
\prod_{j=0}^{\infty}\frac{1}{(1-q^{5j+2})(1-q^{5j+3})},
\quad\quad \text{for $|q|<1$}.$$  

## File Transclusion ##

@mmd

See more at [File Transclusion---MultiMarkdown Documentation](http://fletcher.github.io/MultiMarkdown-5/transclusion.html).

# References #

Some examples are directly or indirectly copied from the following documentations:

1. [Pandoc - Pandoc User’s Guide](http://pandoc.org/README.html)
2. [MultiMarkdown User's Guide](http://fletcher.github.io/MultiMarkdown-5/)
3. [Syntax | kramdown](http://kramdown.gettalong.org/syntax.html#tables)
