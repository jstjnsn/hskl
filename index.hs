main = putStrLn myhtml

myhtml = makeHtml "Hello title" "Hello Joost"

makeHtml title content = html_ (head_ (title_ title) <> body_ content)

html_ = element "html"

body_ = element "body"

head_ = element "head"

title_ = element "title"

element tag content = "<" <> tag <> ">" <> content <> "</" <> tag <> ">"