# Auto Test Tool


# Environment

- Java
- Shell or Bash

# Execute

```
$ sh test.sh ${CLASS_NAME} ${INPUT_TEXTFILE}
```
or
```
$ sh test.sh -e ${EXPECTED_RESULT_TEXTFILE} ${CLASS_NAME} ${INPUT_TEXTFILE}
```

# example

```
$ sh test.sh Main input.txt
```

```
$ sh test.sh -e expected.txt Main input.txt
```

```input.txt
3
world
hoge
foo

```
