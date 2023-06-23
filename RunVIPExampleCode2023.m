%% 'VIP interneurons in sensory cortex encode sensory and action signals but not direct reward signals' 
% Deepa L. Ramamurthy, Andrew Chen, Jiayu Zhou, Chanbin Park, Patrick C. Huang, Priyanka Bharghavan, 
% Gayathri Krishna, Jinjian Liu, Kayla Casale, Daniel E. Feldman

% Analysis Code to test example data
% Deepa Ramamurthy, 2023
% Feldman Lab, UC Berkeley

%% Load example data
load('DR-20-02-03272020.mat') % DR-20-02-03272020.mat, 'DR-20-01-02-04192020.mat'

%% 1. Plot mean BW-evoked response for whisker-responsive cells
if nansum(sig_inds_w)>0 % if whisker-responsive cells are present
    figure('position', [108.2000  493.0000  313.6000  288.8000])
    hold on
    PlotWhiskerEvokedResponse(peristimstructmedianpercell.bw,peristimstructmedianpercell.nogo,peristimstructmedianpercell.peritime,sig_inds_w,plotparams_whisker)
    title('1. Mean BW-evoked response')
end

%% 2. Plot mean CW-evoked response for whisker-responsive cells
if nansum(sig_inds_w)>0 % if whisker-responsive cells are present
    figure('position', [421.8000  493.0000  313.6000  288.8000])
    hold on
    PlotWhiskerEvokedResponse(peristimstructmedianpercell.cw,peristimstructmedianpercell.nogo,peristimstructmedianpercell.peritime,sig_inds_w,plotparams_whisker)
    title('2. Mean CW-evoked response')
end

%% 3. Plot mean tuning curve for whisker-responsive cells
if nansum(sig_inds_w)>0 % if whisker-responsive cells are present
    figure('position',  [735.4000  493.0000  313.6000  288.8000])
    hold on
    PlotMeanTuningCurve(ranktcstruct, sig_inds_w, CWidnearest,whisk)
    title('3. Mean tuning curve')
end

%% 4. Plot mean lick response for lick-responsive cells, or all cells
figure('position',  [108.2000  89  581.6000  317.0000])
hold on
PlotMeanLickEvokedResponse(perilickstructmedianpercell,plotparams_lick, sig_inds_l, 'whichcells', 'all') %set 'whichcells' to 'all' to examine all cells, or 'sig' to examine only significantly lick-responsive cells
title('4. Mean dF/F traces for different lick types')

%% 5. Plot lick response magnitude for different lick types
figure('position', [689.8000  89  359.2000  317.0000])
hold on
PlotLickMetrics(lickmetrics)
title('5. Lick responses for different lick types')
