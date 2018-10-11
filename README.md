# Auto Test Tool


# Environment

- Java
- Shell or Bash

# Execute

```
$ sh invoke.sh ${CLASS_NAME} ${INPUT_TEXTFILE}
```
or
```
$ sh invoke.sh -e ${EXPECTED_RESULT_TEXTFILE} ${CLASS_NAME} ${INPUT_TEXTFILE}
```

# example

```
$ sh invoke.sh Main input.txt
```

```
$ sh invoke.sh -e expected.txt Main input.txt
```

```input.txt
3
world
hoge
foo

```