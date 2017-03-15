Overview
========

This project defines and implements an interface for easily using a
hosted project.

Note: this interface is currently under initial development and is
subject to change without notice.  Hold off until release 1.0.0 for
more stability.

Interface
=========

Note that all target projects will be cloned into the current working
directory.

apply
    Clone the specified repository and invoke its ``/bin/apply`` script.
    Arbitrary arguments to ``git clone`` are supported, but no other
    arguments are allowed.

run
    Similar to ``apply``, but only accepts one argument to ``git
    clone``: the target repository.  Additional arguments indicate the
    script inside the repository to invoke and any arguments for it.
    Use ``run`` over ``apply`` when the clone invocation is simple but
    the script invocation is not


To use any of the available commands, execute the following in your
terminal::


  curl -fsSL https://raw.githubusercontent.com/EricCrosson/usable/master/bin/<COMMAND> | bash -s -- <PROJECT>

taking care to replace ``<COMMAND>`` and ``<PROJECT>`` appropriately.
Replace ``<COMMAND>`` with the desired action from the usable
interface, e.g. ``apply``, and ``<PROJECT>`` gets passed to ``git
clone`` so it can be a repository url, or a more complex clone
invocation.
