source('unittest.R')
dyn.load('funcptr_wrap.so')
source('funcptr_wrap.R')
cacheMetaData(1)
unittest(do_op(1, 3, add), 4)
unittest(do_op(2, 3, mul), 6)
unittest(do_op(2, 3, funcvar()), 5)