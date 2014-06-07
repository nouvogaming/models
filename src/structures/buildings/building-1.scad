/* building-1.scad
 *
 * Copyright (C) Robert B. Ross, 2014
 *
 * This software is released under the Creative Commons
 * Attribution-ShareAlike 4.0 International Public License.
 */

use <building.scad>
use <roof.scad>
use <stairs.scad>

myWallThickness = 7;
myFloorThickness = 4;

/* First Floor Room A */
building(dims = firstFloorADims,
	 windows = firstFloorAWindows,
	 doors = firstFloorADoors,
	 doEars = false);

/* First Floor Room B */
translate([100,0,0])
	building(dims = firstFloorBDims,
		 windows = firstFloorBWindows,
		 doors = firstFloorBDoors,
		 doEars = false);

/* Second Floor Room A */
translate([100,0,65])
	building(dims = secFloorADims,
		 windows = secFloorAWindows,
		 doors = secFloorADoors,
		 doEars = false);

/* Exterior Stairs */
translate([100,0,0]) rotate([0,0,90]) mirror([1,0,0]) {
    easyStairs(stairsLen = 80,
	       extraTopLanding = 20,
	       stairsHt = 69,
	       stairsWidth = 35,
	       sidewallThick = myWallThickness);
}

/* Roof */
translate([108 + 100 - 4, 0 - 4, 2 * 65]) {
    rotate([0,0,90]) corRoof(xDim = 127 + 8, yDim = 100 + 8, angle = 4);
}

/* Custom patio for this building */
translate([0,0,65]) {
    cube([100,100,myFloorThickness], center=false); // Floor
}
translate([0,0,65+myFloorThickness]) {
    cube([myWallThickness, 100, 20], center=false);
}
translate([0,100 - myWallThickness, 65+myFloorThickness]) {
    cube([100, myWallThickness, 20], center=false);
}
translate([39.5,0,65+myFloorThickness]) {
    cube([60.5, myWallThickness, 20], center=false);
}

/******** FIRST FLOOR ROOM A ********/

/* Dims is a vector holding dimensions of the building 
 * [X, Y, height, wall thickness, floor/roof thickness].
 */
firstFloorADims = [100, // xdim
	     100, // ydim
	     65, // height
	     myWallThickness, // wall thickness
	     myFloorThickness, // floor/roof thickness
	     0]; // not currently used

/* Windows is a 3D array holding translate : rotate pairs, one per window.
 * 
 */
firstFloorAWindows = [[[0, 30, 0], [0,0,-90]],
		    [[0, 70, 0], [0,0,-90]],
		    [[70,93,0], [0,0,0]],
		   ];

/* Doors is a 3D array holding translate : rotate : boolean tuples, one per
 * door.
 * Booleans are [ doFrame, unused, unused ].
 */
firstFloorADoors = [[[30, 93, 0], [0,0,0], [1,0,0]],
	   	  [[93, 50, 0], [0,0,-90], [0,0,0]],
          ];

/******** FIRST FLOOR ROOM B ********/

/* Dims is a vector holding dimensions of the building 
 * [X, Y, height, wall thickness, floor/roof thickness].
 */
firstFloorBDims = [100, // xdim
	     127, // ydim
	     65, // height
	     myWallThickness, // wall thickness
	     myFloorThickness, // floor/roof thickness
	     0]; // not currently used

/* Windows is a 3D array holding translate : rotate pairs, one per window.
 * 
 */
firstFloorBWindows = [[[93, 42, 0], [0,0,-90]],
		    [[93, 88, 0], [0,0,-90]],
		    [[50,120,0], [0,0,0]],
		   ];

/* Doors is a 3D array holding translate : rotate : boolean tuples, one per
 * door.
 * Booleans are [ doFrame, unused, unused ].
 */
firstFloorBDoors = [[[0, 50, 0], [0,0,-90], [0,0,0]],
		  [[40,0,0], [0,0,0], [1,0,0]],
          ];

/******** SECOND FLOOR ROOM A ********/

/* Dims is a vector holding dimensions of the building 
 * [X, Y, height, wall thickness, floor/roof thickness].
 */
secFloorADims = [100, // xdim
		 127, // ydim
		 65, // height
		 myWallThickness, // wall thickness
		 myFloorThickness, // floor/roof thickness
		 0]; // not currently used

/* Windows is a 3D array holding translate : rotate pairs, one per window.
 * 
 */
secFloorAWindows = [[[93, 42, 0], [0,0,-90]],
		    [[93, 88, 0], [0,0,-90]],
		    [[50,120,0], [0,0,0]],
		    ];

/* Doors is a 3D array holding translate : rotate : boolean tuples, one per
 * door.
 * Booleans are [ doFrame, unused, unused ].
 */
secFloorADoors = [[[0, 30, 0], [0,0,-90], [1,0,0]]
		  ];

/*
 * Local variables:
 *  mode: C
 *  c-indent-level: 4
 *  c-basic-offset: 4
 * End:
 *
 * vim: ts=8 sts=4 sw=4 expandtab
 */


