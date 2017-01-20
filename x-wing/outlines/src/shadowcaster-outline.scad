
// Module names are of the form poly_<inkscape-path-id>().  As a result,
// you can associate a polygon in this OpenSCAD program with the corresponding
// SVG element in the Inkscape document by looking for the XML element with
// the attribute id="inkscape-path-id".

module shadowcasterOutline(h=5)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[-3.342500,-7.175000],[-3.482500,-7.245000],[-3.482500,-7.595000],[-2.432500,-7.980000],[0.262500,-6.580000],[0.472500,-6.685000],[1.242500,-6.370000],[4.217500,-4.760000],[5.932500,-5.355000],[4.987500,-6.475000],[4.847500,-6.685000],[4.742500,-6.895000],[4.637500,-7.140000],[4.427500,-7.525000],[4.462500,-7.980000],[4.322500,-8.120000],[4.182500,-8.330000],[3.972500,-8.575000],[4.077500,-8.575000],[3.972500,-8.575000],[3.972500,-8.715000],[4.077500,-8.715000],[3.972500,-8.785000],[4.077500,-8.855000],[4.182500,-8.960000],[4.077500,-8.960000],[4.182500,-9.030000],[4.217500,-9.100000],[4.217500,-9.170000],[4.322500,-9.100000],[4.357500,-9.170000],[4.357500,-9.240000],[4.462500,-9.240000],[4.567500,-9.240000],[4.567500,-9.345000],[4.637500,-9.345000],[4.707500,-9.345000],[4.707500,-9.450000],[4.777500,-9.450000],[4.777500,-9.345000],[4.882500,-9.345000],[4.882500,-9.450000],[4.987500,-9.450000],[4.987500,-9.345000],[5.022500,-9.345000],[5.407500,-8.855000],[5.547500,-8.855000],[5.792500,-8.785000],[6.037500,-8.750000],[6.247500,-8.575000],[6.422500,-8.505000],[6.562500,-8.470000],[6.597500,-8.400000],[6.877500,-8.015000],[7.402500,-7.420000],[8.137500,-6.580000],[8.207500,-6.580000],[9.047500,-5.565000],[9.047500,-5.355000],[9.117500,-5.285000],[9.187500,-5.040000],[9.677500,-4.550000],[9.677500,-4.480000],[9.747500,-4.305000],[9.817500,-4.270000],[9.817500,-4.165000],[9.992500,-3.990000],[10.027500,-3.955000],[10.027500,-3.850000],[10.062500,-3.710000],[10.447500,-3.115000],[10.587500,-3.080000],[10.727500,-3.010000],[10.867500,-2.940000],[10.972500,-2.800000],[11.112500,-2.695000],[11.252500,-2.555000],[11.357500,-2.555000],[12.687500,-1.015000],[12.687500,-0.875000],[12.757500,-0.770000],[12.827500,-0.630000],[12.862500,-0.490000],[12.932500,-0.280000],[13.072500,-0.070000],[13.492500,0.805000],[13.527500,0.980000],[13.247500,1.365000],[12.792500,1.610000],[12.547500,1.505000],[12.372500,1.435000],[12.127500,1.225000],[11.777500,0.980000],[11.497500,0.630000],[11.252500,0.630000],[11.112500,0.630000],[11.007500,0.560000],[10.972500,0.490000],[10.902500,0.420000],[9.992500,-0.840000],[8.942500,0.035000],[8.942500,1.680000],[8.417500,3.255000],[7.087500,4.900000],[7.052500,4.795000],[7.052500,4.970000],[7.472500,5.460000],[7.577500,5.530000],[7.612500,5.565000],[7.577500,5.670000],[7.647500,5.775000],[7.647500,5.845000],[7.752500,5.845000],[7.997500,6.160000],[7.997500,6.195000],[7.997500,6.335000],[7.822500,6.335000],[7.717500,6.230000],[7.612500,6.090000],[7.472500,5.950000],[7.472500,5.915000],[7.437500,5.845000],[7.367500,5.845000],[7.262500,5.740000],[7.297500,5.670000],[6.807500,5.110000],[6.702500,5.110000],[6.632500,5.040000],[6.597500,4.970000],[6.562500,4.900000],[6.562500,4.795000],[6.317500,4.900000],[6.457500,5.530000],[6.387500,5.670000],[6.387500,5.915000],[6.492500,6.370000],[6.597500,7.000000],[6.702500,7.140000],[6.772500,7.245000],[6.807500,7.350000],[7.192500,7.910000],[7.437500,8.260000],[7.367500,8.330000],[7.192500,8.330000],[6.982500,8.050000],[6.807500,7.805000],[6.387500,8.050000],[6.387500,8.155000],[6.317500,8.260000],[6.247500,8.260000],[5.652500,8.540000],[5.512500,8.435000],[5.407500,8.540000],[5.582500,8.785000],[5.652500,8.960000],[5.687500,8.995000],[5.652500,9.030000],[5.582500,9.065000],[5.582500,9.030000],[5.372500,8.785000],[5.022500,8.365000],[4.777500,8.365000],[4.672500,8.365000],[4.462500,8.155000],[4.392500,7.805000],[4.462500,7.665000],[4.497500,7.595000],[4.567500,7.595000],[4.567500,7.525000],[4.567500,7.350000],[3.972500,6.755000],[3.412500,7.105000],[3.552500,7.210000],[3.587500,7.210000],[3.657500,7.350000],[3.657500,7.385000],[3.657500,7.525000],[3.727500,7.525000],[3.972500,7.910000],[4.007500,7.945000],[3.972500,8.050000],[3.832500,8.050000],[3.692500,7.875000],[3.587500,7.735000],[3.552500,7.595000],[3.447500,7.595000],[3.342500,7.525000],[3.272500,7.525000],[3.272500,7.385000],[3.132500,7.210000],[2.782500,7.350000],[2.747500,7.350000],[2.607500,7.280000],[2.467500,7.140000],[2.292500,7.000000],[2.222500,7.000000],[1.732500,7.070000],[0.647500,7.105000],[-0.332500,7.105000],[-1.697500,6.930000],[-3.132500,6.510000],[-4.392500,5.845000],[-4.707500,5.880000],[-5.162500,5.950000],[-5.722500,6.055000],[-5.302500,6.755000],[-5.302500,6.895000],[-5.197500,7.035000],[-5.057500,7.350000],[-4.917500,7.525000],[-4.777500,7.665000],[-4.497500,8.540000],[-4.427500,8.715000],[-4.497500,9.030000],[-4.882500,9.450000],[-5.442500,9.415000],[-5.687500,9.275000],[-5.967500,9.030000],[-6.317500,8.715000],[-6.492500,8.435000],[-6.632500,8.470000],[-6.912500,8.260000],[-7.227500,7.805000],[-7.752500,7.000000],[-8.452500,5.950000],[-8.522500,5.810000],[-8.522500,5.530000],[-8.942500,4.970000],[-9.117500,4.935000],[-9.502500,4.480000],[-9.607500,4.515000],[-9.852500,4.305000],[-9.992500,4.165000],[-10.062500,3.990000],[-10.132500,3.850000],[-10.237500,3.850000],[-10.552500,3.640000],[-10.727500,3.430000],[-10.937500,3.150000],[-11.182500,2.800000],[-11.182500,2.590000],[-12.477500,0.875000],[-12.547500,0.770000],[-12.652500,0.665000],[-12.722500,0.560000],[-13.002500,-0.070000],[-13.072500,-0.315000],[-13.002500,-0.840000],[-13.422500,-1.330000],[-13.527500,-1.400000],[-13.527500,-1.540000],[-13.422500,-1.540000],[-13.527500,-1.610000],[-13.422500,-1.680000],[-13.352500,-1.680000],[-13.422500,-1.750000],[-13.352500,-1.855000],[-13.282500,-1.855000],[-13.282500,-1.925000],[-13.177500,-1.995000],[-13.177500,-1.925000],[-13.142500,-1.995000],[-13.142500,-2.065000],[-13.002500,-2.065000],[-12.932500,-2.065000],[-12.932500,-2.170000],[-12.862500,-2.170000],[-12.792500,-2.170000],[-12.792500,-2.275000],[-12.722500,-2.275000],[-12.617500,-2.170000],[-12.617500,-2.275000],[-12.547500,-2.275000],[-12.477500,-2.170000],[-12.407500,-2.170000],[-11.952500,-1.610000],[-11.742500,-1.575000],[-11.567500,-1.505000],[-11.357500,-1.400000],[-11.077500,-1.225000],[-10.937500,-1.120000],[-9.467500,0.805000],[-9.362500,0.875000],[-9.257500,1.085000],[-7.682500,0.210000],[-8.207500,-2.450000],[-7.437500,-3.360000],[-7.682500,-4.480000],[-7.857500,-5.285000],[-7.927500,-5.740000],[-6.772500,-6.195000],[-6.597500,-5.915000],[-3.342500,-7.175000]]);
  }
}
