# Flash2D
Flashcards App Written in Love2d

## Usage

This requires [Love2D](https://love2d.org/) to run.  

From the [Love2D Docs](https://love2d.org/wiki/Getting_Started): The easiest way to run the game is to drag the folder onto either love.exe or a shortcut to love.exe. Remember to drag the folder containing main.lua, and not main.lua itself. 

## Creating Your Own Questions

Simply create a file modeled off sample_cards.lua and change the line in main.lua that loads the cards:

```
-- Cards
    require('your_cards')
```

where your_cards is the .lua file name you used (WITHOUT the extension)