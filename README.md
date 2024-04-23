[![DOI](https://zenodo.org/badge/554903713.svg)](https://zenodo.org/doi/10.5281/zenodo.11045573)

# TikZ Assortment

This is a collection of TikZ graphics I have made over the years. They are mostly for my own use,
but I thought I might as well share them. I might add more in the near future and this repository's 
structure is still subject to change. For now, however, have fun looking around.

## Contents

* `BA_Pipeline` - A graphical representation of my bachelor's thesis data pipeline. Can be adapted for other purposes (i.e. anytime you need a flow chart of some sort).

* `Cherenkov_Radiation` - A graphical representation of the Cherenkov radiation emitted by a particle traveling faster than the speed of light in a medium.

* `Dulong_Petit_dewar` - Graphic showing a dewar flask containing water shown at different times when inserting a hot metal.

* `Feynman_diagrams` - Various Feynman diagrams.

* `Fraunhofer_diffraction_graph` - A typical Fraunhofer diffraction graph made with `pgfplots`.

* `Heitler_Model` - A graphical representation of the Heitler model of the electromagnetic component of an extensive air shower (EAS).

* `IACT` - A schematic of an extensive air shower in the atmosphere detected by a pair of Imaging Atmospheric Cherenkov Telescopes (IACT).

* `QRstandalone` - Generates a QR code. Mostly for fun, but also to play around with TeX interface3 syntax.

* `SolidStatePhysics/Brillouin_Hexagons` - Hexagonal lattice and its first Brillouin zone.

* `XKCD_Astronomer` - A sketch of an astronomer with a telescope, inspired by the XKCD comics.

* `falling_sphere_viscometer` - Classic falling-sphere viscometer according to the Hoeppler principle.

* `timer_circuit` - A timer circuit activated by a photodiode.

## Usage

Either compile all the files at once by calling
```
make
```
in the root directory of this repository, or compile each graphic individually by calling `make` inside the respective directory (you can also call `make -C <DIR>` from the root directory).

## Citing This Repository
If you want to use any of these graphics in one of your works, please refer to the Zenodo DOI above.
