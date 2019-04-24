# Art Gallery

This project helps you practice today's objective goals. Working on this project helps you:

- understand and explain what a protocol is and common scenarios for their use
- define a custom protocol, and make a class or struct conform to it
- understand and explain the purpose of UITableViewController
- use a regular UIViewController to display a UITableView
- create a custom UITableViewCell
- understand and explain the delegate pattern and why it is used

You will repeat and expand upon the material from this morning's lecture. Be sure to start from scratch and use your notes and source as reference material only. Avoid cutting and pasting from the morning work.

## Introduction

Your Art Gallery application displays a list of paintings, enabling users to pick the items they like. A fully built application looks like this:

![](https://user-images.githubusercontent.com/16965587/43025789-56c5fa24-8c30-11e8-999e-abec67fcad88.gif) 

## Setting up the project

1. The project practices using a standalone table view set apart and distinct from using a UITableViewController. You need to create a view controller in Interface Builder, add a table view as its child, and stretch it to completely fill its parent with 20-point gaps on the two sides.

1. Create classes for:
	* PaintingViewController: Your primary view controller class, renamed from ViewController
	* PaintingTableViewCell: The cells for your table view

1. Assign these to the controller and table view in Interface Builder using the identity inspector.

1. Embed your controller inside a Navigation Controller and name your View Controller's title to "Lambda Gallery"

## Set up your Controller

Use IB to connect your table view to a `tableView` outlet. Implement `viewWillAppear` to reload your table data.

## Set up your model

1. Create three files:
	* Painting.swift: The basic painting instance type
	* PaintingTableViewCellDelegate.swift: A custom protocol for communicating between your cell and your model
	* PaintingModel.swift: The model that will store your application state.

1. In Painting.swift create a Painting struct. Include two fields: an `image` constant (of `UIImage`) and a variable `isLiked` Boolean. Add an initializer. Default `isLiked` to false in the initializer.

1. Your protocol defines a single `tappedLikeButton(on:)` method declaration. Remember this is a protocol, so you do no implementation here. Your protocol must conform to `class` for it to work with this example:
	```
	protocol PaintingTableViewCellDelegate: class {
	  func tappedLikeButton(on cell: PaintingTableViewCell)
	}
	```
1. Create a `PaintingModel` class that descends from NSObject and conforms to both `UITableViewDataSource` and `PaintingTableViewCellDelegate`. Add a weak `tableView` optional variable, so you can reference your main table view controller. You need this reference to be able to respond to the `tappedLikeButton` call. It's slightly a mess because this app isn't built the way you'd normally build one (with a UITVC).

1. Create a variable property called `paintings`, which is an array of `Painting`. Set its initial value to an empty array.

1. Build an initializer that uses the numbers 1 through 12 to load assets into an Image Array.

## Set up your Table Delegate

1. In Interface Builder create a new object, set its identity to PaintingsModel and set it as your table view's delegate.

1. In `PaintingsModel.swift`, add the three core table delegate methods. In `numberOfSections`, set your weak tableView property.

1. Establish a `reuseIdentifier` property called `cell` and name the prototype cell in Interface Builder.

## Set up your interface

1. Create a vertical stack view, add it to your cell and constrain the view to the top and bottom, leaving a 20 point gap on both sides. Stretch right and left.

1. Add an image view and a button. Set the button's text size to 14 points. Set the Image View height to 256. Set the view content mode to aspect fit.

1. Set the stack view's separation to 20.

## Setting up the cell

1. Connect outlets for `portraitView` and `likeButton` in your table view cell.
1. Add a weak delegate variable of `PaintingTableViewCellDelegate?` type.

1. Use IB to connect the button to the cell class to create `toggledAppreciation`. Have it relay the action to the delegate to let it handle `tappedLikeButton(on: self)`


## Finish your Model code

1. Implement `tappedLikeButton(on:)` to toggle the paintings `isLiked` property. Change the text on the cell's button to match this.

1. Finish setting up your cell code in `cellForRoad` by setting the `likeButton`'s text and adding the painting image to the `portraitView`.

## Go Farther
- Create an information screen to present when you tap on an image view that shows information (you can just use "blah blah" or lorem ipsum for this). Present it with a "show" segue. You do not need to prepare for the segue as you'll be showing static content each time.
- Change your segue from "show" to present it modally, allowing the information screen to slide up. You'll need to add a done button that allows the user to dismiss the model view when they are done reading.

Stretch:

- Stylize the portraits by rounding the corners of each portrait and adding a border
- Make the cells dynamically resize according to the image's height. 
