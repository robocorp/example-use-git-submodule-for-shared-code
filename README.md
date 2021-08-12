# Use Git submodule for shared robot code

This example robot code repository includes another robot repository (https://github.com/robocorp/example-shared-robot-framework-keywords-and-libraries) as a [Git submodule](https://git-scm.com/book/en/v2/Git-Tools-Submodules).

The included repository contains (fictional) common shared code used by many robot projects. Instead of copying & pasting the code into each robot project that needs it, isolating and sharing the common code between the robots might make sense!

This project was created using [RCC](https://github.com/robocorp/rcc) and the standard Robot Framework template.

The robot includes the shared robot code from the other repository as a Git submodule. The submodule is stored in the `shared` directory.

The `shared` Git submodule in this project was created with the `git submodule add` command:

```bash
git submodule add https://github.com/robocorp/example-shared-robot-framework-keywords-and-libraries shared
```

The `.gitmodules` file defines the path and the URL to the included repository:

```bash
[submodule "shared"]
	path = shared
	url = https://github.com/robocorp/example-shared-robot-framework-keywords-and-libraries
```

See the `tasks.robot` file for examples of importing and using the shared code.

## How to clone this project, including the Git submodule?

To test and clone this project, including the Git submodule, you can use the following command:

```bash
git clone --recurse-submodules git@github.com:robocorp/example-use-git-submodule-for-shared-code.git
```

> The `--recurse-submodules` option handles cloning the submodule. See the [Git submodule documentation](https://git-scm.com/book/en/v2/Git-Tools-Submodules) for more information.

## How to pull the upstream changes to the submodule?

To pull the upstream changes to the submodule, use the following command:

```bash
git submodule update --remote
```

## Notes

The Git submodule strategy works for code-sharing, but there are some caveats. Control Room does not automatically clone the submodules at the time of writing, and there is no way to run manual cloning commands in Control Room.

If you use Git submodules, you can still upload your robot to Control Room using the upload functionality in Robocorp Lab, VS Code, or RCC. Since the upload creates a zip package with the project contents, the zip also contains the submodules!
