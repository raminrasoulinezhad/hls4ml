#
# Export few environment variables to compile the example with Mentor's
# provided compiler and libraries.
#
# Usage:
# $ source envsetup.sh
#

# Base directory for CAD tools.
export CAD_PATH="/opt/cad"

# We do need licensing for this example.
export LM_LICENSE_FILE=${LM_LICENSE_FILE}:"1720@bioeecad.ee.columbia.edu"

# This path is host dependent.
export CATAPULT_PATH="${CAD_PATH}/catapult"

# Let's use GCC provided with Catapult HLS.
export PATH="${CATAPULT_PATH}/bin":${PATH}

# We do need Mentor Modelsim (simulator) for this example.
export PATH="${CAD_PATH}/msim/modeltech/bin":$PATH

# Let's use the SystemC headers and library provided with Catapult HLS.
export SYSTEMC="${CATAPULT_PATH}/shared"

# We need Vivado for logic synthesis.
source ${CAD_PATH}/vivado/settings64.sh

# Makefiles and scripts from Catapult HLS may rely on this variable.
#export MGC_HOME=${CATAPULT_PATH}

# Fix an issue on Ubuntu 18.04.
#export LIBRARY_PATH="/usr/lib/x86_64-linux-gnu":$LIBRARY_PATH
