'VIP interneurons in sensory cortex encode sensory and action signals but not direct reward signals' 
Deepa L. Ramamurthy, Andrew Chen, Jiayu Zhou, Chanbin Park, Patrick C. Huang, Priyanka Bharghavan, Gayathri Krishna, Jinjian Liu, Kayla Casale, Daniel E. Feldman

Analysis software: MATLAB 2022a

Pre-processing was performed using functions adapted from: 
LeMessurier AM. 2019. https://github.com/elifesciences-publications/imaging_analysis_pipeline

Data:
Two sessions for VIP cells in expert mice, 'DR-20-01-02-04192020.mat' & 'DR-20-02-03272020.mat', are selected as examples to help with testing of the analysis code provided.
Additionally, full datasets are provided for all experimental groups: VIP expert (standard sessions, botox sessions and sessions with no whisker stimulus), VIP novice (sessions with whisker stimulus, and sessions with no whisker stimulus) and PYR expert (standard sessions).

Data files include the following variables:
mouse_date_str: Session identifier, which includes mouse id and date
allcells: Cell array that lists all ROIs
peristimtraceByStim_allcells: dF/F traces aligned to Go trial (whisker stimulus) times and NoGo trial times for each ROI. 
perilicktraceByLick_allcells: dF/F traces aligned to lick times (ITI licks, FA licks, Hit licks, Unrewarded Hit licks) and matched no-lick times for each ROI
peristimstructmedianpercell: Median dF/F traces aligned to Go (BW and CW) and NoGo (dummy piezo) times for each ROI. The field 'peritime' contains timestamps for datapoints in each column, for stimulus-aligned traces. 
perilickstructmedianpercell: Median dF/F traces aligned to lick times (ITI licks, FA licks, Hit licks, Unrewarded Hit licks) and matched no-lick times for each ROI.  The field 'peritime' contains timestamps for datapoints in each column, for lick-aligned traces. 
sig_inds_w: Logical vector specifying significantly whisker-reponsive ROIs (1 = whisker-responsive, 0 = no significant whisker-response)
sig_inds_l: Logical vector specifying significantly lick-reponsive ROIs (1 = lick-responsive, 0 = no significant lick-response)
BWid: Numerical best whisker for each ROI
CWid: Columnar whisker for each ROI
CWidnearest: Columnar whisker for each ROI, with nearest column listed for septal cells
whisk: Whisker identities tested on Go Trials, corresponding to piezos 0-8
lickmetrics: Structure containing dF/F magnitudes computed for pre-lick and post-lick (early and late) windows aligned to lick times and matched no lick times
ranktcstruct: Structure containing rank-ordered whisker-evoked responses and nogo responses for generating tuning curves 
plotparams_whiskers: Plotting parameters for summary plot of whisker responses
plotparams_lick: Plotting parameters for summary plot of lick responses

Additional comments:
Whisker responses were only analyzed when analysis criteria were met. This information is included in the 'notes' field for each ROI in the structure 'peristimtraceByStim_allcells'. 
Whisker response analysis criteria: Median of >=15 trials were obtained per whisker tested, CW was tested for a given ROI.
Whisker RF analysis criteria: Median of >=15 trials were obtained per whisker tested, CW and >=5 surround whiskers were tested for a given ROI.
Lick response data structures contained lick and no-lick information for different lick types found in standard sessions: ITI licks, FA licks, Hit licks, Unrewarded Hit licks.  
For VIP expert sessions with no whisker stimulus and for all VIP novice data, rewarded licks/no-licks data are contained in fields specified as 'Hit' licks/no-licks and unrewarded licks are contained in fields specified as 'FA' licks/no-licks. Fields corresponding to ITI licks/no-licks and Unrewarded Hit licks/no-licks are left empty for these types of sessions. 

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
