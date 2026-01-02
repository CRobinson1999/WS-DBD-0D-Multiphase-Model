[Mesh]
  [geo]
    type = GeneratedMeshGenerator
    dim = 1
    xmin = 0
    xmax = 1
    nx = 10
  []
[]

[Variables]
  
  [N2Og]
    family = SCALAR
    order = FIRST
    initial_condition = 1541973867676600
  []
  [N2O3g]
    family = SCALAR
    order = FIRST
    initial_condition = 157369
  []
  [N2O4g]
    family = SCALAR
    order = FIRST
    initial_condition = 14352650
  []
  [N2O5g]
    family = SCALAR
    order = FIRST
    initial_condition = 4.5e8
  []
  [NOg]
    family = SCALAR
    order = FIRST
    initial_condition = 717973749
  []
  [NO2g]
    family = SCALAR
    order = FIRST
    initial_condition = 16493063987954
  []
  [NO3g]
    family = SCALAR
    order = FIRST
    initial_condition = 12463150402317
  []
  [Og]
    family = SCALAR
    order = FIRST
    initial_condition = 56078153
  []
  [O3g]
    family = SCALAR
    order = FIRST
    initial_condition = 4.4145758465659e+17
  []
  [dummy]
    family = SCALAR
    order = FIRST
    initial_condition = 1
  []
  
  [N2g]
    family = SCALAR
    order = FIRST
    initial_condition = 1.93e+19
  []
  
  [O2g]
    family = SCALAR
    order = FIRST
    initial_condition = 5.5e+18
  []

  [ONOOH]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []

  [N2O]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []

  [N2O3]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []

  [N2O4]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []

  [N2O5]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []

  [NO]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []

  [HNO]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []

  [NO2]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []

  [NO2n]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []

  [HNO2]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []

  [NO3]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []

  [NO3n]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []

  [HNO3]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []

  [HNOg]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []

  [HNO2g]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []

  [HNO3g]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []

  [H2Og]
    family = SCALAR
    order = FIRST
    initial_condition = 6e17
  []

  [H3Op]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []

  [OH]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []

  [OHn]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []

  [OHg]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []

  [H]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []

  [H2]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []

  [H2g]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []

  [H2O2]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []

  [H2O2g]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []

  [HO2]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []

  [HO2g]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []

  [O]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []

  [On]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []

  [O2n]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []

  [O3]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []

  [O3n]
    family = SCALAR
    order = FIRST
    initial_condition = 1e-10
  []
[]

[ScalarKernels]
  [dummy_dt]
    type = ODETimeDerivative
    variable = dummy
  []
  

  [dN2g_dt]
    type = ODETimeDerivative
    variable = N2g
  []

  [dO2g_dt]
    type = ODETimeDerivative
    variable = O2g
  []

  [dONOOH_dt]
    type = ODETimeDerivative
    variable = ONOOH
  []

  [dN2O_dt]
    type = ODETimeDerivative
    variable = N2O
  []

  [dN2Og_dt]
    type = ODETimeDerivative
    variable = N2Og
  []

  [dN2O3_dt]
    type = ODETimeDerivative
    variable = N2O3
  []

  [dN2O3g_dt]
    type = ODETimeDerivative
    variable = N2O3g
  []

  [dN2O4_dt]
    type = ODETimeDerivative
    variable = N2O4
  []

  [dN2O4g_dt]
    type = ODETimeDerivative
    variable = N2O4g
  []

  [dN2O5_dt]
    type = ODETimeDerivative
    variable = N2O5
  []

  [dN2O5g_dt]
    type = ODETimeDerivative
    variable = N2O5g
  []

  [dNO_dt]
    type = ODETimeDerivative
    variable = NO
  []

  [dNOg_dt]
    type = ODETimeDerivative
    variable = NOg
  []

  [dHNO_dt]
    type = ODETimeDerivative
    variable = HNO
  []

  [dNO2_dt]
    type = ODETimeDerivative
    variable = NO2
  []

  [dNO2g_dt]
    type = ODETimeDerivative
    variable = NO2g
  []

  [dNO2n_dt]
    type = ODETimeDerivative
    variable = NO2n
  []

  [dHNO2_dt]
    type = ODETimeDerivative
    variable = HNO2
  []

  [dNO3_dt]
    type = ODETimeDerivative
    variable = NO3
  []

  [dNO3g_dt]
    type = ODETimeDerivative
    variable = NO3g
  []

  [dNO3n_dt]
    type = ODETimeDerivative
    variable = NO3n
  []

  [dHNOg_dt]
    type = ODETimeDerivative
    variable = HNOg
  []

  [dHNO2g_dt]
    type = ODETimeDerivative
    variable = HNO2g
  []

  [dHNO3_dt]
    type = ODETimeDerivative
    variable = HNO3
  []

  [dHNO3g_dt]
    type = ODETimeDerivative
    variable = HNO3g
  []

  [dH2Og_dt]
    type = ODETimeDerivative
    variable = H2Og
  []

  [dH3Op_dt]
    type = ODETimeDerivative
    variable = H3Op
  []

  [dOH_dt]
    type = ODETimeDerivative
    variable = OH
  []

  [dOHn_dt]
    type = ODETimeDerivative
    variable = OHn
  []

  [dOHg_dt]
    type = ODETimeDerivative
    variable = OHg
  []

  [dH_dt]
    type = ODETimeDerivative
    variable = H
  []

  [dH2_dt]
    type = ODETimeDerivative
    variable = H2
  []

  [dH2g_dt]
    type = ODETimeDerivative
    variable = H2g
  []

  [dH2O2_dt]
    type = ODETimeDerivative
    variable = H2O2
  []

  [dH2O2g_dt]
    type = ODETimeDerivative
    variable = H2O2g
  []

  [dHO2_dt]
    type = ODETimeDerivative
    variable = HO2
  []

  [dHO2g_dt]
    type = ODETimeDerivative
    variable = HO2g
  []

  [dO_dt]
    type = ODETimeDerivative
    variable = O
  []

  [dOg_dt]
    type = ODETimeDerivative
    variable = Og
  []

  [dOn_dt]
    type = ODETimeDerivative
    variable = On
  []

  [dO3_dt]
    type = ODETimeDerivative
    variable = O3
  []

  [dO3g_dt]
    type = ODETimeDerivative
    variable = O3g
  []

  [dO2n_dt]
    type = ODETimeDerivative
    variable = O2n
  []

  [dO3n_dt]
    type = ODETimeDerivative
    variable = O3n
  []
[]
















































