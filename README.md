# docker-awspec
This is the repository of the frc9/awspec docker image found in Docker Hub. Supported version is 1.9.0.
# Prerequisites

You only need to have `docker` installed to run this `awspec` Docker image and `git` if you wish to clone the project locally.

# Installation

* Download and put the `awspec` script into a directory that's in your `PATH`.

## Usage

When you run the provided scripts, by default they will use the "latest" Docker image version.  For example:

```bash
$ awspec --help
```

## Custom Usage

If you want to build a specific `VERSION` of `awspec` that is not available on Docker Hub, clone this repository and run the following at the command line:

```bash
$ VERSION=<VERSION> ./build.sh --build
```

Once the new image is in your local registry, pass the `VERSION` you wish to use as an ENV variable to the provided `awspec` script. For example:

```bash
$ VERSION=<VERSION> awspec -v
```
