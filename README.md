![Joules Logo](https://cloud.githubusercontent.com/assets/7763904/7764836/ef617b0a-0024-11e5-8044-3cf354a4a306.png)

![forthebadge](http://forthebadge.com/images/badges/built-with-ruby.svg)](http://forthebadge.com)

![Gem Version](https://badge.fury.io/rb/joules.svg)](http://badge.fury.io/rb/joules)

### About
Joules is a library (gem) for providing simple Physics formulas in kinematics, forces, waves, electricity, and so much more. A selection of fundamental constants are also provided. It is written entirely in Ruby.
> Note: For library download, please visit [https://www.rubygems.org/gems/joules](https://www.rubygems.org/gems/joules).

### Library Compilation
```Bash
gem build joules.gemspec
```

### Library Installation
```Bash
gem install joules-0.2.0.gem
```

### Library Import
```Ruby
require 'joules'
```

### Usage
#### Simple Method Call
```Ruby
gravitational_potential_energy(0.5, 6)
```
This would return 29.43.
#### Method Composition
```Ruby
power(work_done(40, 2.34), 4)
```
This would return 23.4.
> Note: For documentation on methods and constants, please visit [http://www.rubydoc.info/gems/joules/](http://www.rubydoc.info/gems/joules/).

### Change Log
#### Version 0.0.1
* Added Physics formulas in kinematics, mass, weight, density, forces, momentum, impulse, energy, work, power, and pressure
* Added the following Physics constants: speed of light in free space and acceleration of free fall

#### Version 0.0.2
* Fixed publishing date in gem specification

#### Version 0.0.3
* Added the following Physics constants: permeability of free space, permittivity of free space, elementary charge, Planck constant, unified atomic mass unit, rest mass of electron, rest mass of proton, molar gas constant, avogadro constant, Boltzmann constant, and gravitational constant

#### Version 0.1.0
* Added Physics formulas in waves and thermodynamics
* Added the following Physics constants: rest mass of neutron, Stefan constant, and Wien constant
* Updated existing documentation style to YARD documentation style

#### Version 0.2.0
* Added Physics formulas in electricity
* Added geometric and conversion formulas commonly used in Physics

#### Version 0.3.0 (Next Release)
* Added Physics formulas in quantum

### Contribution
Please feel free to submit any ideas, questions, or problems by reporting an issue. 

### License
* Joules is licensed under the [MIT license](https://github.com/elailai94/Joules/blob/master/LICENSE.md).
