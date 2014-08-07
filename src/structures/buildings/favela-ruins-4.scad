/* favela-ruins-3.scad
 *
 * Copyright (C) Robert B. Ross, 2014
 *
 * This software is released under the Creative Commons 
 * Attribution-ShareAlike 4.0 International Public License.
 */
use <building.scad>
use <damage/bigSlice2.scad>
use <damage/bigCube.scad>
use <cinderblocks.scad>

difference() {
    union() {
render() building(f1Dims, f1Windows, f1Doors,
	 doBackWall = true,
	 doRemovableBackWall = true,
	 doEars = false);

render() translate([0,0,62]) building(f2Dims, f2Windows, f2Doors,
	 doBackWall = false,
	 doRemovableBackWall = false,
	 doEars = false);
    }

    /* damage */
    translate([121.5,350,60]) rotate([135,0,0]) rotate([0,0,90]) bigSlice2();
    translate([327,111.5,130]) rotate([0,-145,0]) bigSlice2();
    translate([-50,-13,382]) rotate([213,0,-20]) bigCube();

    /* cinderblock patch */
    translate([0,75,50]) rotate([0,0,-90]) quickCinderblockPatch(myAngle=0);
    translate([119,23,64]) rotate([0,0,90]) quickCinderblockPatch(myAngle=0);

}

//    % translate([121.5,70,265]) rotate([190,0,0]) rotate([0,0,90]) bigSlice2();


// rotate([0,180,0]) bigSlice();

/******** BUILDING ARRAY DEFINITIONS ********/

/* Dims is a vector holding dimensions of the building 
 * [X, Y, height, wall thickness, floor/roof thickness].
 */
f1Dims = [120, // xdim
	     120, // ydim
	     62, // height
	     7, // wall thickness
	     4]; // floor/roof thickness

/* Windows is a 3D array holding translate : rotate pairs, one per window.
 * 
 */
f1Windows = [[[0, 85, 0], [0,0,-90]],
	     [[0,35,0], [0,0,-90]],
	     [[85, 113,0],[0,0,0]],
	     ];

/* Doors is a 3D array holding translate : rotate : boolean tuples, one per
 * door.
 * Booleans are [ doFrame, unused, unused ].
 */
f1Doors = [[[35, 113, 0], [0,0,0], [1,0,0]],
	   [[113, 35, 0], [0,0,-90], [0,0,0]],
          ];

/* Dims is a vector holding dimensions of the building 
 * [X, Y, height, wall thickness, floor/roof thickness].
 */
f2Dims = [120, // xdim
	     120, // ydim
	     62, // height
	     7, // wall thickness
	     4]; // floor/roof thickness

/* Windows is a 3D array holding translate : rotate pairs, one per window.
 * 
 */
f2Windows = [
	     [[0, 85, 0], [0,0,-90]],
	     [[0,35,0], [0,0,-90]],
	     [[113, 85, 0], [0,0,-90]],
	     [[113,35,0], [0,0,-90]],
	     [[85, 113,0],[0,0,0]],
	     [[35, 113,0],[0,0,0]],
	     ];

/* Doors is a 3D array holding translate : rotate : boolean tuples, one per
 * door.
 * Booleans are [ doFrame, unused, unused ].
 */
f2Doors = [ ];

/*
 * Local variables:
 *  mode: C
 *  c-indent-level: 4
 *  c-basic-offset: 4
 * End:
 *
 * vim: ts=8 sts=4 sw=4 expandtab
 */