[GlobalReactions]
  [Air]
    species = 'dummy ONOOH ONOO N2O N2Og N2O5 N2O5g N2O3 N2O3g N2O4 N2O4g NO NOg HNO NO2 NO2g NO2n HNO2 NO3 NO3g NO3n HNO3 HNO3g H2Og H3Op
    OH OHn OHg H H2O2 H2O2g HO2 HO2g H2 H2g O Og On O2n O3 O3n O3g HNOg HNO2g N2g O2g'
    num_particles = '2 4'
    file_location = 'data'
    aux_species = 'M'

    # These are parameters required equation-based rate coefficients
    equation_constants = 'Tg pi kb bd ld Vf Nb lowk
    N2Ok N2O3k N2O4k N2O5k NOk NO2k NO3k Ok O3k'
    equation_values = '300 3.1415926 8.6173e-5 0.346 1.654 27.91 41.31 1e-10
    1541973867676600 157369 14352650 373366649979570 717973749 16493063987954 12463150402317 56078153 4.4145758465659e+17'
    equation_variables = 't trig N2h N2rev OH OHg OHn OHh OHrev H H2h H2rev H2 H2g HO2 HO2g HO2h HO2rev
    H2O2 H2O2g H2O2h H2O2rev N2Oh N2Orev N2O N2Og N2O3h N2O3rev N2O3 N2O3g N2O4h N2O4rev N2O4 N2O4g N2O5h N2O5rev
    N2O5 N2O5g NOh NOrev NO NOg NO2h NO2rev NO2 NO2g NO2n NO3h NO3rev NO3g NO3 NO3n HNOg HNO HNOh HNOrev HNO2g
    HNO2 HNO2h HNO2rev HNO3g HNO3 HNO3h HNO3rev Oh Orev O Og O3h O3rev O3 O3g'
    include_electrons = false
    track_rates = false

    reactions = '
    N2Og -> N2O                                                 : {if(trig>0.995, 0, if(N2O/N2Og<0.6, 0.113*Nb*(N2Oh*0.01)/((bd/pi)^2*Vf),0))}
    N2Og ->                                                     : {if(trig>0.995, 0, if(N2O/N2Og<0.6, 0.113*Nb*(N2Oh*0.01)/((bd/pi)^2),0))}
    N2O -> N2Og                                                 : {if(trig>0.995, 0, if(N2O/N2Og>0.6, 1.92e-5*Nb*(N2Orev*1.8e-5)/((ld/pi)^2),0))}
    N2O ->                                                      : {if(trig>0.995, 0, if(N2O/N2Og>0.6, 1.92e-5*Nb*(N2Orev*1.8e-5)/((ld/pi)^2*Vf),0))}
    N2O3g -> N2O3                                               : {if(trig>0.995, 0, if(N2O3/N2O3g<600, 0.1*Nb*(N2O3h*0.01)/((bd/pi)^2*Vf),0))}
    N2O3g ->                                                    : {if(trig>0.995, 0, if(N2O3/N2O3g<600, 0.1*Nb*(N2O3h*0.01)/((bd/pi)^2),0))}
    N2O3 -> N2O3g                                               : {if(trig>0.995, 0, if(N2O3/N2O3g>600, 1.56e-5*Nb*(N2O3rev*1.7e-5)/((ld/pi)^2),0))}
    N2O3 ->                                                     : {if(trig>0.995, 0, if(N2O3/N2O3g>600, 1.56e-5*Nb*(N2O3rev*1.7e-5)/((ld/pi)^2*Vf),0))}
    N2O4g -> N2O4                                               : {if(trig>0.995, 0, if(N2O4/N2O4g<36.9, 0.099*Nb*(N2O4h*0.01)/((bd/pi)^2*Vf),0))}
    N2O4g ->                                                    : {if(trig>0.995, 0, if(N2O4/N2O4g<36.9, 0.099*Nb*(N2O4h*0.01)/((bd/pi)^2),0))}
    N2O4 -> N2O4g                                               : {if(trig>0.995, 0, if(N2O4/N2O4g>36.9, 1.44e-5*Nb*(N2O4rev*1.6e-5)/((ld/pi)^2),0))}
    N2O4 ->                                                     : {if(trig>0.995, 0, if(N2O4/N2O4g>36.9, 1.44e-5*Nb*(N2O4rev*1.6e-5)/((ld/pi)^2*Vf),0))}
    N2O5g -> N2O5                                               : {if(trig>0.995, 0, if(N2O5/N2O5g<48.5, 0.095*Nb*(N2O5h*0.01)/((bd/pi)^2*Vf),0))}
    N2O5g ->                                                    : {if(trig>0.995, 0, if(N2O5/N2O5g<48.5, 0.095*Nb*(N2O5h*0.01)/((bd/pi)^2),0))}
    N2O5 -> N2O5g                                               : {if(trig>0.995, 0, if(N2O5/N2O5g>48.5, 1.89e-5*Nb*(N2O5rev*1.5e-5)/((ld/pi)^2),0))}
    N2O5 ->                                                     : {if(trig>0.995, 0, if(N2O5/N2O5g>48.5, 1.89e-5*Nb*(N2O5rev*1.5e-5)/((ld/pi)^2*Vf),0))}
    Og -> O                                                     : {if(trig>0.995, 0, if(O/Og<1, 0.215*Nb*(Oh*0.01)/((bd/pi)^2*Vf),0))}
    Og ->                                                       : {if(trig>0.995, 0, if(O/Og<1, 0.215*Nb*(Oh*0.01)/((bd/pi)^2),0))}
    O -> Og                                                     : {if(trig>0.995, 0, if(O/Og>1, 2.4e-5*Nb*(Orev*3e-5)/((ld/pi)^2),0))}
    O ->                                                        : {if(trig>0.995, 0, if(O/Og>1, 2.4e-5*Nb*(Orev*3e-5)/((ld/pi)^2*Vf),0))}
    O3g -> O3                                                   : {if(trig>0.995, 0, if(O3/O3g<0.3, 0.184*Nb*(O3h*0.01)/((bd/pi)^2*Vf),0))}
    O3g ->                                                      : {if(trig>0.995, 0, if(O3/O3g<0.3, 0.184*Nb*(O3h*0.01)/((bd/pi)^2),0))}
    O3 -> O3g                                                   : {if(trig>0.995, 0, if(O3/O3g>0.3, 2.14e-5*Nb*(O3rev*1.8e-5)/((ld/pi)^2),0))}
    O3 ->                                                       : {if(trig>0.995, 0, if(O3/O3g>0.3, 2.14e-5*Nb*(O3rev*1.8e-5)/((ld/pi)^2*Vf),0))}
    NOg -> NO                                                   : {if(trig>0.995, 0, if(NO/NOg<0.044, 0.232*Nb*(NOh*0.01)/((bd/pi)^2*Vf),0))}
    NOg ->                                                      : {if(trig>0.995, 0, if(NO/NOg<0.044, 0.232*Nb*(NOh*0.01)/((bd/pi)^2),0))}
    NO -> NOg                                                   : {if(trig>0.995, 0, if(NO/NOg>0.044, 2.21e-5*Nb*(NOrev*1.9e-5)/((ld/pi)^2),0))}
    NO ->                                                       : {if(trig>0.995, 0, if(NO/NOg>0.044, 2.21e-5*Nb*(NOrev*1.9e-5)/((ld/pi)^2*Vf),0))}
    NO2g -> NO2                                                 : {if(trig>0.995, 0, if(NO2/NO2g<0.28, 0.174*Nb*(NO2h*0.01)/((bd/pi)^2*Vf),0))}
    NO2g ->                                                     : {if(trig>0.995, 0, if(NO2/NO2g<0.28, 0.174*Nb*(NO2h*0.01)/((bd/pi)^2),0))}
    NO2 -> NO2g                                                 : {if(trig>0.995, 0, if(NO2/NO2g>0.28, 1.7e-5*Nb*(NO2rev*1.7e-5)/((ld/pi)^2),0))}
    NO2 ->                                                      : {if(trig>0.995, 0, if(NO2/NO2g>0.28, 1.7e-5*Nb*(NO2rev*1.7e-5)/((ld/pi)^2*Vf),0))}
    NO3g -> NO3                                                 : {if(trig>0.995, 0, if(NO3/NO3g<41.5, 0.121*Nb*(NO3h*0.01)/((bd/pi)^2*Vf),0))}
    NO3g ->                                                     : {if(trig>0.995, 0, if(NO3/NO3g<41.5, 0.121*Nb*(NO3h*0.01)/((bd/pi)^2),0))}
    NO3 -> NO3g                                                 : {if(trig>0.995, 0, if(NO3/NO3g>41.5, 3.17e-5*Nb*(NO3rev*1.7e-5)/((ld/pi)^2),0))}
    NO3 ->                                                      : {if(trig>0.995, 0, if(NO3/NO3g>41.5, 3.17e-5*Nb*(NO3rev*1.7e-5)/((ld/pi)^2*Vf),0))}
    HNOg -> HNO                                                 : {if(trig>0.995, 0, if(HNO/HNOg<1150, 0.102*Nb*(HNOh*0.118)/((bd/pi)^2*Vf),0))}
    HNOg ->                                                     : {if(trig>0.995, 0, if(HNO/HNOg<1150, 0.102*Nb*(HNOh*0.118)/((bd/pi)^2),0))}
    HNO -> HNOg                                                 : {if(trig>0.995, 0, if(HNO/HNOg>1150, 1.85e-5*Nb*(HNOrev*1.7e-5)/((ld/pi)^2),0))}
    HNO ->                                                      : {if(trig>0.995, 0, if(HNO/HNOg>1150, 1.85e-5*Nb*(HNOrev*1.7e-5)/((ld/pi)^2*Vf),0))}
    HNO2g -> HNO2                                               : {if(trig>0.995, 0, if(HNO2/HNO2g<1150, 0.102*Nb*(HNO2h*0.118)/((bd/pi)^2*Vf),0))}
    HNO2g ->                                                    : {if(trig>0.995, 0, if(HNO2/HNO2g<1150, 0.102*Nb*(HNO2h*0.118)/((bd/pi)^2),0))}
    HNO2 -> HNO2g                                               : {if(trig>0.995, 0, if(HNO2/HNO2g>1150, 1.85e-5*Nb*(HNO2rev*1.7e-5)/((ld/pi)^2),0))}
    HNO2 ->                                                     : {if(trig>0.995, 0, if(HNO2/HNO2g>1150, 1.85e-5*Nb*(HNO2rev*1.7e-5)/((ld/pi)^2*Vf),0))}
    HNO3g -> HNO3                                               : {if(trig>0.995, 0, if(HNO3/HNO3g<4.8e6, 0.12*Nb*(HNO3h*0.116)/((bd/pi)^2*Vf),0))}
    HNO3g ->                                                    : {if(trig>0.995, 0, if(HNO3/HNO3g<4.8e6, 0.12*Nb*(HNO3h*0.116)/((bd/pi)^2),0))}
    HNO3 -> HNO3g                                               : {if(trig>0.995, 0, if(HNO3/HNO3g>4.8e6, 3.17e-5*Nb*(HNO3rev*3.17e-5)/((ld/pi)^2),0))}
    HNO3 ->                                                     : {if(trig>0.995, 0, if(HNO3/HNO3g>4.8e6, 3.17e-5*Nb*(HNO3rev*3.17e-5)/((ld/pi)^2*Vf),0))}
    OHg -> OH                                                   : {if(trig>0.995, 0, if(OH/OHg<620, 0.253*Nb*(OHh*0.01)/((bd/pi)^2*Vf),0))}
    OHg ->                                                      : {if(trig>0.995, 0, if(OH/OHg<620, 0.253*Nb*(OHh*0.01)/((bd/pi)^2),0))}
    OH -> OHg                                                   : {if(trig>0.995, 0, if(OH/OHg>620, 2.19e-5*Nb*(OHrev*1.9e-5)/((ld/pi)^2),0))}
    OH ->                                                       : {if(trig>0.995, 0, if(OH/OHg>620, 2.19e-5*Nb*(OHrev*1.9e-5)/((ld/pi)^2*Vf),0))}
    H2g -> H2                                                   : {if(trig>0.995, 0, if(H2/H2g<0.018, 0.8*Nb*(H2h*0.01)/((bd/pi)^2*Vf),0))}
    H2g ->                                                      : {if(trig>0.995, 0, if(H2/H2g<0.018, 0.8*Nb*(H2h*0.01)/((bd/pi)^2),0))}
    H2 -> H2g                                                   : {if(trig>0.995, 0, if(H2/H2g>0.018, 7e-5*Nb*(H2rev*1.9e-5)/((ld/pi)^2),0))}
    H2 ->                                                       : {if(trig>0.995, 0, if(H2/H2g>0.018, 7e-5*Nb*(H2rev*1.9e-5)/((ld/pi)^2*Vf),0))}
    HO2g -> HO2                                                 : {if(trig>0.995, 0, if(HO2/HO2g<1.32e5, 0.104*Nb*(HO2h*0.01)/((bd/pi)^2*Vf),0))}
    HO2g ->                                                     : {if(trig>0.995, 0, if(HO2/HO2g<1.32e5, 0.104*Nb*(HO2h*0.01)/((bd/pi)^2),0))}
    HO2 -> HO2g                                                 : {if(trig>0.995, 0, if(HO2/HO2g>1.32e5, 4.5e-5*Nb*(HO2rev*1.9e-5)/((ld/pi)^2),0))}
    HO2 ->                                                      : {if(trig>0.995, 0, if(HO2/HO2g>1.32e5, 4.5e-5*Nb*(HO2rev*1.9e-5)/((ld/pi)^2*Vf),0))}
    H2O2g -> H2O2                                               : {if(trig>0.995, 0, if(H2O2/H2O2g<1.92e6, 0.153*Nb*(H2O2h*0.01)/((bd/pi)^2*Vf),0))}
    H2O2g ->                                                    : {if(trig>0.995, 0, if(H2O2/H2O2g<1.92e6, 0.153*Nb*(H2O2h*0.01)/((bd/pi)^2),0))}
    H2O2 -> H2O2g                                               : {if(trig>0.995, 0, if(H2O2/H2O2g>1.92e6, 3.5e-5*Nb*(H2O2rev*1.9e-5)/((ld/pi)^2),0))}
    H2O2 ->                                                     : {if(trig>0.995, 0, if(H2O2/H2O2g>1.92e6, 3.5e-5*Nb*(H2O2rev*1.9e-5)/((ld/pi)^2*Vf),0))}
    dummy -> OH + H + dummy                                     : {if(trig>0.995, 0, 3.33e2)}
    O -> O3                                                : {if(trig>0.995, 0, 1.782e17 * 5e-12)}
    O3 -> O                                                : {if(trig>0.995, 0, 3e-6)}
    NO + NO -> NO2 + NO2                                   : {if(trig>0.995, 0, 1.782e17 * 6.28e-36)}
    H2 + H2O2 -> H + OH                                         : {if(trig>0.995, 0, 1e-14)}
    NO + NO -> NO2 + NO2                                   : {if(trig>0.995, 0, 1.782e17 * 7.7e-36)}
    NO2n + O3 -> NO3n                                      : {if(trig>0.995, 0, 6.15e-16)}
    HNO + O3 -> HNO2                                       : {if(trig>0.995, 0, 9.61e-15)}
    NO2n + N2O -> NO3n                                     : {if(trig>0.995, 0, 5e-13)}
    Og + Og + Og -> Og                                    : {if(trig>0.995, 0, 4.0e-33 * (300/Tg)^0.41 * 3.6)}
    Og + O3g ->                                        : {if(trig>0.995, 0, 8e-12 * exp(-2060/Tg))}
    Og + NOg ->  NO2g                                : {if(trig>0.995, 0, 5.5e18 * 1e-31 * (300/Tg)^1.6)}
    Og + N2Og ->                                      : {if(trig>0.995, 0, 1.66e-10 * exp(-14100/Tg))}
    Og + N2Og -> NOg + NOg                                      : {if(trig>0.995, 0, 1.15e-10 * exp(-13400/Tg))}
    Og + N2O5g ->                          : {if(trig>0.995, 0, 3e-16 * (300/Tg)^-0.5)}
    Og + NO2g -> NOg                                      : {if(trig>0.995, 0, 6.5e-12*exp(120/Tg))}
    Og + NO3g -> NO2g                                     : {if(trig>0.995, 0, 1.7e-11)}
    O3g -> Og                                : {if(trig>0.995, 0, 1.93e19 * 7.3e-10 * exp(-11400/Tg))}
    O3g -> Og                                 : {if(trig>0.995, 0, 5.5e18 * 7.3e-10 * exp(-11400/Tg))}
    NO3g -> NO2g + O3g                                    : {if(trig>0.995, 0, 5.5e18 * 1e-17)}
    O3g + NOg -> NO2g                                     : {if(trig>0.995, 0, 3e-12*exp(-1560/Tg))}
    O3g + NO2g -> NOg                                : {if(trig>0.995, 0, 1e-18)}
    O3g + NO2g -> NO3g                                     : {if(trig>0.995, 0, 1e-13 * exp(-2470/Tg))}
    NOg + NO2g -> N2O3g                                         : {if(trig>0.995, 0, 7.9e-12 * (300/Tg)^-1.4)}
    NOg + NO3g -> NO2g + NO2g                                   : {if(trig>0.995, 0, 1.8e-11*exp(110/Tg))}
    NO2g + NO2g -> N2O4g                            : {if(trig>0.995, 0, 1.93e19 * 1.4e-33 * (300/Tg)^3.8)}
    NO2g + NO2g -> N2O4g                            : {if(trig>0.995, 0, 5.5e18 * 1.4e-33 * (300/Tg)^3.8)}
    NO2g + NO3g -> N2O5g                            : {if(trig>0.995, 0, 1.93e19 * 2.8e-30 * (300/Tg)^3.5)}
    NO2g + NO3g -> N2O5g                            : {if(trig>0.995, 0, 5.5e18 * 2.8e-30 * (300/Tg)^3.5)}
    N2O3g + M -> NOg + NO2g + M                                 : {if(trig>0.995, 0, 1.91e-7 * (300/Tg)^8.7 * exp(-4882/Tg))}
    N2O4g + M -> NO2g + NO2g + M                                : {if(trig>0.995, 0, 1.3e-5 * (300/Tg)^3.5 * exp(-6403/Tg))}
    N2O5g + M -> NO2g + NO3g + M                                : {if(trig>0.995, 0, 1.33e-3 * (300/Tg)^3.5 * exp(-11000/Tg))}
    NOg + NOg -> NO2g + NO2g                              : {if(trig>0.995, 0, 5.5e18 * 1.4e-38)}
    NOg + NOg -> NO2g + NO2g                              : {if(trig>0.995, 0, 5.5e18 * 3.3e-39 * exp(530/Tg))}
    O3g + NO3g -> NO2g                               : {if(trig>0.995, 0, 1e-17)}
    NO2g + NO3g -> NO2g + NOg                             : {if(trig>0.995, 0, 4.5e-14 * exp(-1260/Tg))}
    Og + Og + M -> M                                      : {if(trig>0.995, 0, 3.2e-35 * exp(900/Tg))}
    Og + M -> O3g + M                                     : {if(trig>0.995, 0, 5.5e18 * 3.4e-34 * (300/Tg)^1.2)}
    Og + NOg + M -> NO2g + M                                    : {if(trig>0.995, 0, 1e-31 * (300/Tg)^1.6)}
    Og + NO2g + M -> NO3g + M                                   : {if(trig>0.995, 0, 9e-32 * (300/Tg)^2)}
    O3g + H2g -> Og + H2g                                 : {if(trig>0.995, 0, 1.4e-9 * exp(-11400/Tg))}
    O3g + H2Og -> Og + H2Og                               : {if(trig>0.995, 0, 4e-9 * exp(-11400/Tg))}
    Og + NOg + H2g -> NO2g + H2g                                : {if(trig>0.995, 0, 2e-31 * (300/Tg)^1.6)}
    Og + NOg + H2Og -> NO2g + H2Og                              : {if(trig>0.995, 0, 5e-31 * (300/Tg)^1.6)}
    Og + NO2g + H2g -> NO3g + H2g                               : {if(trig>0.995, 0, 2e-31 * (300/Tg)^1.6)}
    Og + NO2g + H2Og -> NO3g + H2Og                             : {if(trig>0.995, 0, 5e-31 * (300/Tg)^1.6)}
    NOg + NO2g + H2g -> N2O3g + H2g                             : {if(trig>0.995, 0, 6.1e-34 * (300/Tg)^7.7)}
    NOg + NO2g + H2Og -> N2O3g + H2Og                           : {if(trig>0.995, 0, 9.1e-34 * (300/Tg)^7.7)}
    NO2g + NO2g + H2g -> N2O4g + H2g                            : {if(trig>0.995, 0, 3e-33 * (300/Tg)^3.8)}
    NO2g + NO2g + H2Og -> N2O4g + H2Og                          : {if(trig>0.995, 0, 8e-33 * (300/Tg)^3.8)}
    NO2g + NO3g + H2g -> N2O5g + H2g                            : {if(trig>0.995, 0, 6e-30 * (300/Tg)^3.5)}
    NO2g + NO3g + H2Og -> N2O5g + H2Og                          : {if(trig>0.995, 0, 1.5e-30 * (300/Tg)^3.5)}
    H2Og + NOg + NO2g -> HNO2g + HNO2g                          : {if(trig>0.995, 0, 4.41e-40)}
    H2Og + N2O3g -> HNO2g + HNO2g                               : {if(trig>0.995, 0, 6.29e-11 * exp(-4471/Tg))}
    H2Og + N2O4g -> HNO2g + HNO3g                               : {if(trig>0.995, 0, 4.18e-10 * exp(-5830/Tg))}
    H2Og + N2O5g -> HNO3g + HNO3g                               : {if(trig>0.995, 0, 2.5e-22)}
    OHg + N2O5g -> HNO3g + NO3g                                 : {if(trig>0.995, 0, 2.85e-15)}
    HNOg + Og -> OHg + NOg                                      : {if(trig>0.995, 0, 6e-11)}
    HNOg + NO2g -> HNO2g + NOg                                  : {if(trig>0.995, 0, 1e-12 * exp(-200/Tg))}
    HNO2g + NO2g -> HNO3g + NOg                                 : {if(trig>0.995, 0, 3.32e-15 * exp(-16466.3/Tg))}
    OHg + NOg -> HNO2g                              : {if(trig>0.995, 0, 1.93e19 * 7.4e-31 * (Tg/300)^-2.4)}
    OHg + NOg -> HNO2g                              : {if(trig>0.995, 0, 5.5e18 * 7.4e-31 * (Tg/300)^-2.4)}
    OHg + NOg + H2g -> HNO2g + H2g                              : {if(trig>0.995, 0, 1.5e-30 * (Tg/300)^-2.4)}
    OHg + NOg + H2Og -> HNO2g + H2Og                            : {if(trig>0.995, 0, 3.5e-30 * (Tg/300)^-2.4)}
    OHg + NOg + O3g -> HNO2g + O3g                              : {if(trig>0.995, 0, 1.5e-30 * (Tg/300)^-2.4)}
    OHg + NO2g -> HNO3g                             : {if(trig>0.995, 0, 1.93e19 * 4.6e-29 * (Tg/300)^-5.5)}
    OHg + NO2g -> HNO3g                             : {if(trig>0.995, 0, 5.5e18 * 4.6e-29 * (Tg/300)^-5.5)}
    OHg + NO2g + H2g -> HNO3g + H2g                             : {if(trig>0.995, 0, 9.2e-29 * (Tg/300)^-5.5)}
    OHg + NO2g + H2Og -> HNO3g + H2Og                           : {if(trig>0.995, 0, 2.3e-28 * (Tg/300)^-5.5)}
    OHg + NO2g + O3g -> HNO3g + O3g                             : {if(trig>0.995, 0, 9.2e-29 * (Tg/300)^-5.5)}
    OHg + N2Og -> HNOg + NOg                                    : {if(trig>0.995, 0, 3.8e-17)}
    H2g -> Og + Og + H2g                                  : {if(trig>0.995, 0, 5.5e18 * 6.00e-09 * exp(-52300/Tg))}
    H2g -> OHg + OHg                                      : {if(trig>0.995, 0, 5.5e18 * 3.16e-10 * exp(-21890/Tg))}
    HO2g + Og -> OHg                                      : {if(trig>0.995, 0, 2.71e-11 * exp(-224/Tg))}
    HO2g + O3g -> OHg                               : {if(trig>0.995, 0, 1.40e-14 * exp(-600/Tg))}
    HO2g + NOg -> HNOg                                    : {if(trig>0.995, 0, 9.10e-19 * exp(-2819/Tg))}
    HO2g + NOg -> HNO3g                             : {if(trig>0.995, 0, 1.93e19 * 5.60e-33)}
    HO2g + NOg -> HNO3g                             : {if(trig>0.995, 0, 5.5e18 * 5.60e-33)}
    HO2g + NOg + H2g -> HNO3g + H2g                             : {if(trig>0.995, 0, 1.20e-32)}
    HO2g + NOg + H2Og -> HNO3g + H2Og                           : {if(trig>0.995, 0, 2.60e-32)}
    HO2g + NOg + O3g -> HNO3g + O3g                             : {if(trig>0.995, 0, 1.20e-32)}
    HO2g + NO2g -> HNO2g                                  : {if(trig>0.995, 0, 1.20e-13)}
    HO2g + NO2g -> HNO2g                      : {if(trig>0.995, 0, 1.93e19 * 1.80e-31 * (Tg/300)^(-3.2))}
    HO2g + NO2g -> HNO2g                      : {if(trig>0.995, 0, 5.5e18 * 1.80e-31 * (Tg/300)^(-3.2))}
    HO2g + NO2g + H2g -> HNO2g + H2g                      : {if(trig>0.995, 0, 4.00e-31 * (Tg/300)^(-3.2))}
    HO2g + NO2g + H2Og -> HNO2g + H2Og                    : {if(trig>0.995, 0, 1.00e-30 * (Tg/300)^(-3.55) * exp(-635/Tg))}
    HO2g + NO2g + O3g -> HNO2g + O3g                      : {if(trig>0.995, 0, 4.00e-31 * (Tg/300)^(-3.2))}
    HO2g + NO3g -> HNO3g                                  : {if(trig>0.995, 0, 2.30e-12 * exp(-170/Tg))}
    HO2g + NO3g -> OHg + NO2g                             : {if(trig>0.995, 0, 4.00e-12)}
    HO2g + HO2g -> H2O2g                                  : {if(trig>0.995, 0, 2.20e-13 * exp(-600/Tg))}
    HO2g + HO2g -> H2O2g                      : {if(trig>0.995, 0, 5.5e18 * 1.90e-33 * exp(-980/Tg))}
    HO2g + HO2g -> H2O2g                      : {if(trig>0.995, 0, 1.93e19 * 1.90e-33 * exp(-980/Tg))}
    HO2g + HO2g + H2g -> H2O2g + H2g                      : {if(trig>0.995, 0, 4.00e-33 * exp(-980/Tg))}
    HO2g + HO2g + H2Og -> H2O2g + H2Og                    : {if(trig>0.995, 0, 1.00e-32 * exp(-980/Tg))}
    HO2g + HO2g + O3g -> H2O2g + O3g                      : {if(trig>0.995, 0, 4.00e-33 * exp(-980/Tg))}
    HO2g + H2Og -> H2O2g + OHg                                  : {if(trig>0.995, 0, 4.65e-11 * exp(-16500/Tg))}
    HO2g + H2O2g -> OHg + H2Og                            : {if(trig>0.995, 0, 1.00e-16)}
    H2Og + Og -> OHg + OHg                                      : {if(trig>0.995, 0, 1.67e-11 * (Tg/300)^(1.14) * exp(-8680/Tg))}
    OHg + O3g -> HO2g                                     : {if(trig>0.995, 0, 1.69e-12 * exp(-941/Tg))}
    OHg + NO2g -> HO2g + NOg                                    : {if(trig>0.995, 0, 3.00e-11 * exp(-3360/Tg))}
    OHg + N2Og -> HO2g                                    : {if(trig>0.995, 0, 3.69e-13 * exp(-2740/Tg))}
    OHg + NO3g -> HO2g + NO2g                                   : {if(trig>0.995, 0, 2.00e-11)}
    OHg + N2O5g -> HNO3g + NO3g                                 : {if(trig>0.995, 0, 2.85e-15)}
    OHg + N2O5g -> HO2g + NO2g + NO2g                           : {if(trig>0.995, 0, 2.85e-15)}
    OHg + OHg -> H2Og + Og                                      : {if(trig>0.995, 0, 5.49e-14 * (Tg/300)^(2.42) * exp(-970/Tg))}
    OHg + OHg -> H2O2g                              : {if(trig>0.995, 0, 1.93e19 * 8.00e-31 * (Tg/300)^(-0.9))}
    OHg + OHg -> H2O2g                              : {if(trig>0.995, 0, 5.5e18 * 8.00e-31 * (Tg/300)^(-0.9))}
    OHg + OHg + H2g -> H2O2g + H2g                              : {if(trig>0.995, 0, 1.60e-30 * (Tg/300)^(-0.9))}
    OHg + OHg + H2Og -> H2O2g + H2Og                            : {if(trig>0.995, 0, 4.00e-30 * (Tg/300)^(-0.9))}
    OHg + OHg + O3g -> H2O2g + O3g                              : {if(trig>0.995, 0, 1.60e-30 * (Tg/300)^(-0.9))}
    OHg + HO2g -> H2Og                                    : {if(trig>0.995, 0, 4.80e-11 * exp(-250/Tg))}
    OHg + H2O2g -> H2Og + HO2g                                  : {if(trig>0.995, 0, 4.53e-12 * exp(-288.9/Tg))}
    OHg + HNOg -> H2Og + NOg                                    : {if(trig>0.995, 0, 8.00e-11 * exp(-500/Tg))}
    OHg + HNO2g -> H2Og + NO2g                                  : {if(trig>0.995, 0, 2.70e-12 * exp(-260/Tg))}
    OHg + HNO3g -> H2Og + NO3g                                  : {if(trig>0.995, 0, 1.50e-13)}
    HNOg -> HO2g + NOg                                    : {if(trig>0.995, 0, 5.5e18 * 5.25e-12 * exp(-1510/Tg))}
    HNOg + NOg -> OHg + N2Og                                    : {if(trig>0.995, 0, 4.90e-19)}
    HNOg + HNOg -> H2Og + N2Og                                  : {if(trig>0.995, 0, 4.36e-17 * (Tg/300)^(3.98) * exp(-599/Tg))}
    HNO2g + Og -> OHg + NO2g                                    : {if(trig>0.995, 0, 2.00e-11 * exp(-3000/Tg))}
    HNO2g + NO3g -> NO2g + HNO3g                                : {if(trig>0.995, 0, 2.00e-15)}
    HNO2g + HNO2g -> NOg + NO2g + H2Og                          : {if(trig>0.995, 0, 6.02e-16 * (Tg/300)^(3.64) * exp(-6113.2/Tg))}
    HNO2g + HNO3g -> NO2g + NO2g + H2Og                         : {if(trig>0.995, 0, 1.55e-17 * exp(-3000/Tg))}
    HNO3g + Og -> OHg + NO3g                                    : {if(trig>0.995, 0, 3.00e-17)}
    HNO3g + NOg -> NO2g + HNO2g                                 : {if(trig>0.995, 0, 1.20e-12 * (Tg/300)^(2) * exp(-5535/Tg))}
    H2Og + N2O3g -> HNO2g + HNO2g                               : {if(trig>0.995, 0, 6.29e-11 * exp(-4471/Tg))}
    H2Og + N2O4g -> HNO3g + HNO2g                               : {if(trig>0.995, 0, 4.18e-10 * exp(-5830/Tg))}
    H2Og + N2O5g -> HNO3g + HNO3g                               : {if(trig>0.995, 0, 2.50e-22)}
    H2O2g + Og -> HO2g + OHg                                    : {if(trig>0.995, 0, 1.79e-13 * (Tg/300)^(2.92) * exp(-1394/Tg))}
    H2O2g + Og -> H2Og                                    : {if(trig>0.995, 0, 1.45e-15)}
    H2O2g -> HO2g + HO2g                                  : {if(trig>0.995, 0, 5.5e18 * 9.00e-11 * exp(-20000/Tg))}
    H2O2g + NO3g -> HO2g + HNO3g                                : {if(trig>0.995, 0, 4.10e-16)}
    H2O2 + NO2n + H3Op -> ONOOH                                 : {if(trig>0.995, 0, 3.04e-39)}
    ONOOH -> OH + NO2                                           : {if(trig>0.995, 0, 4e-1)}
    N2O5 -> NO2 + NO3                                           : {if(trig>0.995, 0, 4.66e3)}
    ONOOH -> H3Op + NO3n                                        : {if(trig>0.995, 0, 1)}
    H3Op + NO3n -> HNO3                                         : {if(trig>0.995, 0, 7e-16)}
    HNO3 -> H3Op + NO3n                                         : {if(trig>0.995, 0, 1e5)}
    N2O4 -> HNO2 + HNO3                                         : {if(trig>0.995, 0, 4.43e4)}
    N2O5 -> HNO3 + HNO3                                         : {if(trig>0.995, 0, 6.66e1)}
    NO3 -> HNO3 + OH                                            : {if(trig>0.995, 0, 1.6e9)}
    N2O3 -> HNO2 + HNO2                                         : {if(trig>0.995, 0, 6.43e6)}
    HNO2 -> H3Op + NO2n                                         : {if(trig>0.995, 0, 1.67e8)}
    N2O5 -> ONOOH + ONOOH                                       : {if(trig>0.995, 0, 6.66e1)}
    NO2 + NO2 -> H3Op + NO3n + HNO2                             : {if(trig>0.995, 0, 1.4e-11)}
    NO2 + NO2 -> H3Op + H3Op + NO3n + NO2n                      : {if(trig>0.995, 0, 4.8e-12)}
    H3Op + NO2n -> NO2                                          : {if(trig>0.995, 0, 6.81e-10)}
    NO + NO2 -> HNO2 + HNO2                                     : {if(trig>0.995, 0, 1.85e-11)}
    H + H2O2 -> OH                                              : {if(trig>0.995, 0, 1.5e-13)}
    H + H -> H2                                                 : {if(trig>0.995, 0, 1.5e-11)}
    NO2 + H -> HNO2                                             : {if(trig>0.995, 0, 1.67e-11)}
    H + HNO2 -> NO                                              : {if(trig>0.995, 0, 7.5e-13)}
    H -> HO2                                               : {if(trig>0.995, 0, 1.782e17 * 5e-11)}
    HNO -> HO2 + NO                                        : {if(trig>0.995, 0, 1.782e17 * 8.01e-21)}
    H + NO2n -> NO + OHn                                        : {if(trig>0.995, 0, 2e-12)}
    H -> H2 + OH                                                : {if(trig>0.995, 0, 5e1)}
    O -> OH + OH                                                : {if(trig>0.995, 0, 6.66e5)}
    H + HO2 -> H2O2                                             : {if(trig>0.995, 0, 3e-11)}
    NO + HO2 -> ONOOH                                           : {if(trig>0.995, 0, 5.33e-12)}
    NO + HO2 -> HNO3                                            : {if(trig>0.995, 0, 5.33e-12)}
    O2n + HO2 -> H2O2 + OHn                                : {if(trig>0.995, 0, 8.92e-12)}
    HO2 -> H3Op + O2n                                           : {if(trig>0.995, 0, 4.76e5)}
    O2n + NO -> NO3n                                            : {if(trig>0.995, 0, 6e-12)}
    O2n + H2O2 -> OH + OHn                                 : {if(trig>0.995, 0, 2.16e-22)}
    H3Op + O2n -> HO2                                           : {if(trig>0.995, 0, 5e-11)}
    O3 + OHn -> O2n + HO2                                       : {if(trig>0.995, 0, 1.16e-19)}
    O3 + O2n -> O3n                                        : {if(trig>0.995, 0, 2.66e-12)}
    H3Op + OHn -> H + OH                                        : {if(trig>0.995, 0, 1e-10)}
    O2n + On -> OHn + OHn                                  : {if(trig>0.995, 0, 3.33e-13)}
    On -> OHn + OH                                              : {if(trig>0.995, 0, 9.99e7)}
    On + H2O2 -> O2n                                            : {if(trig>0.995, 0, 8e-13)}
    On + H2 -> H + OHn                                          : {if(trig>0.995, 0, 1.3e-13)}
    On -> O3n                                              : {if(trig>0.995, 0, 1.782e17 * 5e-12)}
    O3n + On -> O2n + O2n                                       : {if(trig>0.995, 0, 1.7e-13)}
    OH + H ->                                                   : {if(trig>0.995, 0, 3e-11)}
    OH + NO2 -> HNO3                                            : {if(trig>0.995, 0, 2e-11)}
    O3n + OH -> O2n + HO2                                       : {if(trig>0.995, 0, 1.41e-11)}
    OH + OH -> H2O2                                             : {if(trig>0.995, 0, 1.7e-11)}
    OH + NO -> HNO2                                             : {if(trig>0.995, 0, 3.3e-11)}
    NO2 + OH -> ONOOH                                           : {if(trig>0.995, 0, 2e-11)}
    OH + N2O -> HNO + NO                                        : {if(trig>0.995, 0, 3.8e-17)}
    HNO3 + OH -> NO3                                            : {if(trig>0.995, 0, 2.17e-13)}
    HNO + OH -> NO                                              : {if(trig>0.995, 0, 8e-11)}
    OH + HO2 ->                                              : {if(trig>0.995, 0, 2e-11)}
    OH + O2n -> OHn                                        : {if(trig>0.995, 0, 1.5e-11)}
    OH + OHn -> On                                              : {if(trig>0.995, 0, 8e-12)}
    OH + H2O2 -> HO2                                            : {if(trig>0.995, 0, 1e-13)}
    O3n + H3Op -> OH                                       : {if(trig>0.995, 0, 1.5e-10)}
    O3n -> + On                                              : {if(trig>0.995, 0, 2.6e3)}
    On + NO2n -> NO2 + OHn + OHn                                : {if(trig>0.995, 0, 6e-13)}
    '
  []
