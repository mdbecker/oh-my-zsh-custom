alias mlint="git diff master --name-only | egrep '.py$' | xargs bin/pylint --msg-template='{path}:{line}: [{msg_id}({symbol}), {obj}] {msg}' --rcfile=pylintrc | egrep -v '^tests.*: .*(W0621|C0111|Invalid method name \"should_|Method could be a function|wildcard import|Arguments number differs|Too many public methods|Unused argument|Redefining built-in|Too many instance attributes)|py:1.*Similar lines|Invalid name|Too many arguments'"
alias mpep="git diff master --name-only | egrep '.py$' | xargs bin/pep8"
alias mlint2="git diff master --name-only | egrep '.py$' | xargs env/bin/pylint --output-format=parseable --rcfile=pylintrc | egrep -v '^tests.*: .*(Missing docstring|Invalid name \"should_|Method could be a function|wildcard import|Arguments number differs|Too many public methods|Unused argument|Redefining name|Too many instance attributes|Class has no __init__ method|Use of super on an old style class)|py:1.*Similar lines|Invalid name|Too many arguments|Line too long'"
alias mpep2="git diff master --name-only | egrep '.py$' | xargs env/bin/pep8 --max-line-length=99"
alias mpep257="git diff master --name-only | egrep '.py$' | xargs env/bin/pep257 2>&1 | egrep -v '0: (First line should end with a period|Blank line missing after one-line summary)|test_.*All modules should have docstrings'"
alias mcov="make coverage 2>&1 | egrep \`git diff master --name-only  | sed 's/\//\./g' | sed 's/\.py$//g' | xargs | sed 's/ /|/g'\` | grep -v '100%'"
alias micov="make integration-coverage 2>&1 | egrep \`git diff master --name-only  | sed 's/\//\./g' | sed 's/\.py$//g' | xargs | sed 's/ /|/g'\` | grep -v '100%'"
alias tmerge="make test; mpep; mlint; mcov; micov"
alias tmerge2="make test; mpep2; mpep257; mlint2; mcov; micov"
alias sshi="ssh -i ~/.ssh/michaelb_rsa"
alias scpi="scp -i ~/.ssh/michaelb_rsa"
alias sshtun="ssh -N -f"
alias ftun="sshtun t-sechs; reset; clear"
alias ipytun="sshtun ipy; reset; clear"
alias pyapi="PYDATA_BOSTON_DEMO_CONF=configuration/development.conf env/bin/python pydata_boston_demo/api/views/__init__.py"
alias pyworker="PYDATA_BOSTON_DEMO_CONF=configuration/development.conf env/bin/python pydata_boston_demo/workers/language_predictor_worker.py"
alias pyui="gluefist -t serve"
alias conda="~/anaconda/bin/conda"
