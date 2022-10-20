DIRS := BA_Pipeline/ Cherenkov_Radiation/ Heitler_Model/ Brillouin_Hexagons/ XKCD_Astronomer/


all:
	$(foreach dir, $(DIRS), $(MAKE) -C $(dir) && ) true

clean:
	$(foreach dir, $(DIRS), $(MAKE) -C $(dir) clean && ) true

.PHONY: all clean
