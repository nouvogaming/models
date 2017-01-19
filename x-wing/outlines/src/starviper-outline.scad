
// Module names are of the form poly_<inkscape-path-id>().  As a result,
// you can associate a polygon in this OpenSCAD program with the corresponding
// SVG element in the Inkscape document by looking for the XML element with
// the attribute id="inkscape-path-id".

// fudge value is used to ensure that subtracted solids are a tad taller
// in the z dimension than the polygon being subtracted from.  This helps
// keep the resulting .stl file manifold.
fudge = 0.1;

module poly_path4369(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[3.675000,1.837500],[3.780000,1.872500],[4.200000,2.397500],[4.235000,2.642500],[4.270000,2.782500],[4.445000,2.922500],[4.585000,3.132500],[4.515000,3.342500],[4.200000,3.272500],[3.955000,3.412500],[3.745000,3.202500],[3.640000,2.887500],[3.360000,2.852500],[3.220000,2.607500],[3.010000,2.747500],[2.835000,2.817500],[2.835000,3.132500],[2.800000,3.517500],[2.800000,3.867500],[2.870000,4.147500],[2.940000,4.182500],[3.010000,4.252500],[3.150000,4.882500],[3.815000,5.022500],[4.585000,5.022500],[4.760000,5.407500],[4.690000,5.967500],[4.515000,6.422500],[5.180000,6.002500],[5.845000,5.617500],[5.950000,6.002500],[5.950000,6.457500],[5.495000,7.087500],[5.075000,7.682500],[4.935000,8.032500],[4.795000,8.382500],[4.515000,8.697500],[4.200000,8.942500],[4.095000,8.907500],[4.025000,8.907500],[4.060000,8.277500],[4.025000,7.612500],[3.780000,7.717500],[3.570000,7.787500],[3.255000,8.382500],[2.940000,8.977500],[2.065000,8.697500],[1.575000,7.997500],[1.400000,7.017500],[1.365000,5.932500],[1.015000,5.827500],[0.665000,5.687500],[0.376250,7.140000],[-0.350000,8.347500],[-1.408750,9.187500],[-2.695000,9.607500],[-2.695000,9.397500],[-2.695000,8.942500],[-2.625000,8.487500],[-3.115000,8.452500],[-3.605000,8.382500],[-3.920000,8.732500],[-4.410000,9.187500],[-4.935000,9.642500],[-5.285000,9.887500],[-5.425000,9.887500],[-5.565000,10.027500],[-5.810000,9.922500],[-5.985000,10.097500],[-6.055000,10.097500],[-6.195000,10.027500],[-6.230000,9.712500],[-6.195000,9.432500],[-5.985000,9.047500],[-5.775000,8.662500],[-6.090000,8.032500],[-6.125000,7.262500],[-5.915000,7.017500],[-5.670000,6.702500],[-4.480000,7.122500],[-3.220000,7.402500],[-3.185000,7.367500],[-3.115000,6.562500],[-3.045000,5.757500],[-2.590000,5.722500],[-1.960000,5.582500],[-1.400000,5.442500],[-1.085000,5.232500],[-0.980000,4.882500],[-0.875000,4.567500],[-0.665000,4.392500],[-0.525000,4.147500],[-0.840000,3.692500],[-1.120000,3.832500],[-1.295000,3.622500],[-1.365000,3.307500],[-2.135000,3.202500],[-2.520000,2.887500],[-2.660000,2.397500],[-2.660000,1.767500],[-2.555000,1.732500],[-2.415000,1.662500],[-2.485000,1.487500],[-2.520000,1.312500],[-3.045000,1.102500],[-3.150000,0.262500],[-3.185000,-0.612500],[-3.220000,-0.962500],[-3.185000,-1.242500],[-2.870000,-1.452500],[-2.520000,-1.662500],[-2.555000,-1.837500],[-4.270000,-1.802500],[-5.880000,-1.767500],[-6.475000,-3.377500],[-6.265000,-4.567500],[-5.985000,-5.792500],[-6.370000,-7.262500],[-6.720000,-8.767500],[-6.510000,-8.732500],[-6.720000,-9.782500],[-6.510000,-9.887500],[-6.335000,-9.537500],[-6.195000,-9.187500],[-6.090000,-9.187500],[-5.985000,-9.222500],[-5.705000,-8.312500],[-5.355000,-7.542500],[-4.515000,-5.372500],[-3.640000,-3.272500],[-2.590000,-3.167500],[-2.660000,-4.427500],[-2.660000,-5.722500],[-2.590000,-5.687500],[-1.855000,-5.127500],[-1.225000,-4.392500],[0.140000,-2.082500],[0.770000,0.997500],[1.120000,1.137500],[1.365000,1.312500],[1.435000,1.102500],[1.435000,0.857500],[1.575000,0.822500],[1.680000,-1.172500],[2.100000,-3.167500],[2.765000,-4.847500],[3.710000,-6.002500],[3.955000,-4.742500],[4.165000,-3.552500],[4.690000,-3.692500],[4.865000,-5.827500],[5.075000,-7.997500],[5.075000,-8.312500],[5.040000,-8.732500],[5.040000,-9.152500],[5.075000,-9.397500],[5.145000,-9.432500],[5.215000,-9.537500],[5.215000,-9.852500],[5.215000,-10.097500],[5.495000,-10.062500],[5.565000,-9.817500],[5.600000,-9.432500],[5.670000,-9.082500],[5.810000,-9.117500],[5.880000,-8.242500],[5.985000,-7.367500],[5.985000,-6.807500],[6.020000,-6.282500],[6.265000,-5.442500],[6.545000,-4.637500],[6.720000,-3.762500],[6.650000,-2.677500],[5.565000,-2.397500],[4.375000,-2.292500],[4.375000,-2.082500],[4.690000,-1.907500],[4.935000,-1.732500],[5.005000,-1.347500],[5.040000,-0.682500],[5.075000,-0.017500],[5.075000,0.367500],[4.760000,0.647500],[4.270000,0.962500],[3.815000,1.242500],[3.570000,1.522500],[3.675000,1.837500]]);
  }
}

poly_path4369(5);
