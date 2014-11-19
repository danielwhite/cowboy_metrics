PROJECT = cowboy_metrics

CT_OPTS = -cover test/cover.spec -config test/snmp.config
CT_SUITES = cm_www_mib cm_eunit cm_requests
TEST_DEPS = cowboy ibrowse
dep_cowboy = git https://github.com/ninenines/cowboy 0.9.0
dep_ibrowse = git https://github.com/cmullaparthi/ibrowse.git v4.0.2

## Include standard targets

include erlang.mk

## Extensions to compile the mib files

COMPILE_MIB_FIRST = SYSAPPL-MIB

ERLC_MIB_OPTS = \
	-I ./priv/mibs \
	+'{verbosity, info}'
