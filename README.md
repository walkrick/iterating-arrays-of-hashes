# Iterating through dogs (and owners)

This exercise is intended to get some practice iterating through arrays with complex hashes.
Please do not modify any constants you see or try and cheat by just returning and array with those hashes hand written.

To run:

```bash
gem install rspec
rspec --color dogs_spec.rb
```

To focus on a test, just add the line number like:

```bash
rspec --color ./dogs_spec.rb:9
```

Good luck!

# Extra Credit

Re-write your implementation without:

* `each`
* local variables
* code duplication

# Setup

* Fork
* Clone
* Turn on TravisCI for the fork by
  visiting https://travis-ci.org/profile/<github user name>, clicking the "Sync now" button
  and scrolling down to find the repository to build.
* Create a new branch for your work using `git checkout -b v1`
* Implement specs and code
* Push using `git push -u origin v1`

## Further Practice

This warmup can be completed multiple times to increase your comfort level with the material.
To work on this from scratch, you can:

1. Add an upstream remote that points to the original repo `git remote add upstream git@github.com:gSchool/iterating-arrays-of-hashes.git`
1. Fetch the latest from the upstream remote using `git fetch upstream`
1. Create a new branch from the master branch of the upstream remote `git checkout -b v2 upstream/master`
1. Implement specs and code
1. Push using `git push -u origin v2`

Each time you do the exercise, create a new branch. For example the 3rd time you do the exercise the branch
name will be v3 instead of v2.
