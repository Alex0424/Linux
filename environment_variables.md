# Environment Variables

## Operating System = Linux

### Activate from CLI (Command Line Interface) 

```shell
team=ops
```

Validate
```shell
echo $team
```

### Activate from `.env` file

```shell
echo "team=ops" >> .env
```
```shell
source ENV
```

**Repository Security**: Ignore `.env` files for security purposes.
```
echo ".env" >> .gitignore
```
