: ==== start ====
TESTNAME=mast-pluto-01
source /testing/pluto/bin/eastlocal.sh

ipsec setup start
ipsec auto --add westnet-eastnet
ipsec whack --debug-control --debug-controlmore --debug-klips
/testing/pluto/bin/wait-until-pluto-started
