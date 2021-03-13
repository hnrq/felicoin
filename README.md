
<img alignment="center" src="share/pixmaps/Felicoin.png" alt="" />

[![Build Status](https://travis-ci.org/felicoin-project/felicoin.svg?branch=master)](https://travis-ci.org/felicoin-project/felicoin)

https://felicoin.org

What is Felicoin?
----------------

Felicoin is everything that you've ever wished for. A POW/POS Cryptocurrency/DeFi Platform/NFT Token with a blazing fast transaction speed of 0.0001ns. How we achieved that? By the power of Mighty Felipão

For more information, as well as an immediately useable, binary version of
the Felicoin Core software, see (NOT AVAILABLE YET) [https://felicoin.org](https://felicoin.org).

Who is Felipão?
---------------

Felipão is the one and only. The perfect creation. His birth is foreseen since the dawn of mankind. Cave paintings of a white man with a divine look in his face have been reported by many archaeologists. Along the history, there are several reports of people who lost their sanity after dreaming with him. The psychiatrist Kanji-ka Takenti [conducted a research](https://www.youtube.com/watch?v=ettaeKZHAwA) with delusional patients from Tokyo Metropolitan Nakama Hospital, to track the origin of their conditions. Many participants reported that hallucinations and depersonalization started after staring at a strange face in their nightmares. A sketch, depicted below, was made by the researchers: 

<img alignment="center" height="300" src="https://upload.wikimedia.org/wikipedia/en/thumb/6/67/This_Man_original_drawing.jpg/220px-This_Man_original_drawing.jpg" alt="Sketch of a white guy with thick eyebrows and a thin smile" />

Mr. Takenti believes that this eerie figure is, actually, Felipão. His thesis gets stronger when comparing the drawing to an old cave paint where caveman sees a similar face and goes berserk against his tribe. Nowadays, there's only one picture of Felipão **(NOTE: Do not stare at it for too long, some say it can drive you crazy)**:

<img src="share/pixmaps/Felipao.jpg" alignment="center" height="300" alt="A white guy with thick eyebrows and a thin smile" />

License
-------

Felicoin Core is released under the terms of the MIT license. See [COPYING](COPYING) for more
information or see https://opensource.org/licenses/MIT.

Development Process
-------------------

The `master` branch is regularly built and tested, but is not guaranteed to be
completely stable. [Tags](https://github.com/felicoin-project/felicoin/tags) are created
regularly to indicate new official, stable release versions of Felicoin Core.

The contribution workflow is described in [CONTRIBUTING.md](CONTRIBUTING.md)
and useful hints for developers can be found in [doc/developer-notes.md](doc/developer-notes.md).

The developer [mailing list](https://groups.google.com/forum/#!forum/felicoin-dev)
should be used to discuss complicated or controversial changes before working
on a patch set.

Developer IRC can be found on Freenode at #felicoin-dev.

Testing
-------

Testing and code review is the bottleneck for development; we get more pull
requests than we can review and test on short notice. Please be patient and help out by testing
other people's pull requests, and remember this is a security-critical project where any mistake might cost people
lots of money.

### Automated Testing

Developers are strongly encouraged to write [unit tests](src/test/README.md) for new code, and to
submit new unit tests for old code. Unit tests can be compiled and run
(assuming they weren't disabled in configure) with: `make check`. Further details on running
and extending unit tests can be found in [/src/test/README.md](/src/test/README.md).

There are also [regression and integration tests](/test), written
in Python, that are run automatically on the build server.
These tests can be run (if the [test dependencies](/test) are installed) with: `test/functional/test_runner.py`

The Travis CI system makes sure that every pull request is built for Windows, Linux, and macOS, and that unit/sanity tests are run automatically.

### Manual Quality Assurance (QA) Testing

Changes should be tested by somebody other than the developer who wrote the
code. This is especially important for large or high-risk changes. It is useful
to add a test plan to the pull request description if testing the changes is
not straightforward.

Translations
------------

We only accept translation fixes that are submitted through [Bitcoin Core's Transifex page](https://www.transifex.com/projects/p/bitcoin/).
Translations are converted to Felicoin periodically.

Translations are periodically pulled from Transifex and merged into the git repository. See the
[translation process](doc/translation_process.md) for details on how this works.

**Important**: We do not accept translation changes as GitHub pull requests because the next
pull from Transifex would automatically overwrite them again.

Warning
-------

This is a meme, of course.
