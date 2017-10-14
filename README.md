# awsenv

switch aws profile by `.aws-profile` file.

## INSTALL

```
$ git clone git@github.com:ToQoz/awsprofile.git ~/.awsenv
```

### ZSH

add to .zshrc:

```
export PATH=~/.awsenv:$PATH
eval "$(awsenv hook zsh)"
```

### BASH

add to .bashrc:

```
export PATH=~/.awsenv:$PATH
eval "$(awsenv hook bash)"
```

## TIPS

### ZSH

show current profile in prompt:

```
update_prompt() {
  aws_prof=$AWS_PROFILE
  RPROMPT=""
  RPROMPT="$RPROMPT (aws:${aws_prof})"
  # others ...
}
add-zsh-hook precmd update_prompt
add-zsh-hook chpwd update_prompt
```