[]

[AuxVariables]
  [Tg]
    order = FIRST
    family = SCALAR
    initial_condition = 300
  []
  
  [t]
    order = FIRST
    family = SCALAR
  []

  [trig]
    order = FIRST
    family = SCALAR
  []

  [trig2]
    order = FIRST
    family = SCALAR
  []

  [trig3]
    order = FIRST
    family = SCALAR
  []

  [N2h]
    order = FIRST
    family = SCALAR
  []

  [N2rev]
    order = FIRST
    family = SCALAR
  []

  [OHh]
    order = FIRST
    family = SCALAR
  []

  [OHrev]
    order = FIRST
    family = SCALAR
  []

  [OHnh]
    order = FIRST
    family = SCALAR
  []

  [OHnrev]
    order = FIRST
    family = SCALAR
  []

  [H2h]
    order = FIRST
    family = SCALAR
  []

  [H2rev]
    order = FIRST
    family = SCALAR
  []

  [HO2h]
    order = FIRST
    family = SCALAR
  []

  [HO2rev]
    order = FIRST
    family = SCALAR
  []

  [H2O2h]
    order = FIRST
    family = SCALAR
  []

  [H2O2rev]
    order = FIRST
    family = SCALAR
  []

  [N2Oh]
    order = FIRST
    family = SCALAR
  []

  [N2Orev]
    order = FIRST
    family = SCALAR
  []

  [N2O3h]
    order = FIRST
    family = SCALAR
  []

  [N2O3rev]
    order = FIRST
    family = SCALAR
  []

  [N2O4h]
    order = FIRST
    family = SCALAR
  []

  [N2O4rev]
    order = FIRST
    family = SCALAR
  []

  [N2O5h]
    order = FIRST
    family = SCALAR
  []

  [N2O5rev]
    order = FIRST
    family = SCALAR
  []

  [NOh]
    order = FIRST
    family = SCALAR
  []

  [NOrev]
    order = FIRST
    family = SCALAR
  []

  [NO2h]
    order = FIRST
    family = SCALAR
  []

  [NO2rev]
    order = FIRST
    family = SCALAR
  []

  [NO3h]
    order = FIRST
    family = SCALAR
  []

  [NO3rev]
    order = FIRST
    family = SCALAR
  []

  [HNOh]
    order = FIRST
    family = SCALAR
  []

  [HNOrev]
    order = FIRST
    family = SCALAR
  []

  [HNO2h]
    order = FIRST
    family = SCALAR
  []

  [HNO2rev]
    order = FIRST
    family = SCALAR
  []

  [HNO3h]
    order = FIRST
    family = SCALAR
  []

  [HNO3rev]
    order = FIRST
    family = SCALAR
  []

  [Oh]
    order = FIRST
    family = SCALAR
  []

  [Orev]
    order = FIRST
    family = SCALAR
  []

  [O2h]
    order = FIRST
    family = SCALAR
  []

  [O2rev]
    order = FIRST
    family = SCALAR
  []

  [O3h]
    order = FIRST
    family = SCALAR
  []

  [O3rev]
    order = FIRST
    family = SCALAR
  []
  
  [M]
    order = FIRST
    family = SCALAR
  []
