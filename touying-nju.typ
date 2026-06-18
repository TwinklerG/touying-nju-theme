// Stargazer theme - adapted for NJU
#import "@preview/touying:0.6.1": *
#import themes.dewdrop: *

#let nju-theme(
  aspect-ratio: "16-9",
  lang: "en",
  font: ("LXGW WenKai",),
  ..args,
  body,
) = {
  set text(lang: lang, font: font)
  show: if lang == "zh" {
    import "@preview/cuti:0.3.0": show-cn-fakebold
    show-cn-fakebold
  } else {
    it => it
  }

  show: dewdrop-theme.with(
    aspect-ratio: aspect-ratio,
    navigation: "mini-slides",
    config-info(
      // logo: image("nju-logo.png"),
    ),
    primary: rgb(77, 0, 153),
    ..args,
  )

  body
}
