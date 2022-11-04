DIRS := BA_Pipeline/ Brillouin_Hexagons/ Cherenkov_Radiation/ Dulong_Petit_dewar/ falling_sphere_viscometer/
DIRS += Feynman_diagrams/ Fraunhofer_diffraction_graph/ Heitler_Model/ timer_circuit/ XKCD_Astronomer/


all:
	$(foreach dir, $(DIRS), $(MAKE) -C $(dir) && ) true

clean:
	$(foreach dir, $(DIRS), $(MAKE) -C $(dir) clean && ) true

.PHONY: all clean
