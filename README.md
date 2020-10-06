# py2deb
Run py2deb on a container and avoid downgrading pip to version 7.

```bash
# Build the container.
$ docker build -t py2deb:1 .

# Use it. Creating deb package of pipenv-shebang as an example. The deb packages will be located in the folder where the following command was invoked.
$ docker run -it --rm -v $(pwd):/build py2deb:1 pipenv-shebang
```
