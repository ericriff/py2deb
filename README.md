# py2deb
Run py2deb on a container and avoid downgrading `pip` to version 7.

`py2deb` has some [annoyonf dependencies](https://pypi.org/project/py2deb/#id19) that make it only work with an older version of `pip`. Running this tool inside a container removes this issue.
The output `deb` packages will be stored in the fodler where the command gets called.
This works with packages pulled from `pypi` (just specify the name) or with local projects (specify the path to the `setup.py` file).


```bash
# Build the container.
$ docker build -t py2deb:1 .

# Creating deb package of pipenv-shebang as an example.
$ docker run -it --rm -v $(pwd):/build py2deb:1 -r . -- pipenv-shebang

# Creating deb package of a local project.
$ docker run -it --rm -v $(pwd):/build py2deb:1 -r . -- path-to-project
```
