# Plasticity Models #

This repository contains supplementary [*TerraFERMA*](http://terraferma.github.io) model files to accompany the paper 

>Spiegelman, M, David May and Cian R Wilson, 
*On the solvability of incompressible viscoplastic rheologies in geodynamics*, GCubed, 2016

### Contents ###
This repo contains the directories

* **solver_strategies:** Directories containing input files for describing and running three different models and producing Figures 2,3,5 and 7 in the paper
	* **successive_substitution:** Picard iteration/Approximate Newton methods (Figure 2)
	* **newton-convergence**: (Figure 3)
	* **newton:** Hybrid Picard-Newton schemes (Figure 5 and data for Figure 6)
	* **alpha-continuation:** Newton with continuation in the $\alpha$ parameter (Figure 7 and data for Figure 8)
* **one_layer:** A simplified version of this problem with just a single visco-plastic layer and a free-stress bottom.  Just includes hybrid Newton-Picard schemes.
* **meshes:** gmsh input files and Dolfin Meshes used in the models
* **paraview:** Paraview State files for assisting visualization of model results


### Running the Models ###

* **Install TerraFERMA:** To view and run these models you will need to build and install the open source code [*TerraFERMA*](http://terraferma.github.io) (which can take some time, but is currently [supported](https://github.com/terraferma/terraferma/wiki/Supported%20Platforms) on most flavors of linux and Mac OSX).  Detailed instructions can be found on the [Wiki](http://terraferma.github.io). We suggest using our [Dorsal Scripts](https://github.com/terraferma/terraferma/wiki/Installation#scripted-installation) for installation.

* **Running Models:** Once the software is installed models can be run from within each subdirectory using

	```
			$ tfsimulationharness --test <filename>.shml
	```

	where `<filename>.shml` is the name of the *simulation harness* file that controls parameter sweeps,  organizes multiple runs, collects data and produces PDF plots of the results.  The actual models are described in the *TerraFERMA* markup language files with suffix `.tfml`.

* **Viewing Input files:**  both `.tfml` and `.shml` files can be viewed and manipulated using the [SPuD](https://www.imperial.ac.uk/engineering/departments/earth-science/research/research-groups/amcg/software/spud/) gui `diamond` i.e

	```
		$ diamond <filename>.tfml
	```


### Questions and Comments ###
Please address any questions or comments through the [issue tracker](https://github.com/mspieg/plasticitymodels/issues)