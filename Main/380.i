[Mesh]
  type = GeneratedMesh
  dim = 1
  xmin = 0
  xmax = 1
  nx = 1
[]

[Variables]
  [e]
    family = SCALAR
    order = FIRST
    initial_condition = 2.5e9
  []

  [N2]
    family = SCALAR
    order = FIRST
    initial_condition = 1.93e19
    #scaling = 1e-9
  []

  [O2]
    family = SCALAR
    order = FIRST
    initial_condition = 5.5e18
    #scaling = 1e-9
  []

  [N2p]
    family = SCALAR
    order = FIRST
    initial_condition = 2.25e9
    # scaling = 5e8
  []

  [O2p]
    family = SCALAR
    order = FIRST
    initial_condition = 2.5e8
    # scaling = 5e8
  []

  [O2n]
    family = SCALAR
    order = FIRST
    initial_condition = 0
    # scaling = 1e2
  []

  [N2D]
    family = SCALAR
    order = FIRST
    initial_condition = 0
    #scaling = 1e-9
  []

  [N2A3]
    family = SCALAR
    order = FIRST
    initial_condition = 0
    #scaling = 1e-9
  []

  [O2a]
    family = SCALAR
    order = FIRST
    initial_condition = 0
    # scaling = 1e-2
  []
  
  [N]
    family = SCALAR
    order = FIRST
    initial_condition = 0
    #scaling = 1e-9
  []

  [O]
    family = SCALAR
    order = FIRST
    initial_condition = 0
    #scaling = 1e-9
  []

  [O1D]
    family = SCALAR
    order = FIRST
    initial_condition = 0
    #scaling = 1e-9
  []
  
  [Np]
    family = SCALAR
    order = FIRST
    initial_condition = 0
    #scaling = 1e-9
  []

  [N3p]
    family = SCALAR
    order = FIRST
    initial_condition = 0
    #scaling = 1e-9
  []

  [Op]
    family = SCALAR
    order = FIRST
    initial_condition = 0
    #scaling = 1e-9
  []

  [On]
    family = SCALAR
    order = FIRST
    initial_condition = 0
    #scaling = 1e-9
  []
  
  [NO]
    family = SCALAR
    order = FIRST
    initial_condition = 0
    #scaling = 1e-9
  []
    
  [NOn]
    family = SCALAR
    order = FIRST
    initial_condition = 0
    #scaling = 1e-9
  []
    
  [NOp]
    family = SCALAR
    order = FIRST
    initial_condition = 0
    #scaling = 1e-9
  []
  
  [N2O]
    family = SCALAR
    order = FIRST
    initial_condition = 0
    #scaling = 1e-9
  []
  
  [N2Op]
    family = SCALAR
    order = FIRST
    initial_condition = 0
    #scaling = 1e-9
  []
  
  [N2On]
    family = SCALAR
    order = FIRST
    initial_condition = 0
    #scaling = 1e-9
  []
  
  [NO2]
    family = SCALAR
    order = FIRST
    initial_condition = 0
    #scaling = 1e-9
  []
  
  [NO2n]
    family = SCALAR
    order = FIRST
    initial_condition = 0
    #scaling = 1e-9
  []
  
  [NO2p]
    family = SCALAR
    order = FIRST
    initial_condition = 0
    #scaling = 1e-9
  []
  
  [NO3]
    family = SCALAR
    order = FIRST
    initial_condition = 0
    #scaling = 1e-9
  []
  
  [NO3n]
    family = SCALAR
    order = FIRST
    initial_condition = 0
    #scaling = 1e-9
  []

  [O3]
    family = SCALAR
    order = FIRST
    initial_condition = 0
    #scaling = 1e-9
  []

  [O3n]
    family = SCALAR
    order = FIRST
    initial_condition = 0
    #scaling = 1e-9
  []

  [O4p]
    family = SCALAR
    order = FIRST
    initial_condition = 0
    #scaling = 1e-9
  []

  [O4n]
    family = SCALAR
    order = FIRST
    initial_condition = 0
    #scaling = 1e-9
  []

  [N4p]
    family = SCALAR
    order = FIRST
    initial_condition = 0
    #scaling = 1e-9
  []

  [N2O5]
    family = SCALAR
    order = FIRST
    initial_condition = 0
    #scaling = 1e-9
  []

  [N2O3]
    family = SCALAR
    order = FIRST
    initial_condition = 0
    #scaling = 1e-9
  []

  [N2O4]
    family = SCALAR
    order = FIRST
    initial_condition = 0
    #scaling = 1e-9
  []
[]

[ScalarKernels]
  [de_dt]
    type = ODETimeDerivative
    variable = e
  []

  [dN2_dt]
    type = ODETimeDerivative
    variable = N2
  []

  [dO2_dt]
    type = ODETimeDerivative
    variable = O2
  []

  [dN2p_dt]
    type = ODETimeDerivative
    variable = N2p
  []

  [dO2p_dt]
    type = ODETimeDerivative
    variable = O2p
  []

  [dO2n_dt]
    type = ODETimeDerivative
    variable = O2n
  []

  [dN2D_dt]
    type = ODETimeDerivative
    variable = N2D
  []

  [dN2A3_dt]
    type = ODETimeDerivative
    variable = N2A3
  []

  [dO2a_dt]
    type = ODETimeDerivative
    variable = O2a
  []
  [dN_dt]
    type = ODETimeDerivative
    variable = N
  []

  [dO_dt]
    type = ODETimeDerivative
    variable = O
  []

  [dO1D_dt]
    type = ODETimeDerivative
    variable = O1D
  []
  
  [dNp_dt]
    type = ODETimeDerivative
    variable = Np
  []
  
  [dN3p_dt]
    type = ODETimeDerivative
    variable = N3p
  []

  [dOp_dt]
    type = ODETimeDerivative
    variable = Op
  []

  [dOn_dt]
    type = ODETimeDerivative
    variable = On
  []

  [dNO_dt]
    type = ODETimeDerivative
    variable = NO
  []

  [dNOn_dt]
    type = ODETimeDerivative
    variable = NOn
  []

  [dNOp_dt]
    type = ODETimeDerivative
    variable = NOp
  []

  [dN2O_dt]
    type = ODETimeDerivative
    variable = N2O
  []

  [dN2Op_dt]
    type = ODETimeDerivative
    variable = N2Op
  []

  [dN2On_dt]
    type = ODETimeDerivative
    variable = N2On
  []

  [dNO2_dt]
    type = ODETimeDerivative
    variable = NO2
  []

  [dNO2n_dt]
    type = ODETimeDerivative
    variable = NO2n
  []

  [dNO2p_dt]
    type = ODETimeDerivative
    variable = NO2p
  []

  [dNO3_dt]
    type = ODETimeDerivative
    variable = NO3
  []

  [dNO3-_dt]
    type = ODETimeDerivative
    variable = NO3n
  []

  [dO3_dt]
    type = ODETimeDerivative
    variable = O3
  []

  [dO3-_dt]
    type = ODETimeDerivative
    variable = O3n
  []

  [dO4p_dt]
    type = ODETimeDerivative
    variable = O4p
  []

  [dO4-_dt]
    type = ODETimeDerivative
    variable = O4n
  []

  [dN4p_dt]
    type = ODETimeDerivative
    variable = N4p
  []

  [dN2O5_dt]
    type = ODETimeDerivative
    variable = N2O5
  []
  
  [dN2O3_dt]
    type = ODETimeDerivative
    variable = N2O3
  []
  
  [dN2O4_dt]
    type = ODETimeDerivative
    variable = N2O4
  []
