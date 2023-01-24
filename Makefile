# Categories
SSP := SolidStatePhysics

# Directories
DIRS := BA_Pipeline/ Cherenkov_Radiation/ Heitler_Model/ $(SSP)/Brillouin_Hexagons/ XKCD_Astronomer/


all clean: $(DIRS)

$(DIRS)::
	$(MAKE) -C $@ $(MAKECMDGOALS)

.PHONY: all clean
