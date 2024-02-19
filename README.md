# zsh-istage

> A zsh plugin to interactively stage files for commit with git

## Installation

### Zplug

```zsh
zplug "raisedadead/zsh-istage"
```

### Antigen

```zsh
antigen bundle raisedadead/zsh-istage
```

### Oh-My-Zsh (WHY?!!)

```zsh
git clone https://github.com/raisedadead/zsh-istage.git $ZSH_CUSTOM/plugins/zsh-istage
```

```zsh
plugins=(
  #...
  zsh-istage
  )
```

### Manual

```zsh
git clone https://github.com/raisedadead/zsh-istage.git
source zsh-istage/istage.plugin.zsh
```

## Usage

Navigate to a git repository and run

```zsh
istage
```

## License

Software: The software as it is licensed under the [ISC](LICENSE) License,
please feel free to extend, re-use, share the code.
