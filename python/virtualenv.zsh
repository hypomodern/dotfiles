# export WORKON_HOME=$HOME/.virtualenvs
# export PROJECT_HOME=$HOME/Projects
# export VIRTUAL_ENV_DISABLE_PROMPT="true"

# wrapsource=`which virtualenvwrapper_lazy.sh`

# # from oh-my-zsh
# if [[ -f "$wrapsource" ]]; then
#   source $wrapsource

#   if [[ ! $DISABLE_VENV_CD -eq 1 ]]; then
#     # Automatically activate Git projects' virtual environments based on the
#     # directory name of the project. Virtual environment name can be overridden
#     # by placing a .venv file in the project root with a virtualenv name in it
#     function workon_cwd {
#         # Check that this is a Git repo
#         PROJECT_ROOT=`git rev-parse --show-toplevel 2> /dev/null`
#         if (( $? == 0 )); then
#             # Check for virtualenv name override
#             ENV_NAME=`basename "$PROJECT_ROOT"`
#             if [[ -f "$PROJECT_ROOT/.venv" ]]; then
#                 ENV_NAME=`cat "$PROJECT_ROOT/.venv"`
#             fi
#             # Activate the environment only if it is not already active
#             # print "checking $WORKON_HOME/$ENV_NAME/bin/activate"
#             if [[ "$VIRTUAL_ENV" != "$WORKON_HOME/$ENV_NAME" ]]; then
#                 if [[ -e "$WORKON_HOME/$ENV_NAME/bin/activate" ]]; then
#                     # print "activating... $ENV_NAME"
#                     workon "$ENV_NAME" && export CD_VIRTUAL_ENV="$ENV_NAME"
#                 fi
#             fi
#         elif [ $CD_VIRTUAL_ENV ]; then
#             # We've just left the repo, deactivate the environment
#             # Note: this only happens if the virtualenv was activated automatically
#             deactivate && unset CD_VIRTUAL_ENV
#         fi
#         unset PROJECT_ROOT
#     }

#     # New cd function that does the virtualenv magic
#     function cd {
#         builtin cd "$@" && workon_cwd
#     }
#   fi
# else
#   print "zsh virtualenvwrapper plugin: Cannot find virtualenvwrapper_lazy.sh. Please install with \`pip install virtualenvwrapper\`."
# fi