[]




















































[GlobalReactions]
  [Air]
    species = 'Np N2p N3p N4p Op O2p O4p NOp NO2p e On O2n O3n NOn NO2n NO3n N2D N2A3
     O1D N O O2a O3 NO N2O N2Op N2On NO2 NO3 N2O3 N2O4 N2O5 N2 O2 O4n'
    num_particles = '0 1 2 3 0 1 3 1 2 1 2 3 4 3 4 5 1 2 1 1 1 2 3 2 3 2 4 3 4 5 6 7 2 2 5'
    file_location = 'data'
    aux_species = 'M'

    # These are parameters required equation-based rate coefficients
    equation_constants = 'Tg pi kb'
    equation_values = '380 3.141 8.6173e-5'
    equation_variables = 'Te t'
    sampling_variable = 'reduced_field'
    electron_density = 'e'
    include_electrons = true
    track_rates = true

    reactions = '
    e + O -> e + O1D                   : {7.46e-9 * exp(-5.58/Te^1.47)}
    e + O -> e + e + Op                : {4.75e-9 * Te^0.61 * exp(-22.1/Te)}
    e + O -> On                        : 1e-31 * 5.5e18
    e + O -> O + O2n                   : 1e-31 * 5.5e18
    e -> O2n                           : {if(Te>1.1, 9.72e-9 * Te^-1.62 * exp(-14.2/Te)* 5.5e18, 2.78e-14 * 5.5e18)}
    e + e + Op -> O + e                : {7.1e-27 * ((0.66*Te/kb))^-4.5}
    e + e + O2p -> e                   : {7.18e-27 * ((0.66*Te/kb))^-4.5}
    e + e + Np -> N + e                : {5.4e-24 * ((0.66*Te/kb))^-4.5}
    e + e + NOp -> NO + e              : {7.18e-27 * ((0.66*Te/kb))^-4.5}
    e + e + N2p -> e                   : {7.18e-27 * ((0.66*Te/kb))^-4.5}
    e + Op + M -> O + M                : {4.31e-34 * ((0.66*Te/kb))^-1.5}
    e + O2p + M -> M                   : {4.31e-34 * ((0.66*Te/kb))^-1.5}
    e + Np -> N                        : {2.49e-29 * ((0.66*Te/kb))^-1.5}
    e + N2p ->                         : {4.31e-34 * ((0.66*Te/kb))^-1.5}
    e + NOp -> NO                      : {2.52e-29 * ((0.66*Te/kb))^-1.5}
    e -> e + O2a                       : {1.04e-9 * exp(-2.59/Te) * 5.5e18}
    e -> e + e + O2p                   : {9.54e-6 * Te^-1.05 * exp(-55.6/Te) * 5.5e18}
    e -> e + O + O                     : {2.03e-8 * Te^-0.1 * exp(-8.47/Te)  * 5.5e18}
    e -> On + O                        : {2.63e-10 * Te^-0.495 * exp(-5.65/Te) * 5.5e18}
    e -> O2n                           : {1.4e-29*(Tg/(0.66*Te/kb))*exp(-600/Tg)*exp(700*((0.66*Te/kb)-Tg)/((0.66*Te/kb)*Tg)) * 5.5e18 * 5.5e18}
    e -> O2n                           : {1.1e-31*(Tg/(0.66*Te/kb))^2*exp(-70/Tg)*exp(1500*((0.66*Te/kb)-Tg)/((0.66*Te/kb)*Tg)) * 5.5e18 * 1.93e19}
    e + O2a -> e + O + O               : {2.03e-8 * Te^-0.1 * exp(-8.47/Te)}
    e + O2a -> e + e + O2p             : {9.54e-6 * Te^-1.05 * exp(-55.6/Te)}
    e + O2p -> O + O                   : {1.68e-5 * (0.66*Te/kb)^-0.7}
    e + O3 -> O + e                    : {1.78e-6 * (Te^(-0.614))*exp(-11.5/Te)}
    e + O3 -> On                       : 1e-11
    e + O3 -> O2n + O                  : 1e-9
    e + N -> N2D + e                   : {5.06e-9 * exp(-10.8/(Te^(3.95)))}
    e + N -> Np + e + e                : {1.45e-11 * Te^2.58 * exp(-8.54/(Te))}
    e -> N2D + N + e              : {3.99e-11 * Te^2.24 * exp(-9.1/Te) * 1.93e19}
    e -> e + N2A3                 : {3.34e-10 * Te^-0.06 * exp(-8.5/Te) * 1.93e19}
    e -> e + e + N2p              : {1e-10 * Te^1.9 * exp(-14.6/Te) * 1.93e19}
    e + N2A3 -> e + e + N2p            : {1e-10 * Te^1.9 * exp(-14.6/Te)}
    e + N2p -> N + N                   : {2.8e-7* (300/(0.66*Te/kb))^0.5}
    e + NOp -> N + O                   : {4e-7 * (300/(0.66*Te/kb))^1.5}
    e + NOp -> N2D + O                 : {3e-7 * 300/(0.66*Te/kb)}
    e + NO2 -> NO + O + e              : {5.6e-9 * exp(-3.11/(0.66*Te/kb))}
    e + NO2p -> NO + O                 : {3.46e-6 / ((0.66*Te/kb)^0.5)}
    e + NO2p -> NO + O1D               : {3.46e-6 / ((0.66*Te/kb)^0.5)}
    e + N2O -> On                 : 2e-10
    e + N2O -> O + e              : {1.4e-9 * exp(-1.67/(0.66*Te/kb))}
    e + N2O -> O1D + e            : {1.2e-9 * exp(-3.64/(0.66*Te/kb))}
    e + N2O -> NO + N + e              : {1e-10 * exp(-4.93/(0.66*Te/kb))}    
    e + O4p ->                 : {2.42e-5 * ((0.66*Te/kb))^-0.5}
    e + NO3 + M -> NO3n + M            : 1e-30
    e + NO2 + M -> NO2n + M            : 1.5e-30
    e + O3 + M -> O3n + M              : 1e-31
    e + N2Op -> O                 : {3.46e-6* ((0.66*Te/kb)^-0.5)}
    e + O2a -> O2n           : {1.4e-30*(Tg/(0.66*Te/kb))*exp(-600/Tg)*exp(700*((0.66*Te/kb)-Tg)/((0.66*Te/kb)*Tg))  * 5.5e18}
    e + O2a -> O2n           : {1.1e-32*(Tg/(0.66*Te/kb))^2*exp(-70/Tg)*exp(1500*((0.66*Te/kb)-Tg)/((0.66*Te/kb)*Tg)) * 1.93e19}
    e + NO2 -> NO2n                    : 3e-11
    e + N3p -> N                  : {3.22e-8 * ((0.66*Te/kb)^-0.5)}
    e + N4p ->                : {3.21e-7 * ((0.66*Te/kb)^-0.5)}
    e + N4p -> N + N              : {3.13e-7 * ((0.66*Te/kb)^-0.41)}
    e + N2D -> N + e                   : {5.06e-9 * exp(-10.8/(Te^(3.95)))}
    e + NO + M -> NOn + M              : 1e-30
    e + NO2 -> On + NO                 : 1e-11
    e + O -> On             : 1e-31 * 1.93e19
    e -> O1D + O + e              : {1.82e-8 * Te^-0.13 * exp(-10.7/Te)  * 5.5e18}
    e + N2O5 -> NO2p + NO3 + e + e     : {2.43e-11 * Te^2.77 * exp(-5.62/Te)}
    O + O + O -> O                : {4.0e-33 * (300/Tg)^0.41 * 3.6}
    O + O + M -> O2a + M               : {6.93e-35 * (300/Tg)^0.63}
    O + O1D + M -> M              : 9.9e-33
    O + Op + M -> O2p + M              : 1e-29
    O + On -> e                   : 5e-10
    O + O2n -> O3 + e                  : 1.5e-10
    O + O2n -> On                 : {1.5e-10 * (300/Tg)^-0.5}
    O + O3 ->                 : {8e-12 * exp(-2060/Tg)}
    O + O3n -> e             : 3e-10
    O + O3n -> O2n              : 3.2e-10
    O + O2a -> O                  : 7e-16
    O + NO -> NO2            : {1e-31 * (300/Tg)^1.6 * 5.5e18}
    O + O4p -> O2p + O3                : 3e-10 
    O + N2D -> N + O1D                 : 2.8e-13
    O + N2O ->                : {1.66e-10 * exp(-14100/Tg)}
    O + N2O -> NO + NO                 : {1.15e-10 * exp(-13400/Tg)}
    O + N2O5 ->     : {3e-16 * (300/Tg)^-0.5}
    O + O3 + NO -> O3 + NO2            : {2e-31 * (300/Tg)^1.6}
    O + O3 + NO2 -> O3 + NO3           : {2e-31 * (300/Tg)^2}
    O + N2A3 -> O                : 2.7e-11
    O + Np -> Op + N                   : 1e-12
    O + Np + M -> NOp + M              : 1e-29
    O + N2A3 -> NO + N2D               : 1e-12
    O + N2A3 -> NO + N                 : 7e-12
    O + N2p -> Op                : {1e-11 * (300/Tg)^0.2}
    O + N2p -> NOp + N                 : {1.3e-10 * (300/Tg)^0.5}
    O + N4p -> Op           : 2.5e-10
    O + NO2 -> NO                 : {6.5e-12*exp(120/Tg)}
    O + NO2p -> NOp              : 8e-12
    O + NO2n -> NO3 + e                : 1e-12
    O + NO3 -> NO2                : 1.7e-11
    O + NO3n -> NO2 + O2n              : 2.5e-12
    O + NO3n -> NO2n            : 2.5e-12
    O + NO3n -> NO2 + e           : 2.5e-12
    O1D -> O + O2a                : {2.6e-11*exp(67/Tg)}
    O1D -> N2O           : 2.8e-36 * 5.5e18 * 1.93e19
    O1D + O2p -> O2a + Op              : {1e-12 * (300/Tg)^0.5}
    O1D + O3 -> O2a               : 2.65e-10
    O1D + O3 -> O + O              : 1.2e-10
    O1D + O3 ->                : 2.4e-10
    O1D + O3 -> N2O + O3          : 5e-36 * 1.93e19
    O1D -> N2O          : 2.8e-36 * 1.93e19 * 1.93e19
    O1D + NO -> N                 : 1.7e-10
    O1D + NO2 -> NO                : 3e-10
    O1D + N2O ->               : 4.83e-11
    O1D + N2O -> NO + NO               : 8.2e-11
    O1D + N2O -> N2O + O               : 5.5e-12
    O1D + M -> O + M                   : 5e-12
    On  -> O2n + O                 : 1e-10 * 5.5e18
    On + M -> O3n + M             : {1.1e-30*(300/Tg) * 5.5e18} 
    On + O2a -> O3 + e                 : 3e-10
    On + O2a -> O2n + O                : 1e-10
    On + O3 -> O3n + O                 : 5.3e-10
    Op -> O2p + O                 : 2.1e-11 * 5.5e18
    Op + O2n -> O                 : {2.7e-7 * (300/Tg)^0.5}
    Op + O2n + M -> O3 + M             : {2e-28 * (300/Tg)^2.5}
    Op + O3 -> O2p                 : 1e-10
    O2p + M -> O4p + M            : {2.4e-30 * (300/Tg)^3.2 * 5.5e18}
    O2a + O2a ->               : {9e-17 * exp(-560/Tg)}
    O2n + O2a -> e           : 2e-10
    O2a + O3 -> O            : {9.7e-13 * exp(-1564/Tg)}
    O2a ->                : {3e-18 * exp(-200/Tg) * 1.93e19}
    O2n + O2p ->              : {1e-7 * (300/Tg)^0.5}
    O2n + O2p + M -> M       : {1e-24 * (300/Tg)^2.5}
    O2p + O3n M -> O3 + M         : {1e-25 * (300/Tg)^2.5}
    O2n + O3 -> O3n               : 4e-10
    O2n + M -> M + e              : {2.7e-10 * (300/Tg)^-0.5 * exp(-5590/Tg)}
    O3 -> O            : {7.3e-10 * exp(-11400/Tg) * 1.93e19}
    O3 -> O             : {7.3e-10 * exp(-11400/Tg) * 5.5e18}
    O3 + O3 -> O + O3             : {1.4e-9 * exp(-11400/Tg)}
    O4p + M -> O2p + M            : {3.3e-6 * (300/Tg)^2.5 * exp(-2650/Tg)}
    N + N2p + M -> N3p + M             : {9e-30 * (400/Tg)}
    N + N3p ->  N2p              : 6.6e-11
    N + N4p -> Np           : 1e-11
    N2D + M -> N + M                   : 2.4e-14
    Np -> N + N2p                 : 4.45e-10 * 1.93e19
    Np M -> N3p + M             : {9e-30 * exp(400/Tg) * 1.93e19}
    N2p + M -> N4p + M            : {6.8e-29 * (300/Tg)^1.64 * 1.93e19}
    N2A3 ->              : 8.1e-13 * 5.5e18
    N2A3 + NO -> NO               : 1.5e-10
    N3p + M -> N2p + N + M             : 6.6e-11
    N4p + M -> N2p + M            : 2e-15
    Op + N + M -> NOp + M              : 1e-29
    Op -> NOp + N                 : {3e-12 * exp(-0.0031/Tg) * 1.93e19}
    Op + N2D -> Np + O                 : 1.3e-10
    Op + M -> NOp + N + M         : {6e-29*(300/Tg)^2 * 1.93e19}
    Op + NO -> NOp + O                 : 2.4e-11
    Op + NO -> O2p + N                 : 3e-12
    Op + NO2 -> NO2p + O               : 1.6e-9
    On -> N2O + e                 : 1e-12 * 1.93e19
    On + N2A3 -> O + e            : 2.2e-9
    On + NO -> NO2 + e                 : 2.6e-10
    On + NO + M -> NO2n + M            : 1e-29
    On + NO2 -> NO2n + O               : 1.2e-9
    N -> NO + O                   : {3.3e-12 * (300/Tg)^-1 * exp(-3150/Tg) * 5.5e18}
    N2D -> NO + O                 : {1.5e-12 * (300/Tg)^-0.5 * 5.5e18}
    N2D -> NO + O1D               : {6e-12 * (300/Tg)^-0.5 * 5.5e18}
    Np -> NOp + O                 : 2.5e-10 * 5.5e18
    Np -> Op + NO                 : 2.8e-11 * 5.5e18
    Np -> O2p + N                 : 3e-10 * 5.5e18
    N2A3 -> O + O            : 2.54e-12 * 5.5e18
    N2A3 -> O2a            : 1.29e-12 * 5.5e18
    N2A3 -> N2O + O               : 7.8e-14 * 5.5e18
    N2A3 -> N2O + O1D             : 3e-14 * 5.5e18
    N2p -> O2p              : {6e-11 * (300/Tg)^0.5 * 5.5e18}
    N3p -> NOp + N2O              : 3.6e-11 * 5.5e18
    N3p -> NO2p              : 1.5e-11 * 5.5e18
    N4p -> O2p         : 2.5e-10 * 5.5e18
    NO3 -> NO2 + O3               : 1e-17 * 5.5e18
    O2a + N2A3 -> O + O           : 2e-11
    O2p + N -> NOp + O                 : 1.2e-10
    O2p + NO -> NOp               : 4.4e-10
    O2p + NO2 -> NO2p             : 6.6e-10
    O2p + N2O5 -> NO2p + NO3      : 8.8e-10
    O2n + N -> NO2 + e                 : 5e-10
    O2n + N2A3 ->  e          : 2.1e-9
    O2n + NO2 -> NO2n             : 7e-10
    O3 + N2A3 -> O           : 3.36e-11
    O3 + N2A3 -> NO + NO + O           : 8.4e-12
    O3 + NO -> NO2                : {3e-12*exp(-1560/Tg)}
    O3 + NO2 -> NO          : 1e-18
    O3 + NO2 -> NO3               : {1e-13 * exp(-2470/Tg)}
    O3 + NO2n -> NO3n             : 1.8e-11
    O3 + NO3n -> NO2n        : 1e-13
    O3n + NO -> NO3n + O               : 1e-11
    O3n + NOp + M -> O3 + NO + M       : {2.0e-25 * (300/Tg)^2.5}
    O3n + NO2 -> NO2n + O3             : 7.0e-10
    O3n + NO2p + M -> O3 + NO2 + M     : {2.0e-25 * (300/Tg)^2.5}
    O3n + NO3 -> NO3n + O3             : 5e-10
    N + NO -> O                   : {8.2e-11 * exp(410/Tg)}
    N + NO2 -> NO + NO                 : {1.33e-12 * exp(220/Tg)}
    N + NO2 -> N2O + O                 : {5.8e-12 * exp(220/Tg)}
    N + NO3 -> NO + NO2                : 3e-12
    N + NO3n -> NO + NO2n              : 5e-12
    N2D + NO -> N2O                    : 6e-11
    N2A3 + NO2 -> NO + O          : 1.3e-11
    N2A3 + N2O -> O         : {9.3e-12 * exp(120/Tg)}
    N2A3 + N2O -> NO + N         : 1e-11
    NO + NO2 -> N2O3                   : {7.9e-12 * (300/Tg)^-1.4}
    NO + NO2p -> NOp + NO2             : 2.9e-10
    NO + NO3 -> NO2 + NO2              : {1.8e-11*exp(110/Tg)}
    NOp + N2O5 -> NO2p + NO2 + NO2     : 5.9e-10
    NO2 + NO2 -> N2O4        : {1.4e-33 * (300/Tg)^3.8 * 1.93e19}
    NO2 + NO2 -> N2O4        : {1.4e-33 * (300/Tg)^3.8 * 5.5e18}
    NO2 + NO3 -> N2O5        : {2.8e-30 * (300/Tg)^3.5 * 1.93e19}
    NO2 + NO3 -> N2O5        : {2.8e-30 * (300/Tg)^3.5 * 5.5e18}
    NO2n + N2O -> NO3n           : 5e-13
    NO2n + NO3 -> NO3n + NO2           : 5e-10
    N2O3 + M -> NO + NO2 + M : {1.91e-7 * (300/Tg)^8.7 * exp(-4882/Tg)}
    N2O4 + M -> NO2 + NO2 + M : {1.3e-5 * (300/Tg)^3.5 * exp(-6403/Tg)}
    N2O5 + M -> NO2 + NO3 + M : {1.33e-3 * (300/Tg)^3.5 * exp(-11000/Tg)}
    N + Np + M -> N2p + M              : 1e-29
    N + N2p -> Np               : 7.2e-13
    N2D + N2p -> Np              : 1e-10
    Op + NO2 -> NOp               : 5e-10
    Op + N2O -> O2p               : 2e-11
    O2n + NO3 -> NO3n             : 5e-10
    O3 + N2D -> NO                : 1e-10
    O3 + Np -> NOp                : 5e-10
    O2n + N2O -> O3n              : 9e-13
    O2n + N2O -> NO2n + NO             : 1e-14
    O4p + NO -> NOp         : 6.8e-10
    O4p + NO2 -> NO2p        : 3e-10
    N2p + N2O -> NOp + N          : 4e-10
    N2p + NO2 -> NOp + N2O             : 5e-11
    N2p + NO2 -> NO2p             : 3e-10
    N2p + NO -> NOp               : 3.3e-10
    N2D + NO -> O                 : 4.5e-11
    N2D + NO -> O1D               : 4.5e-11
    N2D + N2O -> NO               : {1.5e-11*exp(-570/Tg)}
    N2D + NO2 -> N2O + O               : {1.5e-12*exp(-570/Tg)}
    N2D + NO2 -> NO + NO               : {1.5e-12*exp(-570/Tg)}
    Np + N2O -> NOp              : 5.5e-10
    N2D -> N                : {5e-12*exp(-1620/Tg) * 1.93e19}
    Np + NO2 -> NO2p + N               : 3e-10
    Np + NO2 -> NOp + NO               : 5e-10
    Np + NO -> NOp + N                 : 8.0e-10
    Np + NO -> N2p + O                 : 3e-12
    Np + NO -> Op                : 1e-12
    NO2 + NO3 + O3 -> N2O5 + O3        : {6e-30 * (300/Tg)^3.5}
    NO3 + NO3 -> NO2 + NO2        : {5e-12 * exp(-3000/Tg)}
    NO2n + N2O5 -> NO3n + NO3 + NO     : 7e-10
    O2a + N2A3 -> O2a             : 8.1e-13
    N2A3 + N2O -> N2O            : 1.7e-10
    N + N2A3 -> N               : 2e-11
    N2A3 + N2A3 -> N2A3         : 2e-12
    N2A3 ->             : 3.7e-16 * 1.93e19
    N2p -> NO + NOp               : 1e-17 * 5.5e18
    NO + NO -> NO2 + NO2          : 1.4e-38 * 5.5e18
    O2a + N -> NO + O                  : {2e-14 * exp(-600/Tg)}
    O2a + NO -> NO2 + O                : 4.88e-18
    O2p -> NOp + NO               : 1e-17 * 1.93e19
    O2p + NO2 -> NOp + O3              : 1e-11
    O2n + NOp -> NO               : {2e-7 * (300/Tg)^2.5}
    NO + NO -> NO2 + NO2          : {3.3e-39 * exp(530/Tg) * 5.5e18}
    NO + NO2 -> N2O3        : {3.1e-34 *(300/Tg)^7.7 * 1.93e19}
    NO + NO2 -> N2O3         : {3.1e-34 *(300/Tg)^7.7 * 5.5e18}
    NO + NO2 + O3 -> N2O3 + O3         : {6.1e-34 *(300/Tg)^7.7}
    N3p + NO -> NOp + N           : 1.4e-10
    N3p + N2O -> NOp        : 5e-11
    N3p + NO2 -> NOp + NO        : 7e-11
    N3p + NO2 -> NO2p + N        : 7e-11
    N4p + NO -> NOp        : 3.9e-16
    N4p + NO2 -> NO2p       : 2.5e-10
    N4p + NO2 -> NOp + N2O       : 5e-11
    N + NO2p -> NO + NOp               : 8e-10
    Op + O2a -> O + O2p                : 2.1e-11
    On -> O3 + e                  : 5e-15 * 5.5e18
    O2a -> O3 + O                 : 3e-21 * 5.5e18
    O2a ->               : {3.8e-18 * exp(-205/Tg) * 5.5e18}
    O3 + O3 ->            : {7.47e-12 * exp(-9310/Tg)}
    O2a + O3 -> O3                : {6.8e-18 * exp(-200/Tg)}
    On + N -> NO + e                   : 2.6e-10
    O2a + O4p -> O2p         : 1e-10
    O3 + N -> NO                  : 5e-16
    O3 + N2p -> O2p + O          : 1e-10
    O3 + NOp -> NO2p              : 1e-15
    O3 + NO3 -> NO2          : 1e-17
    O3n + NO -> NO2n              : 2.6e-12
    O3n + NO2 -> NO3n            : 2.0e-11
    NO + NO3n ->  NO2n + NO2           : 3e-15
    NO + NO3 -> NO + NO           : {7.3e-12 * (300/Tg)^0.23 * exp(-947/Tg)}
    NO2 + NO2 + O3 -> N2O4 + O3        : {3e-33 * (300/Tg)^3.8}
    NO2 + NO2n -> NO3n + NO            : 4e-12
    NO2 + NO3 -> NO2 + NO         : {4.5e-14 * exp(-1260/Tg)}
    O2n -> e            : {1.9e-12 * (300/Tg)^-0.5 * exp(-4990/Tg) * 1.93e19}
    O2n -> e            : {2.7e-10 * (300/Tg)^-0.5 * exp(-5590/Tg) * 5.5e18}
    N2p + N2A3 -> N3p + N              : 1e-10
    N + NO2 ->                : {3.99e-13 * exp(220/Tg)}
    O2a ->                         : 2.7e-4
    N2A3 ->                        : 0.5 
    O1D -> O                : {6.4e-12 * exp(67/Tg) * 5.5e18}
    O1D + NO -> O + NO                 : 4e-11
    O1D -> O                 : {1.8e-11 * exp(107/Tg) * 1.93e19}
    O + O + M -> M                : {3.2e-35 * exp(900/Tg)}
    O + M -> O3 + M               : {3.4e-34 * (300/Tg)^1.2 * 5.5e18}
    O + NO + M -> NO2 + M              : {1e-31 * (300/Tg)^1.6}
    O + NO2 + M -> NO3 + M             : {9e-32 * (300/Tg)^2}
    O + N2D -> N + O                   : 7e-13
    O + N + M -> NO + M                : {6.3e-33 * exp(140/Tg)}
    N + N + M -> M                : {8.3e-34 * exp(500/Tg)}
    On + O3 -> e             : 3e-10
    O3n -> O3 + e            : 2.3e-11 * 5.5e18
    O3 + O3n -> e       : 3e-10
    On + NO3 -> NO3n + O               : 3e-10
    NOn + M -> NO + M + e              : 2.4e-13
    NOn + NO -> NO + NO + e            : 5e-12
    NOn + N2O -> NO + N2O + e          : 5.1e-12
    NOn + N2O -> NO2n             : 2.8e-12
    NOn + NO2 -> NO2n + NO             : 3e-10
    NOn + NO3 -> NO3n + NO             : 3e-10
    NOn -> O2n + NO               : 5e-10 * 5.5e18
    NOn + O3 -> O3n + NO               : 3e-10
    NOn + O -> On + NO                 : 3e-10
    On + O2p -> O + O + O              : 1e-7
    On + O4p -> O            : 1e-7 * 5.5e18
    On + N2p -> O + N + N              : 1e-7
    On + N3p -> O + N             : 1e-7
    On + N4p -> O           : 1e-7
    On + NOp -> O + N + O              : 1e-7
    On + NO2p -> O + NO + O            : 1e-7
    O2n + Op -> O + O + O              : 1e-7
    O2n + O2p -> O + O + O + O         : 1e-7
    O2n + O2p -> O + O            : 1e-7
    O2n + O4p ->          : 1e-7
    O2n + O4p -> O + O       : 1e-7
    O2n + Np -> O + O + N              : 1e-7
    O2n + N2p -> N + N            : 1e-7
    O2n + N2p -> O + O + N + N         : 1e-7
    O2n + N2p -> O + O           : 1e-7
    O2n + N3p -> N           : 1e-7
    O2n + N3p -> O + O + N        : 1e-7
    O2n + N4p ->          : 1e-7
    O2n + N4p -> O + O +        : 1e-7
    O2n + NOp -> N + O            : 1e-7
    O2n + NOp -> N + O + O + O         : 1e-7
    O2n + NO2p -> NO + O          : 1e-7
    O2n + NO2p -> NO + O          : 1e-7
    O3n + Op -> O + O             : 1e-7
    O3n + O2p -> O           : 1e-7
    O3n + O2p -> O + O + O        : 1e-7
    O3n + O4p -> O      : 1e-7
    O3n + O4p -> O3          : 1e-7
    O3n + Np -> O + N             : 1e-7
    O3n + N2p -> O           : 1e-7
    O3n + N2p -> N + N + O        : 1e-7
    O3n + N2p -> O3 + N + N            : 1e-7
    O3n + N3p -> N + O3           : 1e-7
    O3n + N3p -> N + O       : 1e-7
    O3n + N4p -> O3          : 1e-7
    O3n + NOp -> O3 + N + O            : 1e-7
    O3n + NOp -> O + NO           : 1e-7
    O3n + NOp -> O + O + N        : 1e-7
    O3n + NO2p -> O + NO2         : 1e-7
    O3n + NO2p -> O3 + O + NO          : 1e-7
    O3n + NO2p -> O + O + NO      : 1e-7
    NOn + N3p -> NO + N           : 1e-7
    NOn + N4p -> NO         : 1e-7
    NO2n + Op -> NO + O + O            : 1e-7
    NO2n + O2p -> NO2 + O + O          : 1e-7
    NO2n + O2p -> NO + O         : 1e-7
    NO2n + O2p -> NO + O + O + O       : 1e-7
    NO2n + O4p -> NO2        : 1e-7
    NO2n + Np -> NO + O + N            : 1e-7
    NO2n + N2p -> NO2 + N + N          : 1e-7
    NO2n + N2p -> NO + O         : 1e-7
    NO2n + N2p -> NO + O + N + N       : 1e-7
    NO2n + N3p -> NO + O + N      : 1e-7
    NO2n + N3p -> NO2 + N         : 1e-7
    NO2n + N4p -> NO2       : 1e-7
    NO2n + N4p -> NO + O    : 1e-7
    NO2n + NOp -> NO2 + N + O          : 1e-7
    NO2n + NOp -> NO + NO + O          : 1e-7
    NO2n + NOp -> NO + N + O + O       : 1e-7
    NO2n + NO2p -> NO2 + NO + O        : 1e-7
    NO2n + NO2p -> NO + NO + O + O     : 1e-7
    NO3n + Op -> NO2 + O + O           : 1e-7
    NO3n + O2p -> NO3 + O + O          : 1e-7
    NO3n + O2p -> NO2 + O         : 1e-7
    NO3n + O2p -> NO2 + O + O + O      : 1e-7
    NO3n + O4p -> NO3       : 1e-7
    NO3n + O4p -> NO2 + O    : 1e-7
    NO3n + Np -> NO2 + O + N           : 1e-7
    NO3n + N2p -> NO3 + N + N          : 1e-7
    NO3n + N2p -> NO2 + O         : 1e-7
    NO3n + N2p -> NO2 + O + N + N      : 1e-7
    NO3n + N3p -> NO3 + N         : 1e-7
    NO3n + N3p -> NO2 + O + N     : 1e-7
    NO3n + N4p -> NO3      : 1e-7
    NO3n + N4p -> NO2 + O   : 1e-7
    NO3n + NOp -> NO3 + N + O          : 1e-7
    NO3n + NOp -> NO2 + NO + O         : 1e-7
    NO3n + NO2p -> NO2 + NO2 + O       : 1e-7
    NO3n + NO2p -> NO + NO3 + O        : 1e-7
    NO3n + NO2p -> NO + NO2 + O + O    : 1e-7
    NOn + NOp -> NO + N + O            : 1e-7
    NOn + N2p -> NO + N + N            : 1e-7
    NOn + O2p -> NO + O + O            : 1e-7
    NOn + NO2p -> NO + NO + O          : 1e-7
    NOn + O4p -> NO         : 1e-7
    O3n + O2p -> O3 + O + O            : 1e-7
    On + Op -> O + O                   : {2e-7 * (300/Tg)^0.5}
    On + O2p -> O                 : {2e-7 * (300/Tg)^0.5}
    On + Np -> O + N                   : {2e-7 * (300/Tg)^0.5}
    On + N2p -> O                : {2e-7 * (300/Tg)^0.5}
    On + NOp -> O + NO                 : {2e-7 * (300/Tg)^0.5} 
    On + NO2p -> O + NO2               : {2e-7 * (300/Tg)^0.5} 
    O2n + NO2p -> NO2             : {2e-7 * (300/Tg)^0.5}
    O2n + Np -> N                 : {2e-7 * (300/Tg)^0.5}
    O2n + N2p ->              : {2e-7 * (300/Tg)^0.5}
    O3n + Op -> O3 + O                 : {2e-7 * (300/Tg)^0.5}
    O3n + O2p -> O3              : {2e-7 * (300/Tg)^0.5}
    O3n + Np -> O3 + N                 : {2e-7 * (300/Tg)^0.5}
    O3n + N2p -> O3               : {2e-7 * (300/Tg)^0.5}
    O3n + NOp -> O3 + NO               : {2e-7 * (300/Tg)^0.5}
    O3n + NO2p -> O3 + NO2             : {2e-7 * (300/Tg)^0.5}
    NOn + Op -> NO + O                 : {2e-7 * (300/Tg)^0.5}
    NOn + O2p -> NO               : {2e-7 * (300/Tg)^0.5}
    NOn + Np -> NO + N                 : {2e-7 * (300/Tg)^0.5}
    NOn + N2p -> NO               : {2e-7 * (300/Tg)^0.5}
    NOn + NOp -> NO + NO               : {2e-7 * (300/Tg)^0.5}
    NOn + NO2p -> NO + NO2             : {2e-7 * (300/Tg)^0.5}
    NO2n + O2p -> NO2             : {2e-7 * (300/Tg)^0.5}
    NO2n + N2p -> NO2             : {2e-7 * (300/Tg)^0.5}
    NO2n + Np -> NO2 + N               : {2e-7 * (300/Tg)^0.5}
    NO2n + NO2p -> NO2 + NO2           : {2e-7 * (300/Tg)^0.5}
    NO2n + NOp -> NO + NO2             : {2e-7 * (300/Tg)^0.5}
    NO2n + Op -> NO2 + O               : {2e-7 * (300/Tg)^0.5}
    NO3n + O2p -> NO3             : {2e-7 * (300/Tg)^0.5}
    NO3n + Op -> NO3 + O               : {2e-7 * (300/Tg)^0.5}
    NO3n + N2p -> NO3            : {2e-7 * (300/Tg)^0.5}
    NO3n + NO2p -> NO2 + NO3           : {2e-7 * (300/Tg)^0.5}
    NO3n + NOp -> NO + NO3             : {2e-7 * (300/Tg)^0.5}
    NO3n + Np -> NO3 + N               : {2e-7 * (300/Tg)^0.5}
    On + NOp + M -> O + NO + M         : {2e-25 * (300/Tg)^2.5}
    On + NOp + M -> NO2 + M            : {2e-25 * (300/Tg)^2.5}
    On + N2p + M -> O + M         : {2e-25 * (300/Tg)^2.5}
    On + N2p + M -> N2O + M            : {2e-25 * (300/Tg)^2.5}
    On + Np + M -> O + N + M           : {2e-25 * (300/Tg)^2.5}
    On + Np + M -> NO + M              : {2e-25 * (300/Tg)^2.5}
    On + O2p + M -> O + M         : {2e-25 * (300/Tg)^2.5}
    On + Op + M -> O + O + M           : {2e-25 * (300/Tg)^2.5}
    On + NO2p + M -> NO2 + O + M       : {2e-25 * (300/Tg)^2.5}
    On + NO2p + M -> NO3 + M           : {2e-25 * (300/Tg)^2.5}
    On + O4p + M -> O + M    : {2e-25 * (300/Tg)^2.5}
    O2n + Op + M -> O + M         : {2e-25 * (300/Tg)^2.5}
    O2n + Np + M -> N + M         : {2e-25 * (300/Tg)^2.5}
    O2n + Np + M -> O + O + N + M      : {2e-25 * (300/Tg)^2.5}
    O2n + NOp + M -> NO3 + M           : {2e-25 * (300/Tg)^2.5}
    O2n + NOp + M -> NO + M       : {2e-25 * (300/Tg)^2.5}
    O2n + NO2p + M -> NO2 + M     : {2e-25 * (300/Tg)^2.5}
    O2n + N2p + M -> M       : {2e-25 * (300/Tg)^2.5}
    O2n + O4p + M -> M  : {2e-25 * (300/Tg)^2.5}
    O3n + Op + M -> O3 + O + M         : {2e-25 * (300/Tg)^2.5}
    O3n + N2p + M -> O3 + M       : {2e-25 * (300/Tg)^2.5}
    O3n + Np M -> O3 + N + M           : {2e-25 * (300/Tg)^2.5}
    O3n + O4p + M -> O + M               : {2e-25 * (300/Tg)^2.5}
    NO2n + NO2p + M -> NO2 + NO2 + M   : {2e-25 * (300/Tg)^2.5}
    NO2n + Np + M -> NO2 + N + M       : {2e-25 * (300/Tg)^2.5}
    NO2n + Op + M -> NO2 + O + M       : {2e-25 * (300/Tg)^2.5}
    NO2n + Op + M -> NO3 + M           : {2e-25 * (300/Tg)^2.5}
    NO2n + O2p + M -> NO2 + M     : {2e-25 * (300/Tg)^2.5}
    NO2n + NOp + M -> NO + NO2 + M     : {2e-25 * (300/Tg)^2.5}
    NO2n + N2p + M -> NO2 + M     : {2e-25 * (300/Tg)^2.5}
    NO2n + O4p + M -> NO2 + M                 : {2e-25 * (300/Tg)^2.5}
    NO3n + Np + M -> NO3 + N + M       : {2e-25 * (300/Tg)^2.5}
    NO3n + Op + M -> NO3 + O + M       : {2e-25 * (300/Tg)^2.5}
    NO3n + O2p + M -> NO3 + M     : {2e-25 * (300/Tg)^2.5}
    NO3n + NOp + M -> NO + NO3 + M     : {2e-25 * (300/Tg)^2.5}
    NO3n + NO2p + M -> N2O5 + M        : {2e-25 * (300/Tg)^2.5}
    NO3n + NO2p + M -> NO2 + NO3 + M   : {2e-25 * (300/Tg)^2.5}
    NO3n + N2p + M -> NO3 + M     : {2e-25 * (300/Tg)^2.5}
    NO3n + O4p + M -> NO3 + M                 : {2e-25 * (300/Tg)^2.5}
    O2n + Np + M -> NO2 + M            : {2e-25 * (300/Tg)^2.5}
    O2n + Op + M -> O3 + M             : {2e-25 * (300/Tg)^2.5}
    On + O2p + M -> O3 + M             : {2e-25 * (300/Tg)^2.5}
    On + Op + M -> M              : {2e-25 * (300/Tg)^2.5}
    NOp + N + M -> N2Op + M            : {1e-29 * (300/Tg)}
    N2Op -> O2p + N2O             : 2.24e-10 * 5.5e18
    N2Op -> NOp + NO2             : 4.6e-11 * 5.5e18
    N2Op + NO2 -> NO2p + N2O           : 2.21e-10
    N2Op + NO2 -> NOp       : 4.3e-10
    N2Op + N2O -> NOp + NO        : 1.2e-17
    N2Op + NO -> NOp + N2O             : 2.3e-10
    On + N2O -> N2On + O               : 2e-12
    On + N2O -> NOn + NO               : 2e-10
    Op + N2O -> N2Op + O               : 6.3e-10
    Op + N2O -> NOp + NO               : 2.3e-10
    N4p + N2O -> N2Op       : 3e-10
    N3p + NO -> N2Op             : 7e-11
    N2p + N2O -> N2Op             : 6e-10
    N2On + N2p -> N2O            : {2e-7 * (300/Tg)^0.5}
    N2On + O2p -> N2O             : {2e-7 * (300/Tg)^0.5}
    N2On + Np -> N2O + N               : {2e-7 * (300/Tg)^0.5}
    N2On + Op -> N2O + O               : {2e-7 * (300/Tg)^0.5}
    N2On + NOp -> N2O + NO             : {2e-7 * (300/Tg)^0.5}
    N2On + NO2p -> N2O + NO2           : {2e-7 * (300/Tg)^0.5}
    N2On + N2Op -> N2O + N2O           : {2e-7 * (300/Tg)^0.5}
    N2On + N2p -> N2O + N + N          : 1e-7
    N2On + O2p -> N2O + O + O          : 1e-7
    N2On + N3p -> N2O + N         : 1e-7
    N2On + N4p -> N2O       : 1e-7
    N2On + O4p -> N2O        : 1e-7
    N2On + NOp -> N2O + N + O          : 1e-7
    N2On + NO2p -> N2O + NO + O        : 1e-7
    N2On + N2Op -> N2O + O        : 1e-7
    On + N2Op -> O + N2O               : {2e-7 * (300/Tg)^0.5}
    O2n + N2Op -> N2O             : {2e-7 * (300/Tg)^0.5}
    O3n + N2Op -> O3 + N2O             : {2e-7 * (300/Tg)^0.5}
    NOn + N2Op -> NO + N2O             : {2e-7 * (300/Tg)^0.5}
    NO2n + N2Op -> NO2 + N2O           : {2e-7 * (300/Tg)^0.5}
    NO3n + N2Op -> NO3 + N2O           : {2e-7 * (300/Tg)^0.5}
    On + N2Op -> O + O            : 1e-7
    O2n + N2Op ->  O          : 1e-7
    O3n + N2Op -> O3 + O          : 1e-7
    NOn + N2Op -> NO + O          : 1e-7
    NO2n + N2Op -> NO2 + O        : 1e-7
    NO3n + N2Op -> NO3  + O        : 1e-7
    O4n + O2a -> O2n        : 1e-10
    O4n + O -> On           : 3e-10
    O4n + NOp -> NO3             : 2.5e-10
    O4n + O -> O3n              : 4e-10
    O4n + M -> O2n + M            : {1e-10 * exp(-1044/Tg)}
    O2n + M -> O4n + M            : {3.5e-31 * (300/Tg) * 5.5e18}
    O4n + N2p ->          : 1e-7
    O4n + O2p ->        : 1e-7
    O4n + Np -> N            : 1e-7
    O4n + Op ->  O            : 1e-7
    O4n + NOp ->  NO          : 1e-7
    O4n + NO2p ->  NO2        : 1e-7
    O4n + N2Op ->  N2O        : 1e-7
    O4n + N3p -> N      : 1e-7
    O4n + N4p ->     : 1e-7
    O4n + O4p ->    : 1e-7
