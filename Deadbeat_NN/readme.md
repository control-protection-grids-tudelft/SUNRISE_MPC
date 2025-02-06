The COMPONENTS folder contains .def files required for user-defined components used in RS-CAD models from this repository. The corresponding source (.c) and header (.h) files for these components are located in the CMODEL_SOURCE folder.
The SUNRISE_SingleDC_DB_NN folder contains RS-CAD simulation models featuring a single three-phase MMC connected to an RL load at the AC terminal.
Follow the procedure:
  1. Open the IEPG_AdvancedControl13.rtfx from SUNRISE_SingleDC_DB_NN folder model in RS-CAD.
  2. Run the model and then execute the dataCollect_DB.scr script to collect the data required for model identification.
  3. After model identification, the data necessary for neural network (NN) training is collected from the meta-model in MATLAB (MATLAB scripts will be provided and   explained).
  4. In IEPG_AdvancedControl14.rtfx, an artificial neural network (ANN) component with appropriate weight factors and biases is added. The NN is integrated into this model to support the existing deadbeat control for AC currents.
