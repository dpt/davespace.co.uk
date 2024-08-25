title: Survey of ARM cores used in iOS devices
icon: cogs
date: 2013-11-11
tags: Blog, ARM, iOS
----

I recently needed a complete list of ARM cores used in Apple’s iOS kit. [We](http://www.metaforic.com/) were trying to track down a bug which initially appeared to be something processor-dependent. The bug turned out to be something else, but I’d already compiled much of this table anyway. So, here it is for your reference:

Model               | Release | Apple Name   | A.K.A.   | Core         | Bits | Cores | Arch | Notes
------------------- |:-------:| ------------ | -------- |:------------:|:----:|:-----:|:----:| -----
iPhone              | 2007/06 |              | S5L8900  | ARM1176JZF-S | 32   | 1     | v6   |
iPod Touch 1        | 2007/09 |              | S5L8900  | ARM1176JZF-S | 32   | 1     | v6   |
iPhone 3G           | 2008/07 |              | S5L8900  | ARM1176JZF-S | 32   | 1     | v6   |
iPod Touch 2        | 2008/09 |              | S5L8720  | ARM1176JZF-S | 32   | 1     | v6   |
iPhone 3GS          | 2009/06 |              | S5L8920  | Cortex-A8    | 32   | 1     | v7   | Samsung Hummingbird [1]
iPod Touch 3 32/64G | 2009/09 |              | S5L8922  | Cortex-A8    | 32   | 1     | v7   | iPod Touch 3 8G is 2nd gen hardware
iPad                | 2010/04 | A4 APL0398   | S5L8930  | Cortex-A8    | 32   | 1     | v7   |
iPhone 4            | 2010/06 | A4 APL0398   | S5L8930  | Cortex-A8    | 32   | 1     | v7   |
iPod Touch 4        | 2010/09 | A4 APL0398   | S5L8930  | Cortex-A8    | 32   | 1     | v7   |
AppleTV 2           | 2010/09 | A4 APL0398   | S5L8930  | Cortex-A8    | 32   | 1     | v7   |
iPad 2              | 2011/03 | A5 APL0498   | S5L8940  | Cortex-A9    | 32   | 2     | v7   |
iPhone 4S           | 2011/10 | A5 APL0498   | S5L8940  | Cortex-A9    | 32   | 2     | v7   |
iPad 3              | 2012/03 | A5X APL5498  | S5L8945  | Cortex-A9    | 32   | 2     | v7   |
AppleTV 3           | 2012/03 | A5R2 APL2498 | S5L8942  | Cortex-A9    | 32   | 2     | v7   | Has two cores but one is disabled! [2]
iPhone 5            | 2012/09 | A6 APL0598   | S5L8950X | “Swift”      | 32   | 2     | v7S  | Custom design
iPod Touch 5        | 2012/10 | A5R2 APL2498 | S5L8942  | Cortex-A9    | 32   | 2     | v7   |
iPad 4              | 2012/11 | A6X APL5598  | S5L8955  | “Swift”      | 32   | 2     | v7S  | Custom design
iPad Mini           | 2012/11 | A5R2 APL2498 | S5L8942  | Cortex-A9    | 32   | 2     | v7   |
AppleTV 3A          | 2013/01 | A5R2 APL7498 | S5L8947  | Cortex-A9    | 32   | 1     | v7   | A 'proper' single core design
iPhone 5C           | 2013/09 | A6 APL0598   | S5L8950X | “Swift”      | 32   | 2     | v7S  | Custom design
iPhone 5S           | 2013/09 | A7 APL0698   | S5L8960X | “Cyclone”    | 64   | 2     | v8   | Custom design
iPad Air            | 2013/11 | A7           |          | “Cyclone”    | 64   | 2     | v8   | Custom design
iPad Mini 2         | 2013/11 | A7           |          | “Cyclone”    | 64   | 2     | v8   | Custom design

The 64-bit A7 chips are still a bit too new to find out about in much detail.

See that the 'S5L' code name digits are the 'APL' product name but with its digits reversed. So a hypothetical Apple APL5678 would be a S5L8765.

Data from Wikipedia and [PDAdb](http://pdadb.net/). E&OE.

[1]: http://en.wikipedia.org/wiki/Exynos
[2]: http://appleinsider.com/articles/12/04/11/apple_tv_single_core_a5_actually_has_two_cores_one_is_off

And what do you know... I compile all that then I find [this](http://labs.torques.jp/wp-content/uploads/2012/09/iOSDevices_CPU.pdf).