[]

[Functions]
  [tf]
    type = ParsedFunction
    expression = 't'
  []

  [OHh_func]
    type = ParsedFunction
    symbol_names = 'OHg OH'
    symbol_values = 'OHg OH'
    expression = '(((620*OHg)-OH)/(620*OHg))'
  []

  [OHh_rev_func]
    type = ParsedFunction
    symbol_names = 'OHg OH'
    symbol_values = 'OHg OH'
    expression = '(OH-620*OHg)/(620*OH)'
  []

  [H2h_func]
    type = ParsedFunction
    symbol_names = 'H2g H2'
    symbol_values = 'H2g H2'
    expression = '(((0.018*H2g)-H2)/(0.018*H2g))'
  []

  [H2h_rev_func]
    type = ParsedFunction
    symbol_names = 'H2g H2'
    symbol_values = 'H2g H2'
    expression = '(H2-0.018*H2g)/(0.018*H2)'
  []

  [HO2h_func]
    type = ParsedFunction
    symbol_names = 'HO2g HO2'
    symbol_values = 'HO2g HO2'
    expression = '(((1.32e5*HO2g)-HO2)/(1.32e5*HO2g))'
  []

  [HO2h_rev_func]
    type = ParsedFunction
    symbol_names = 'HO2g HO2'
    symbol_values = 'HO2g HO2'
    expression = '(HO2-1.32e5*HO2g)/(1.32e5*HO2)'
  []

  [H2O2h_func]
    type = ParsedFunction
    symbol_names = 'H2O2g H2O2'
    symbol_values = 'H2O2g H2O2'
    expression = '(((1.92e6*H2O2g)-H2O2)/(1.92e6*H2O2g + 1e-10))'
  []

  [H2O2h_rev_func]
    type = ParsedFunction
    symbol_names = 'H2O2g H2O2'
    symbol_values = 'H2O2g H2O2'
    expression = '(H2O2-1.92e6*H2O2g)/(1.92e6*H2O2 + 1e-10)'
  []

  [N2Oh_func]
    type = ParsedFunction
    symbol_names = 'N2Og N2O'
    symbol_values = 'N2Og N2O'
    expression = '(((0.6*N2Og)-N2O)/(0.6*N2Og + 1e-10))'
  []

  [N2Oh_rev_func]
    type = ParsedFunction
    symbol_names = 'N2Og N2O'
    symbol_values = 'N2Og N2O'
    expression = '(N2O-0.6*N2Og)/(0.6*N2O + 1e-10)'
  []

  [N2O3h_func]
    type = ParsedFunction
    symbol_names = 'N2O3g N2O3'
    symbol_values = 'N2O3g N2O3'
    expression = '(((600*N2O3g)-N2O3)/(600*N2O3g + 1e-10))'
  []

  [N2O3h_rev_func]
    type = ParsedFunction
    symbol_names = 'N2O3g N2O3'
    symbol_values = 'N2O3g N2O3'
    expression = '(N2O3-600*N2O3g)/(600*N2O3 + 1e-10)'
  []

  [N2O4h_func]
    type = ParsedFunction
    symbol_names = 'N2O4g N2O4'
    symbol_values = 'N2O4g N2O4'
    expression = '(((36.9*N2O4g)-N2O4)/(36.9*N2O4g + 1e-10))'
  []

  [N2O4h_rev_func]
    type = ParsedFunction
    symbol_names = 'N2O4g N2O4'
    symbol_values = 'N2O4g N2O4'
    expression = '(N2O4-36.9*N2O4g)/(36.9*N2O4 + 1e-10)'
  []

  [N2O5h_func]
    type = ParsedFunction
    symbol_names = 'N2O5g N2O5'
    symbol_values = 'N2O5g N2O5'
    expression = '(((48.5*N2O5g)-N2O5)/(48.5*N2O5g + 1e-10))'
  []

  [N2O5h_rev_func]
    type = ParsedFunction
    symbol_names = 'N2O5g N2O5'
    symbol_values = 'N2O5g N2O5'
    expression = '(N2O5-48.5*N2O5g)/(48.5*N2O5 + 1e-10)'
  []

  [NOh_func]
    type = ParsedFunction
    symbol_names = 'NOg NO'
    symbol_values = 'NOg NO'
    expression = '(((0.044*NOg)-NO)/(0.044*NOg + 1e-10))'
  []

  [NOh_rev_func]
    type = ParsedFunction
    symbol_names = 'NOg NO'
    symbol_values = 'NOg NO'
    expression = '(NO-0.044*NOg)/(0.044*NO + 1e-10)'
  []

  [NO2h_func]
    type = ParsedFunction
    symbol_names = 'NO2g NO2'
    symbol_values = 'NO2g NO2'
    expression = '(((0.28*NO2g)-NO2)/(0.28*NO2g + 1e-10))'
  []

  [NO2h_rev_func]
    type = ParsedFunction
    symbol_names = 'NO2g NO2'
    symbol_values = 'NO2g NO2'
    expression = '(NO2-0.28*NO2g)/(0.28*NO2 + 1e-10)'
  []

  [NO3h_func]
    type = ParsedFunction
    symbol_names = 'NO3g NO3'
    symbol_values = 'NO3g NO3'
    expression = '(((41.5*NO3g)-NO3)/(41.5*NO3g + 1e-10))'
  []

  [NO3h_rev_func]
    type = ParsedFunction
    symbol_names = 'NO3g NO3'
    symbol_values = 'NO3g NO3'
    expression = '(NO3-41.5*NO3g)/(41.5*NO3 + 1e-10)'
  []

  [HNOh_func]
    type = ParsedFunction
    symbol_names = 'HNOg HNO'
    symbol_values = 'HNOg HNO'
    expression = '(((1150*HNOg)-HNO)/(1150*HNOg))'
  []

  [HNOh_rev_func]
    type = ParsedFunction
    symbol_names = 'HNOg HNO'
    symbol_values = 'HNOg HNO'
    expression = '(HNO-1150*HNOg)/(1150*HNO)'
  []

  [HNO2h_func]
    type = ParsedFunction
    symbol_names = 'HNO2g HNO2'
    symbol_values = 'HNO2g HNO2'
    expression = '(((1150*HNO2g)-HNO2)/(1150*HNO2g))'
  []

  [HNO2h_rev_func]
    type = ParsedFunction
    symbol_names = 'HNO2g HNO2'
    symbol_values = 'HNO2g HNO2'
    expression = '(HNO2-1150*HNO2g)/(1150*HNO2)'
  []

  [HNO3h_func]
    type = ParsedFunction
    symbol_names = 'HNO3g HNO3'
    symbol_values = 'HNO3g HNO3'
    expression = '(((4.8e6*HNO3g)-HNO3)/(4.8e6*HNO3g))'
  []

  [HNO3h_rev_func]
    type = ParsedFunction
    symbol_names = 'HNO3g HNO3'
    symbol_values = 'HNO3g HNO3'
    expression = '(HNO3-4.8e6*HNO3g)/(4.8e6*HNO3)'
  []

  [Oh_func]
    type = ParsedFunction
    symbol_names = 'Og O'
    symbol_values = 'Og O'
    expression = '(((1*Og)-O)/(1*Og))'
  []

  [Oh_rev_func]
    type = ParsedFunction
    symbol_names = 'Og O'
    symbol_values = 'Og O'
    expression = '(O-1*Og)/(1*O)'
  []

  [O3h_func]
    type = ParsedFunction
    symbol_names = 'O3g O3'
    symbol_values = 'O3g O3'
    expression = '(((0.3*O3g)-O3)/(0.3*O3g))'
  []

  [O3h_rev_func]
    type = ParsedFunction
    symbol_names = 'O3g O3'
    symbol_values = 'O3g O3'
    expression = '(O3-0.3*O3g)/(0.3*O3)'
  []

  [trigger_func2]
    type = ParsedFunction
    symbol_names = 'trig2'
    symbol_values = 'trig2'
    expression = 'trig2=1'
  []

  [trigger_func3]
    type = ParsedFunction
    symbol_names = 'trig3'
    symbol_values = 'trig3'
    expression = 'trig3=1'
  []
