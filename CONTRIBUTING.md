## Contributing to Joules
We'd love to have your help in making Joules better. 

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

### Coding Conventions

### Issues
The [GitHub issue tracker](https://github.com/elailai94/Joules/issues) is used to track bugs and features. 
#### Bug Report
When submitting a bug report, please use the following guidelines:

1. **Use the GitHub issue search** to check if the issue has already been reported.
2. **Check if the issue has been fixed** by trying to reproduce it using the latest master in the repository.
3. **Isolate the problem** by creating a reduced test case and a live example.
4. **Elaborate as much as possible in your report** by including specific information about the environment (e.g.: operating system and version, library (gem) version, etc.) and steps required to reproduce the issue.

#### Feature Request
When submitting a feature request, please use the following guidelines:
1. 

### License
By contributing to Joules, you agree that your contributions will be licensed under its [MIT license](https://github.com/elailai94/Joules/blob/master/LICENSE.md).
