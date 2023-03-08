# Categories
SSP := SolidStatePhysics

# Directories
DIRS := BA_Pipeline/ Cherenkov_Radiation/ Dulong_Petit_dewar/ Feynman_diagrams 
DIRS += Fraunhofer_diffraction_graph/ Heitler_Model/ IACT/ QRstandalone/ 
DIRS += $(SSP)/Brillouin_Hexagons/ XKCD_Astronomer/ falling_sphere_viscometer/
DIRS += timer_circuit/


all clean: $(DIRS)

$(DIRS)::
	$(MAKE) -C $@ $(MAKECMDGOALS)

.PHONY: all clean