[]

[AuxScalarKernels]
  [neutral_sum]
    type = VariableSum
    variable = M
    args = 'O2g N2g OHg O3g HNOg NOg HNO2g NO2g HNO3g NO3g N2O3g N2O4g N2O5g'
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [tcheck]
    type = FunctionScalarAux
    variable = t
    function = tf
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [Trigger]
    type = ScalarLinearInterpolation
    variable = trig
    use_time = true
    property_file = 'data/trigger.txt'
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [Trigger2]
    type = ScalarLinearInterpolation
    variable = trig2
    use_time = true
    property_file = 'data/trigger2.txt'
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [Trigger3]
    type = ScalarLinearInterpolation
    variable = trig3
    use_time = true
    property_file = 'data/trigger3.txt'
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [OHh]
    type = FunctionScalarAux
    variable = OHh
    function = OHh_func
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [OHrev]
    type = FunctionScalarAux
    variable = OHrev
    function = OHh_rev_func
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [H2h]
    type = FunctionScalarAux
    variable = H2h
    function = H2h_func
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [H2rev]
    type = FunctionScalarAux
    variable = H2rev
    function = H2h_rev_func
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [HO2h]
    type = FunctionScalarAux
    variable = HO2h
    function = HO2h_func
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [HO2rev]
    type = FunctionScalarAux
    variable = HO2rev
    function = HO2h_rev_func
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [H2O2h]
    type = FunctionScalarAux
    variable = H2O2h
    function = H2O2h_func
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [H2O2rev]
    type = FunctionScalarAux
    variable = H2O2rev
    function = H2O2h_rev_func
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [N2Oh]
    type = FunctionScalarAux
    variable = N2Oh
    function = N2Oh_func
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [N2Orev]
    type = FunctionScalarAux
    variable = N2Orev
    function = N2Oh_rev_func
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [N2O3h]
    type = FunctionScalarAux
    variable = N2O3h
    function = N2O3h_func
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [N2O3rev]
    type = FunctionScalarAux
    variable = N2O3rev
    function = N2O3h_rev_func
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [N2O4h]
    type = FunctionScalarAux
    variable = N2O4h
    function = N2O4h_func
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [N2O4rev]
    type = FunctionScalarAux
    variable = N2O4rev
    function = N2O4h_rev_func
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [N2O5h]
    type = FunctionScalarAux
    variable = N2O5h
    function = N2O5h_func
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [N2O5rev]
    type = FunctionScalarAux
    variable = N2O5rev
    function = N2O5h_rev_func
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [NOh]
    type = FunctionScalarAux
    variable = NOh
    function = NOh_func
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [NOrev]
    type = FunctionScalarAux
    variable = NOrev
    function = NOh_rev_func
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [NO2h]
    type = FunctionScalarAux
    variable = NO2h
    function = NO2h_func
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [NO2rev]
    type = FunctionScalarAux
    variable = NO2rev
    function = NO2h_rev_func
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [NO3h]
    type = FunctionScalarAux
    variable = NO3h
    function = NO3h_func
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [NO3rev]
    type = FunctionScalarAux
    variable = NO3rev
    function = NO3h_rev_func
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [HNOh]
    type = FunctionScalarAux
    variable = HNOh
    function = HNOh_func
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [HNOrev]
    type = FunctionScalarAux
    variable = HNOrev
    function = HNOh_rev_func
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [HNO2h]
    type = FunctionScalarAux
    variable = HNO2h
    function = HNO2h_func
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [HNO2rev]
    type = FunctionScalarAux
    variable = HNO2rev
    function = HNO2h_rev_func
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [HNO3h]
    type = FunctionScalarAux
    variable = HNO3h
    function = HNO3h_func
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [HNO3rev]
    type = FunctionScalarAux
    variable = HNO3rev
    function = HNO3h_rev_func
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [Oh]
    type = FunctionScalarAux
    variable = Oh
    function = Oh_func
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [Orev]
    type = FunctionScalarAux
    variable = Orev
    function = Oh_rev_func
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [O3h]
    type = FunctionScalarAux
    variable = O3h
    function = O3h_func
    execute_on = 'INITIAL TIMESTEP_BEGIN'
  []

  [O3rev]
    type = FunctionScalarAux
    variable = O3rev
    function = O3h_rev_func
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
  end_time = 0.43
  solve_type = NEWTON
  dtmin = 1e-15
  dtmax = 3e-3
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
      dt = 1e-4
      growth_factor = 1.01
    []
  []
