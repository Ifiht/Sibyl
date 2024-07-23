package main

import (
	"fyne.io/fyne/v2/app"
	"fyne.io/fyne/v2/container"
	"fyne.io/fyne/v2/widget"
)

func main() {
	a := app.New()
	w := a.NewWindow("Sibyl")

	hello := widget.NewLabel("This is a widget label")
	w.SetContent(container.NewVBox(
		hello,
		widget.NewButton("Press Me", func() {
			hello.SetText("Welcome :)")
		}),
	))

	w.ShowAndRun()
}
