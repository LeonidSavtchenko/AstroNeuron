function AddCaParams()

    % TODO Split params by different panels
    AddPanel('Ca');
    
    AddNonNegRatScalar('Z_coordinate'           , 10       , ''      , 'The stochastic parameter changes the Z-distribution of astrocytes branches');
    AddNonNegRatScalar('ScalingDiam'            , 0.127    , ''      , 'The parameter scales the diameter of the central dendrites')
    AddNonNegRatScalar('dt'                     , 1        , 'ms'      , 'Time of integration');
    AddNonNegRatScalar('steps_per_ms'           , 1        , 'ms'      , 'Time of plotting data');
    AddNonNegRatScalar('Initseed'               , 124      , ''      , 'Initial seed number');

    %Leaves Geometry. These are  structures large in diameter and short
    %Uniform distribution between min and max

    AddNonNegRatScalar('MaxDimLeaves'           , 2.5      , 'um'    , 'Max diam of Leaves');
    AddNonNegRatScalar('MinDimLeaves'           , 0.1      , 'um'    , 'Min diam of Leaves');
    AddNonNegRatScalar('MaxLenLeaves'           , 0.12     , 'um'    , 'Max Length of Leaves');
    AddNonNegRatScalar('MinLenLeaves'           , 0.1      , 'um'    , 'Min Length of Leaves');

    %Stalks Geometry. These are transitional structures between the leaves.
    %They are small in diameter and long.
    %Uniform distribution between min and max
    AddNonNegRatScalar('MaxDimStalk'            , 0.1      , 'um'    , 'Max diam of stalk');
    AddNonNegRatScalar('MinDimStalk'            , 0.1      , 'um'    , 'Min diam of stalk');
    AddNonNegRatScalar('MaxLenStalk'            , 1        , 'um'    , 'Max Length of stalk');
    AddNonNegRatScalar('MinLenStalk'            , 0.9      , 'um'    , 'Min Length of stalk');

    AddNonNegRatScalar('TotalNUmberGapJunction' , 100      , ''      , ''); 
    AddNonNegRatScalar('BasicStimulus'          , 100      , 'uM/sec' , 'Single channel calcium entry flux (uM/sec)');
    AddNonNegRatScalar('Interval'               , 3        , 'ms'    , 'Mean interval between two calcium channel opening (ms)');
    AddNonNegRatScalar('ECaresting'             , 0.001    , 'mM'   , 'Ca reverse concentration (mM');
    AddNonNegRatScalar('Tau1St'                 , 10       , 'ms'    , 'Rise time of Ca channel influx (Tau1, ms)');
    AddNonNegRatScalar('Tau2St'                 , 0.1      , 'ms'    , 'Decay time of Ca channel influx (Tau2, ms)');
    AddNonNegRatScalar('NumberStim'             , 600      , ''      , 'Number of Ca open channels in single Ca spike');
    AddNonNegRatScalar('Noise1_NoNoise0'        , 1        , ''      , '0 - regular Ca channels opening; 1 - stochastic Ca channels opening');
    AddNonNegRatScalar('NoiseCaBegin'           , 7000     , 'ms'    , 'Offset of first calcium  spike (ms) ');
    AddNonNegRatScalar('BasicCaFlux'            , 20       , ''      , 'Basic Ca flux of noise and large responses');
    AddNonNegRatScalar('NoiseBasicInterval'     , 200      , ''      , 'Interval between Ca noisy signals');

    AddNonNegRatScalar('DCa_cadifus'            , 0.15     , 'um2/ms' , 'Diffusion coefficient of intracellular calcium dynamics');
    AddNonNegRatScalar('TBufs_cadifus'          , 0.07     , ''       , 'Total concentration of endogeneous Ca buffer');
    AddNonNegRatScalar('kfs_cadifus'            , 'kf'     , '/mM-ms' , 'Kf of endogeneous buffer');
    AddNonNegRatScalar('KDs_cadifus'            , 10       , 'uM'     , 'KD of endogeneous buffer');
    AddNonNegRatScalar('TBufm_cadifus'          , 0.0075   , ''       , 'Total concentration of mobile/added Ca buffer');
    AddNonNegRatScalar('kfm_cadifus'            , 'kf'     , '/mM-ms' , 'Kf of mobile/added buffer');
    AddNonNegRatScalar('KDm_cadifus'            , 0.24     , 'uM'     , 'KD of mobile/added buffer');
    AddNonNegRatScalar('DBufm_cadifus'          , 0.05     , 'um2/ms' , 'Diffusion coefficient of mobile buffer');
    AddNonNegRatScalar('cath_cadifus'           , 5e-005   , ''       , 'Threshold for Ca pump activity');
    AddNonNegRatScalar('vmax_cadifus'           , 3.75e-006, 'mM/ms'  , 'Maximum flux of Ca pump');
    AddNonNegRatScalar('ip3i_cadifus'           , 0.00001  , 'mM'     , 'Basic concentration of ip3i');
    AddNonNegRatScalar('gamma_cadifus'          , 20       , 'um/s'   , 'Ca pump flux density');
    AddNonNegRatScalar('Kp_cadifus'             , 0.00027  , 'mM'     , 'Parameter of Ca sensivity of pump');
    AddNonNegRatScalar('jmax_cadifus'           , 0.0035   , 'mM/ms'  , 'Parameter of Ca flux of SERCA channel');
    AddNonNegRatScalar('caer_cadifus'           , 0.4      , 'mM'     , 'Ca reverse concentration of ER');
    AddNonNegRatScalar('Kip3_cadifus'           , 0.0008   , 'mM'     , 'Concentration of Ip3 which generates half flux of Ca');
    AddNonNegRatScalar('Kact_cadifus'           , 0.0003   , 'mM'     , 'Concentration of Ca  which generates half flux of Ca from SERCA channel');
    AddNonNegRatScalar('kon_cadifus'            , 2.7      , '/mM-ms' , 'Open kinetic parameter of  SERCA channel');
    AddNonNegRatScalar('Kinh_cadifus'           , 0.0002   , 'mM'     , 'Close kinetic parameter of  SERCA channel');
    vrat_cadifus = { ...
%       Index      Value
        0      0.239983};
    % NOTE Table precision isn't enough to display 0.239983 value! It's rounded to 0.24000.
    defaultValues = { ...
        -1,     nan};
    colNames = {'Index', 'Value'};
    desc = {'Dimensionless numeric value of vrat[i] equals the volume of annulus i of a 1um diameter cylinder multiply by diam^2 to get volume per um length'};
    AddResizableMatrix('vrat_cadifus', vrat_cadifus, defaultValues, colNames, desc, true, 'valPred_vrat_cadifus(vrat_cadifus)');
    
    AddNonNegRatScalar('DurationIP3iCalciumWave', 1000     , 'ms'      , 'Duration of IP3 increased concentration.');
    AddNonNegRatScalar('TimeDelayW'             , 1000     , 'ms'      , 'Delay from the start of stimulation to increasing IP3 concentration');
    AddNonNegRatScalar('InitIp3'                , 0.05     , 'mM'      , 'Increased IP3i concentration on soma and dendrites');
 
end