[]

[Controls]
[]

[Outputs]

  [_1]
    type = CSV
    interval = 1
    precision = 8
    sort_columns = true
    start_time = 0
    end_time = 1
    hide = 't trig N2h N2rev OHh OHrev H2h H2rev HO2h HO2rev H2O2h H2O2rev N2Oh N2Orev N2O3h N2O3rev N2O4h N2O4rev N2O5h N2O5rev
    NOh NOrev NO2h NO2rev NO3h NO3rev HNOh HNOrev HNO2h HNO2rev HNO3h HNO3rev Oh Orev O2h O2rev O3h O3rev OHnh OHnrev Tg dummy trig2 trig3'
  []

  [_fin]
    type = CSV
    execute_on = 'FINAL'
    precision = 8
    sort_columns = true
    hide = 't trig N2h N2rev OHh OHrev H2h H2rev HO2h HO2rev H2O2h H2O2rev N2Oh N2Orev N2O3h N2O3rev N2O4h N2O4rev N2O5h N2O5rev
    NOh NOrev NO2h NO2rev NO3h NO3rev HNOh HNOrev HNO2h HNO2rev HNO3h HNO3rev Oh Orev O2h O2rev O3h O3rev OHnh OHnrev Tg dummy trig2 trig3'
  []

  [console]
    type = Console
    execute_scalars_on = 'none'
  []
[]