# Programming exercise

## Instructions

Build:

```bash
make
```

Install (copy build files into the proper directories):

```bash
make install PREFIX=<folder_name>
```

Uninstall (undo install):

```bash
make uninstall
```

Before running, it is needed to set the path to libex2.so using:

```bash
export LD_LIBRARY_PATH=path/to/libex2
```

Run:
```bash
./ex1
```