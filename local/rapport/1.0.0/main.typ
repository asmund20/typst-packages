#let rapport(title: "", authors: (), date: datetime.today().display("[day].[month].[year]"), language: "en", include_outline: false, abstract: none, body) = {
  // Set the document's basic properties.
  set document(author: authors, title: title)
  set page(numbering: "1", number-align: center)
  set text(font: "Source Sans Pro", lang: language)
  show figure.where(kind: table): set figure.caption(position: top) 

  // Title row.
  align(center)[
    #block(text(weight: 700, 1.75em, title))
    #v(1em, weak: true)
    #date
  ]

  // Author information.
  pad(
    top: 0.5em,
    bottom: 0.5em,
    x: 2em,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(center, strong(author))),
    ),
  )

  set par(justify: true)

  if abstract != none {
    align(center)[
      #block(width: 80%, [#text(weight: 700, 1.1em, "Abstract")\ #abstract])
    ]
  }

  if include_outline [
    #outline(indent: auto)
  ]

  // Main body.
  body

}
