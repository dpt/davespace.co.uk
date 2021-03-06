section: RISC OS
title: PrivateEye
subtitle: Image viewer with some editing features.
icon: search
date: 2018-02-08
tags: RISC OS, PrivateEye
pageOrder: 20
----

## Details

<div class="icon">
    <img src="img/privateeye.png">
</div>

PrivateEye is an image viewer for RISC OS.

It requires RISC OS 3.6 or later and a Boot sequence with the Nested Wimp and a 32-bit Shared C Library.

## Features

* Loads and displays both bitmap and vector images:
  * Sprites, JPEGs, GIFs and PNGs
  * DrawFiles and ArtWorks
* Bitmap effects:
  * Adjust gamma, brightness and contrast
  * Blur and sharpen
  * Change saturation and apply histogram effects
* Alpha channel support
* Bitmap rotation with interactive preview
  * Rotation is lossless for JPEGs
* Native JPEG display using SpriteExtend’s on-the-fly renderer
* Inbuilt lossless “cleaning” transparently loads progressive JPEGs
* JFIF, Exif and Adobe metadata information
* Multiple-channel histogram
* Display images may be saved:
  * Convert JPEGs, GIFs and PNGs to into Sprites
* Any number of images may be open concurrently
* Customisable key map
* Interactive help (use it!)
  
## Screenshots

![Screenshot](../software/thumbs/eyesnap4.png)
[Enlarge](../software/eyesnap4.png)

[Pixeloo’s untooned Jessica Rabbit](http://pixeloo.blogspot.com/2008/04/jessica-rabbit-untooned.html) demonstrates improved transparency support. (First appeared in version 2.85)

![Screenshot](../software/thumbs/eyesnap3.png)
[Enlarge](../software/eyesnap3.png)

Olivia Wilde demonstrates JPEG metadata display. (First appeared in version 2.75)

![Screenshot](../software/thumbs/eyesnap2.png)
[Enlarge](../software/eyesnap2.png)

Eva Green demonstrates the effects window. (First appeared in version 2.50)

![Screenshot](../software/thumbs/eyesnap1.png)
[Enlarge](../software/eyesnap1.png)

Tigger the cat demonstrates the interactive rotation dialogue. (First appeared in version 2.00)

## Download

Current version: 3.01 (19-Jan-2018)

* [Download](../software/privateeye301.zip) (233K Zip)
* [Manual](../software/privateeye300manual.pdf) (1.2M PDF)
* [Screenshot](../software/eyesnap4.png) (332k PNG)

## Source Code

The PrivateEye source lives at riscos.info at [svn://svn.riscos.info/privateeye](svn://svn.riscos.info/privateeye) and on github at [https://github.com/dpt/PrivateEye](https://github.com/dpt/PrivateEye).

Use http://www.riscos.info/websvn/listing.php?repname=privateeye for the web-based repository viewer.

Intructions about how to build PrivateEye are at http://www.riscos.info/websvn/filedetails.php?repname=privateeye&path=%2Ftrunk%2Fdocs%2Fprivateeye%2FBuilding

