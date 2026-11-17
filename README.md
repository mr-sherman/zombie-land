# Zombieland: Surviving the Dead Internet

A talk by Bradford Sherman ([@mr-sherman](https://github.com/mr-sherman)), August 2026.

## Summary

"Dead Internet Theory" says that since about 2016 most activity online has been artificial: bots talking to bots, AI-generated content nobody asked for, and engagement that isn't real. It started as a fringe forum post and is now discussed in academic papers and described by Wikipedia as a concept instead of a conspiracy theory.

This talk agrees with the feeling and questions the story. The internet didn't die in 2016, and AI didn't kill it. There was never a golden age of a real, honest internet. Sock puppets, spam, worms, catfishing and advance-fee scams all predate modern AI by decades, and the technology behind today's chatbots goes back to the 1940s. Dishonesty on the social web pays, so the dead internet was the likely outcome all along, and no one had to plan it. AI is gasoline on a fire that was already burning.

The talk ends with advice: stop treating the social internet as the real one. Use the parts of the internet that have no incentive to lie to you (finance, navigation, entertainment), reduce the parts that profit from deception (social media, forums, dating apps, reviews), and spend your time in the living world.

## Outline

1. **Title.** Zombieland: Surviving the Dead Internet.
2. **Dead Internet Theory.** How it moved from an anonymous forum post (2021) to an essay (2023), a journal paper (2025), and a Wikipedia entry that no longer calls it a conspiracy theory.
3. **This Feels Real.** AI bands, identical reviews, scam ads, and the reported 10% of Meta's projected 2024 revenue (about $16 billion) that came from scam and fraud ads.
4. **Did the Internet Start to Die in 2016?** The theory's own timeline: realness stays high until 2016, then falls, with GPT marked in 2022.
5. **Was There an Internet Golden Age?** A timeline of fakery before AI: BBSs (1978), the Michelangelo virus (1992), Nigerian scams (late 1990s), the ILoveYou worm (2000), catfishing (2010), 2016.
6. **Did AI Kill the Internet?** AI and bots are old: neural networks (1943), ELIZA (1966), IRC bots (1988), robots.txt (1994), the Transformer paper (2017).
7. **No One Planned This.** Eric Schmidt's May 2026 commencement remarks, and why the dead internet was the likely outcome.
8. **Surviving the Dead Internet.** Focus on the parts of the internet with no incentive to lie, and avoid the parts that profit from lying.
9. **Thrive in the Living World.** Use the internet to enhance real-world experiences, and go meet people.
10. **Citations.**

## Repository layout

```
zombieland/
├── README.md
├── LICENSE
├── Makefile                 # builds the HTML and PDF
├── zombieland.pdf           # PDF of the deck
├── slides/
│   ├── zombieland.md        # the slide deck, in Marp Markdown. Start here.
│   └── images/              # SVG illustrations used on the slides
├── docs/                    # build output, served by GitHub Pages
│   ├── index.html           # the deck
│   └── images/
└── scripts/
    └── strip_notes.py       # removes speaker notes when building from the private deck
```

## Viewing and presenting

GitHub shows `slides/zombieland.md` as plain Markdown, not as slides. To see the deck, open `docs/index.html` in a browser (or the published GitHub Pages site), or read `zombieland.pdf`.

In the browser:

- **F** toggles full screen.
- **P** opens presenter view.
- Arrow keys move between slides.

## Building

Install [Marp CLI](https://github.com/marp-team/marp-cli) and run, from the repository root:

```
make            # strip notes, then build docs/index.html and zombieland.pdf
make present    # HTML with speaker notes, for presenting locally
```

If `marp` isn't on your PATH, pass it explicitly: `make MARP=/path/to/marp`.

The author's speaker notes are kept in a private file, `slides/zombieland.full.md`, which is not part of this repository. `make` copies that file to `slides/zombieland.md` with the notes removed. Without the private file you can still build the HTML directly from `slides/zombieland.md` with `marp slides/zombieland.md -o docs/index.html`.

## License

See [LICENSE](LICENSE).
