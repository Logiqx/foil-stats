# Project Env
. $(dirname $0)/env.sh

# Refresh stats
run_py_script foil_stats.py
ERRVAL=$?

# Compress Images
if [[ $ERRVAL == 0 ]]
then
	find docs -name *.png -exec optipng -o2 {} \;
	ERRVAL=$?
fi
