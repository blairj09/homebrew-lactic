# Homebrew tap for Lactic

[Lactic](https://lactic.fit) is a free, open-source app for structured cycling training.

```sh
brew install --cask blairj09/lactic/lactic
```

Lactic updates itself from inside the app, and `brew upgrade --cask lactic` works too.
`brew uninstall --cask lactic` removes the app; add `--zap` to also delete your Lactic data
on this Mac.

The cask follows [Lactic's releases](https://github.com/blairj09/lactic/releases) automatically:
a workflow checks every two hours, tests the install on a Mac and updates `Casks/lactic.rb`.
App source and issues live in [blairj09/lactic](https://github.com/blairj09/lactic).
