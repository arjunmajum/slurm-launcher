# slurm-launcher

A lightweight tool for launching and managing experiments with [slurm](https://slurm.schedmd.com/documentation.html).

> **TLDR:** This tool copies your experiment code into a new folder before launching your job on slurm.

By making a full copy of your code, you won't need to worry about local edits interfering with your slurm jobs. It also makes it easy to see exactly what code, configuration, etc. was used for previous experiments.

## Getting started

The `slurm-launcher` tools (`launch` and `search`) can be installed using the commands below.

You will be asked to specify an "experiments" directory that will be stored in `SLURM_LAUNCHER_ROOT`.
This directory will be the root folder for storing code, data, checkpoints, etc. for your experiments.

```bash
git clone git@github.com:arjunmajum/slurm-launcher.git
cd slurm-launcher
./install.sh
```

To verify the installation run:

```bash
which launch search
# should print the paths to the `launch` and `search` scripts
```

## Launching an experiment

To launch an experiment simply replace `sbatch [...]` with `launch [...]`. 

The `launch` tool will do three things:

1. Copies the current working directory into a new folder for this experiment within `SLURM_LAUNCHER_ROOT`.
2. Launches a job on slurm from the new experiment folder using `sbatch`.
3. Saves the slurm `jobid` to a file named "jobid" in the experiment folder.

Example:

```bash
launch test.sh
# will run `sbatch test.sh` and output the JOBID
```

## Searching for an old experiment

The `search` tool can be used to find the experiment folder for a previous job.

Example:

```bash
search JOBID
# will print the path to folder
```

Use `search -h` to see more options.
