* Reproduce Stata 15 bug

cd "/Users/bbdaniels/GitHub/spmap-stata-15"

use data.dta , clear

local theVersion = substr("`c(version)'",1,strpos("`c(version)'",".")-1)

spmap treat_all using ///
	"${directory}/constructed/india_shp.dta" ///
	, id(id) clm(custom) clbreaks(0 .33 .67 1) fc(maroon navy dkgreen) ///
		legenda(on) legstyle(2)

graph export "map_`theVersion'.eps" , replace

* Have a lovely day!
