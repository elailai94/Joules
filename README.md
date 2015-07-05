![Joules Logo](https://cloud.githubusercontent.com/assets/7763904/7764836/ef617b0a-0024-11e5-8044-3cf354a4a306.png)

[![Ruby Badge](http://forthebadge.com/images/badges/built-with-ruby.svg)](http://forthebadge.com)

[![Gem Version](https://badge.fury.io/rb/joules.svg)](http://badge.fury.io/rb/joules)
[![Build Status](https://travis-ci.org/elailai94/Joules.svg?)](https://travis-ci.org/elailai94/Joules)
[![Inline Docs](http://inch-ci.org/github/elailai94/joules.svg?style=shields)](https://inch-ci.org/github/elailai94/Joules)

### About
Joules is a library (gem) for providing simple Physics formulas in kinematics, forces, waves, electricity, and so much more. A selection of fundamental constants are also provided. It is written entirely in Ruby.
> Note: For library download, please visit [https://www.rubygems.org/gems/joules](https://www.rubygems.org/gems/joules).

### Library Compilation
```Bash
gem build joules.gemspec
```

### Library Installation
```Bash
gem install joules-0.4.4.gem
```

### Library Import
```Ruby
require 'joules'
```

### Usage
#### Simple Method Call
```Ruby
Joules.gravitational_potential_energy(0.5, 6)
```
This would return 29.43.
#### Method Composition
```Ruby
Joules.power(Joules.work_done(40, 2.34), 4)
```
This would return 23.4.
> Note: For documentation on usage of methods and constants, please visit [http://www.rubydoc.info/gems/joules/](http://www.rubydoc.info/gems/joules/).

### Contributing
We'd love to have your help in making Joules better. If you're interested, please read our [Guide to Contributing](https://www.github.com/elailai94/Joules/blob/master/CONTRIBUTING.md).

### License
* Joules is licensed under the [MIT license](https://www.github.com/elailai94/Joules/blob/master/LICENSE.md).
