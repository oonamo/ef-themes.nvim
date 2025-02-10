# ef-themes.nvim for Firefox
> [!NOTE]
> The styling is very opinionated.
> The `urlbar` styling in particular is unusual, as it mimics the feeling of searching in Neovim
> There are some notes in the files that show what can be deleted to remove the search styling

Follow [this](https://www.userchrome.org/how-create-userchrome-css.html) guide on creating a `userChrome.css` file.

## Usage
### Using Just A Single Theme
Once you have located the appropriate directory for `chrome`, 
Simply do:

```sh
# Substitute ef-dream for any theme of your choice
curl https://raw.githubusercontent.com/oonamo/ef-themes.nvim/refs/heads/main/extras/firefox/ef-dream.css -o userChrome.css
```

### Using Multiple Themes
Once you have located the appropriate directory for `chrome`, 
Simply do:
```sh
mkdir themes
```

The structure should look something like this.
```txt
/chrome/
├── themes/
└── userChrome.css
```

Copy all the themes into the `themes` folder
```sh
cp ./path/to/ef-themes/extras/firefox/*.css ./path/to/themes/folder/
```

Then in the `userChrome.css` file, write

```css
/* Can be any theme */
@import "themes/ef-dream.css"
```
