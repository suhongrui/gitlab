# GitLab Emoji

Gem extending [emoji gem](https://github.com/steveklabnik/emoji) and [PhantomOpenEmoji](https://github.com/Genshin/PhantomOpenEmoji)

# Permission to use emoji from emojidex set

Genshin Souzou Kabushiki Kaisha of Aichi, Japan Hereby grants permission to use the following emoji from the emojidex set:

```
  white_heavy_check_mark
  white_large_square
  thumbs_up_sign
  thumbs_down_sign
  blue_heart
  broken_heart
  green_heart
  purple_heart
  yellow_heart
  white_up_pointing_index
```

These emoji may be used in all versions of GitLab, both commercial and otherwise, without restriction or fee.
Genshin Souzou Kabushiki Kaisha CEO Rei Kagetsuki

# Manual Usage

Copy images to public directory by using the task in `lib/tasks/copy.rake`

# Assets Precompiling

```
# config/application.rb
config.assets.paths << Emoji.images_path
config.assets.precompile << "emoji/*.png"
```
