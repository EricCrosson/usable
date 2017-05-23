# Usable

> An interface for exposing hosted-projects via one-liners

**usable** defines and implements an interface for easily using a hosted
project.

**Note**: this interface is currently under initial development and is
subject to change without notice. Hold off until release 1.0.0 for more
stability.

## API

Note that

- all target projects will be cloned into the current working
directory.

- all commands adhere to the standard arguments

### apply

Clone the specified repository and invoke its `/bin/apply` script.
Arguments are passed to `git clone`.

### run

Similar to `apply`, but only accepts one argument to `git clone` the
target repository. Additional arguments indicate the script inside the
repository to invoke and any arguments for it.

> Tip: Use `run` over `apply` when the clone invocation is simple but
> the script invocation is not

## Standard arguments

### --clean

Remove the target project from disk if the API call completes
successfully.

## Use

To use an available command

    curl -fsSL https://raw.githubusercontent.com/EricCrosson/usable/master/bin/<COMMAND> | bash -s -- <ARGUMENTS>

replace `<COMMAND>` with the desired action from the usable interface
along with its `<ARGUMENTS>`.
