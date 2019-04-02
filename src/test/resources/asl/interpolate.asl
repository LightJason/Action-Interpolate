/*
 * @cond LICENSE
 * ######################################################################################
 * # LGPL License                                                                       #
 * #                                                                                    #
 * # This file is part of the LightJason                                                #
 * # Copyright (c) 2015-19, LightJason (info@lightjason.org)                            #
 * # This program is free software: you can redistribute it and/or modify               #
 * # it under the terms of the GNU Lesser General Public License as                     #
 * # published by the Free Software Foundation, either version 3 of the                 #
 * # License, or (at your option) any later version.                                    #
 * #                                                                                    #
 * # This program is distributed in the hope that it will be useful,                    #
 * # but WITHOUT ANY WARRANTY; without even the implied warranty of                     #
 * # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the                      #
 * # GNU Lesser General Public License for more details.                                #
 * #                                                                                    #
 * # You should have received a copy of the GNU Lesser General Public License           #
 * # along with this program. If not, see http://www.gnu.org/licenses/                  #
 * ######################################################################################
 * @endcond
 */

// -----
// agent for testing math actions
// @iteration 2
// @testcount 1
// -----

// initial-goal
!test.

/**
 * base test
 */
+!test <-
    !testinterpolate
.


/**
 * test polynomial interpolation
 */
+!testinterpolate <-
        PI = .math/interpolate/create("neville", [-5,1,2,8,14], [7,3,7,4,8]);
        [PIV] = .math/interpolate/singleinterpolate( PI, 3 , 5, 10, -3);

        .test/print("interpolate", PIV);

        [R|_] = PIV;
        R = R == 10.057772636720006;
        .test/result( R, "interpolation fails" )
.