'
  []
[]

[AuxVariables]
  [reduced_field]
    order = FIRST
    family = SCALAR
    initial_condition = 191.29
  []

  [V]
    order = FIRST
    family = SCALAR
  []

  [Te]
    order = FIRST
    family = SCALAR
  []

  [Tg]
    order = FIRST
    family = SCALAR
    initial_condition = 380
  []
  
  [t]
    order = FIRST
    family = SCALAR
  []

  [e]
    order = FIRST
    family = SCALAR
  []
  
  [M]
    order = FIRST
    family = SCALAR
  []
[]

[Functions]
  [reduced_field_time2]
    type = ParsedFunction
    symbol_names = 'M V'
    symbol_values = 'M V'
    expression = 'V/(0.2*M*1e-17 + 1e-25)'
  []

  [reduced_field_time1]
    type = ParsedFunction
    expression = '0'
  []

  [tf]
    type = ParsedFunction
    expression = 't'
  []
[]

[AuxScalarKernels]
  [neutral_sum]
    type = VariableSum
    variable = M
    args = 'N2 O2 N2A3 N N2D O2a O O1D O3 NO N2O NO2 NO3 N2O3 N2O4 N2O5'
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [Voltage]
    type = ScalarLinearInterpolation
    variable = V
    use_time = true
    property_file = 'data/V_peak.txt'
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [tcheck]
    type = FunctionScalarAux
    variable = t
    function = tf
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [pon]
    type = FunctionScalarAux
    variable = reduced_field
    function = reduced_field_time2
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [temperature_calculation]
    type = ScalarLinearInterpolation
    variable = Te
    sampler = reduced_field
    property_file = 'data/electron_temperature.txt'
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []
[]

