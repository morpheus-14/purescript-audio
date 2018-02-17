# purescript-audio
Basic web audio extensions for Purescript

## Steps to set up

bower install
npm install

### Build Project

npm start

## Example Usage

``` 
    launchAff_ $ do
               sequence $ playNotes [G, F, G, F, G, D, G, C, C, B, C, C, D, C, G, F] 0.3
```

Main.purs has working example of usage


## Add More Notes

Inside `src/Audio`
* Go to Types.purs and new note in `Note` sumtype
* In Notes.purs, add frequency mapping for the new note