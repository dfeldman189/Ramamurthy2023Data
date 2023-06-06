'VIP interneurons in sensory cortex encode sensory and action signals but not direct reward signals' 
Deepa L. Ramamurthy, Andrew Chen, Jiayu Zhou, Chanbin Park, Patrick C. Huang, Priyanka Bharghavan, Gayathri Krishna, Jinjian Liu, Kayla Casale, Daniel E. Feldman

Analysis software: MATLAB 2022a

Pre-processing was performed using functions adapted from: 
LeMessurier AM. 2019. https://github.com/elifesciences-publications/imaging_analysis_pipeline

Example Data:
Data are provided for two example sessions: 'ExampleSession1.mat' & 'ExampleSession2.mat'

Data for example sessions includes the following variables:
mouse_date_str: Session identifier (mouse id and date)
allcells: Cell array that lists all ROIs
deltaF: Structure containing dF/F traces for entire imaging movie segments
Stimuli: Go/NoGo stimulus onset times (in seconds, relative to segment onset) for each imaging movie segment
Licks: Lick onset times and matched no-lick times (in seconds, relative to segment onset) for each imaging movie segment (for each lick types)
peristimstruct: median dF/F traces aligned to Go (BW and CW) and NoGo (dummy piezo) times for each ROI
perilickstruct: median dF/F traces aligned to lick (ITI licks, FA licks, Hit licks, Unrewarded Hit licks) and matched no-lick times for each ROI
sig_inds_w: Logical vector specifying significantly whisker-reponsive ROIs (1 = whisker-responsive, 0 = no significant whisker-response)
sig_inds_l: Logical vector specifying significantly lick-reponsive ROIs (1 = lick-responsive, 0 = no significant lick-response)
BWid: Numerical best whisker for each ROI
CWid: Columnar whisker for each ROI
CWidnearest: Columnar whisker for each ROI, with nearest column listed for septal cells
whisk: whisker identities tested on Go Trials, corresponding to piezos 0-8
lickmetrics: structure containing dF/F magnitudes computed for pre-lick and post-lick (early and late) windows aligned to lick times and matched no lick times
ranktcstruct: structure containing rank-ordered whisker-evoked responses and nogo responses for generating tuning curves 
plotparams_whiskers: plotting parameters for summary plot of whisker responses
plotparams_lick: plotting parameters for summary plot of lick responses

Plotting functions provided:
PlotWhiskerEvokedResponse
PlotMeanTuningCurve
PlotMeanLickEvokedResponse
PlotLickMetrics

Supporting functions from MathWorks File Exchange:
shadedErrorBar (R. Campbell, 2009)
nansem (J. Gläscher, 2004)
pvpmod (U. Egert, modified by H. Hentschke 2017)

A script ('RunVIPExampleCode2023.m') is provided, which makes use of these plotting functions to generate summary plots for example data.
