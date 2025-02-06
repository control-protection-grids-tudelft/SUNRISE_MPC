The COMPONENTS folder contains .def files required for user-defined components used in RS-CAD models from this repository. The corresponding source (.c) and header (.h) files for these components are located in the CMODEL_SOURCE folder.
The SUNRISE_SingleDC_DB_NN folder contains RS-CAD simulation models featuring a single three-phase MMC connected to an RL load at the AC terminal.
Regarding the NN training, all necessary files are in folder NN_training.
Follow the procedure:
  1. Open the IEPG_AdvancedControl13.rtfx from SUNRISE_SingleDC_DB_NN folder model in RS-CAD.
  2. Run the model and then execute the dataCollect_DB.scr script to collect the data required for model identification.
  3. Place resulting .csv files into folder training_NN\simulation_data\. For the next three steps relocate to the training_NN folder.
  4. In MATLAB, go to the "optimization" folder and run the main file "optimization.m". This script performs the following procedures:
	- reading all the waveforms from the spreadsheets in the "simulation_data" folder and calculating the R and L parameters,
	- calculating optimal voltage increments for obtaining a current response most closely matching the reference
   The following functions are used within the main function:
	- "param_calc"		--> reads the simulation data from RTDS and calculates R and L parameters using Moore-Penrose inverse,
	- "data_read" 		--> called from within "param_calc" to read and arrange the simulation waveforms,
	- "JADE_algorithm" 	--> runs the differential evolution-based optimization algorithm to obtain optimal voltage increments in each PWM period,
	- "current_calc"	--> calculates the current response during the observed PWM period and the maximal mean error in all three phases for each voltage combination,
	- "inew_calc"		--> calculates the current waveform over the observed PWM period when the modified voltage is applied,
	- "optConditions"	--> checks whether a solution from the new population is better than the best solution obtained so far,
	- "solRatingCalc"	--> rates the solutions based on performance (deviation between the current response and reference),
	- "rnd_cauchy"		--> implements the Cauchy distribution for randomly modifying the mutation factor.

5. After the optimization procedure is completed, run the script "data_processing.m" in the same folder. This script reads all the waveforms again and also reads the optimal inputs (reference voltage variations) from the .mat file obtained after completing the optimization procedure. If the optimization is conducted multiple times, there would be multiple .mat files. The filename format is as follows: "opt_results_DAY-MONTH-YEAR HOURS:MINUTES:SECONDS.mat". The data is then prepared for neural network training procedure. The ANN inputs are:
	- measured currents of phases A and B,
	- reference currents of phases A and B,
	- reference voltages of phases A and B obtained using the MPC algorithm alone.
The ANN outputs are modifications of voltages in all three phases (dva, dvb, and dvc).
The inputs and outputs are normalized using the mean values and standard deviations of each quantity. After this, a neural network is trained using the function "NN_training". The ANN inputs and outputs are written to the file "training_data.csv". The user can choose different data if wanted by modifying the inputs_NN and outputs_NN variables. In this case, one should not forget to also modify column names to avoid confusion. The "training_data.csv" file is saved to the root "repo_files" folder.

6. The "trainNN.py" script is executed to obtain ANN weights and biases. These coefficients are then implemented in the Neural Network within the RTDS model and combined with the existing MPC algorithm to improve the control performance. Note that the input data to the Neural Network must be normalized first, and that the reference voltage increments obtained as the Neural Network outputs need to be converted to the corresponding inserted submodule numbers. The mean values and standard deviations needed for normalization and denormalization can be obtained in the "data_processing" function as "in_avg", "out_avg" (mean values), and "in_dev", "out_dev" (standard deviations).
  7. In IEPG_AdvancedControl14.rtfx, an artificial neural network (ANN) component with appropriate weight factors and biases is added. The NN is integrated into this model to support the existing deadbeat control for AC currents.