[Preconditioning]
  [smp]
    type = SMP
    full = true
  []
[]

[Debug]
  show_var_residual_norms = false
[]

[Executioner]
  type = Transient
  automatic_scaling = true
  compute_scaling_once = false
  end_time = 0.10695
  solve_type = NEWTON
  dtmin = 1e-15
  dtmax = 1e-3
  line_search = 'none'
  petsc_options = '-snes_converged_reason -snes_linesearch_monitor'
  petsc_options_iname = '-pc_factor_shift_type -pc_factor_shift_amount -snes_linesearch_minlambda'
  petsc_options_value = 'NONZERO 1.e-10 1e-3'
  steady_state_detection = false
  l_max_its = 20
  nl_max_its = 30
  [TimeSteppers]
    [adaptive]
      type = IterationAdaptiveDT
      cutback_factor = 0.925
      dt = 1e-10
      growth_factor = 1.01
    []
  []
[]

[Outputs]
  [out1]
    type = CSV
    interval = 10
  []

  [fin]
    type = CSV
    interval = 1000000000
    sync_times = '0.10695 0.07851 0.06201 0.05125 0.04366 0.03804 0.03369 0.03024 0.0274 0.0251 0.02313 0.02145 0.02
    0.07702 0.06963 0.06535 0.06255 0.06058 0.05912 0.05799 0.0571 0.02893 0.03066 0.03212 0.03336 0.03444'
  []

  [console]
    type = Console
    execute_scalars_on = 'none'
  []
[]