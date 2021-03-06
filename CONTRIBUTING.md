## Contributing to Joules
In order to make Joules better, **everyone** is encouraged to help improve this project. Before diving into the code, please familiarize yourself with the following guidelines and conventions.

### Getting Started
1. Install the [Ruby programming language](https://www.ruby-lang.org/en/documentation/installation/) for your platform.
2. [Fork](https://help.github.com/articles/fork-a-repo/) the project.

   ```Bash
   # Clone your fork of the repository into the current directory
   git clone https://github.com/<your-username>/Joules
   # Navigate to the newly cloned directory
   cd <repo-name>
   # Assign the original repository to a remote called "upstream"
   git remote add upstream git://github.com/elailai94/Joules
   ```
3. Get the latest changes from upstream if you forked awhile ago.

   ```Bash
   git checkout master
   git pull upstream master
   ```

4. Run all tests.

   ```Bash
   rake test
   ```

### Ways to Contribute
Here are some ways you can contribute:
* by using alpha, beta, and pre-release versions
* by reporting bugs
* by suggesting new features
* by writing or editing documentation
* by writing code
* by refactoring code
* by closing [issues](https://www.github.com/elailai94/Joules/issues)

### Issues
The [GitHub issue tracker](https://www.github.com/elailai94/Joules/issues) is used to track bugs and features. 
#### Bug Reports
When submitting a bug report, please use the following guidelines:

1. **Use the GitHub issue search** to check if the bug has already been reported.
2. **Check if the issue has been fixed** by trying to reproduce it using the latest master in the repository.
3. **Isolate the problem** by creating a reduced test case and a live example.
4. **Elaborate as much as possible in your report** by including specific information about the environment (e.g.: operating system and version, library (gem) version, etc.) and steps required to reproduce the issue.

#### Feature Requests
When submitting a feature request, please use the following guidelines:

1. **Use the GitHub issue search** to check if the feature has already been suggested.
2. **Check if the feature has been introduced** by trying to test for it using the latest *master* in the repostory.
3. **Elaborate as much as possible in your report** by providing as much detail and context as possible on why your idea fits the scope and aims of the project.

> Note: Contribution enquiries should take place before any significant pull request. Otherwise, you risk spending a lot of time working on something that might be rejected for good reasons.

### Pull Requests
1. [Fork](https://help.github.com/articles/fork-a-repo/) the project.
2. Create a topic branch.
3. Implement your feature or bug fix.
4. Add documentation for your feature or bug fix.
5. Run ```rake doc:yard``` or ```yard doc```. If your changes are not 100% documented, go back to step 4.
6. Commit and push your changes.
7. Submit a [pull request](https://help.github.com/articles/using-pull-requests/) with a clear title and description. Please do not include changes to the gemspec or changelog file. (If you want to create your own version for some reason, please do so in a separate commit.)

### Coding Convention
Although there is currently no strict set of coding or style guidelines, it is advised that you use common sense when contributing code and make an effort to use a similar style to nearby existing code. It is strongly recommended that you read through the [Ruby style guide](https://www.github.com/styleguide/ruby).

### Documentation Convention
The [YARD documentation style](http://www.rubydoc.info/gems/yard/file/docs/GettingStarted.md) is used to document code.

### License
By contributing to Joules, you agree that your contributions will be licensed under its [MIT license](https://www.github.com/elailai94/Joules/blob/master/LICENSE.md).
