
// Module names are of the form poly_<inkscape-path-id>().  As a result,
// you can associate a polygon in this OpenSCAD program with the corresponding
// SVG element in the Inkscape document by looking for the XML element with
// the attribute id="inkscape-path-id".

// fudge value is used to ensure that subtracted solids are a tad taller
// in the z dimension than the polygon being subtracted from.  This helps
// keep the resulting .stl file manifold.
fudge = 0.1;

module poly_path4222(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[4.287500,-3.115000],[4.602500,-3.045000],[5.337500,-2.975000],[6.352500,-2.835000],[7.787500,-1.715000],[7.822500,-0.385000],[6.562500,0.770000],[9.817500,3.395000],[9.747500,3.535000],[9.957500,3.710000],[9.642500,4.235000],[7.612500,3.115000],[7.437500,3.710000],[7.122500,3.780000],[6.842500,3.570000],[6.422500,3.780000],[7.122500,4.340000],[7.122500,4.725000],[8.312500,5.635000],[8.662500,5.740000],[9.327500,6.265000],[10.167500,7.385000],[10.202500,7.490000],[10.167500,7.665000],[9.957500,7.735000],[9.677500,7.630000],[9.362500,7.490000],[9.012500,7.280000],[8.557500,7.035000],[8.382500,6.860000],[8.207500,6.685000],[8.032500,6.475000],[7.787500,6.195000],[7.437500,5.845000],[6.982500,5.425000],[6.107500,5.565000],[5.302500,4.865000],[5.302500,4.970000],[5.442500,5.180000],[5.652500,5.390000],[6.002500,5.670000],[6.387500,6.020000],[7.122500,6.405000],[8.172500,7.770000],[8.242500,7.910000],[8.172500,8.120000],[7.927500,8.155000],[7.787500,8.085000],[7.612500,8.015000],[7.297500,7.805000],[6.842500,7.560000],[6.562500,7.385000],[6.072500,6.790000],[5.477500,6.160000],[5.057500,5.845000],[4.252500,5.950000],[2.852500,4.795000],[2.747500,4.795000],[2.677500,4.795000],[2.677500,4.760000],[1.382500,3.640000],[1.032500,3.675000],[0.787500,3.710000],[0.717500,3.710000],[0.542500,3.780000],[-0.087500,3.220000],[-0.157500,2.940000],[-0.542500,2.590000],[-0.787500,2.625000],[-1.312500,2.135000],[-7.052500,7.525000],[-10.097500,4.375000],[-10.202500,4.270000],[-10.202500,3.780000],[-10.097500,3.255000],[-9.922500,2.590000],[-9.782500,2.030000],[-9.712500,1.785000],[-9.712500,1.785000],[-9.502500,1.505000],[-9.257500,1.295000],[-8.767500,0.805000],[-8.102500,0.175000],[-7.367500,-0.525000],[-5.407500,-2.345000],[-7.192500,-3.220000],[-7.367500,-3.325000],[-7.507500,-3.465000],[-7.542500,-3.710000],[-7.577500,-3.990000],[-7.577500,-4.270000],[-7.577500,-4.515000],[-7.227500,-4.690000],[-7.087500,-4.935000],[-6.597500,-5.250000],[-6.317500,-5.285000],[-6.107500,-5.285000],[-5.967500,-5.250000],[-4.952500,-5.705000],[-4.952500,-5.880000],[-4.847500,-6.195000],[-4.777500,-6.335000],[-4.672500,-6.475000],[-4.567500,-6.615000],[-4.497500,-6.685000],[-4.182500,-6.825000],[-3.657500,-6.895000],[-3.377500,-6.965000],[-3.237500,-7.315000],[-2.397500,-7.455000],[-2.397500,-7.805000],[-2.152500,-8.155000],[-1.872500,-8.015000],[-1.627500,-7.875000],[-1.417500,-7.630000],[-1.207500,-7.665000],[-1.137500,-7.665000],[-0.927500,-7.560000],[-0.612500,-7.280000],[-0.017500,-6.825000],[0.787500,-6.195000],[1.592500,-6.090000],[1.837500,-5.845000],[1.872500,-5.355000],[2.292500,-4.970000],[2.467500,-4.620000],[4.287500,-3.115000]]);
  }
}

poly_path4222(5);
