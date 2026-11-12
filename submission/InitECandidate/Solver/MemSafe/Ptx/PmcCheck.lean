import InitECandidate.Solver.MemSafe.Ptx.PmcFun

/-! Axiom check of the theorems `pmc_funSpec` uses from the earlier `Ptx/` files. -/

open InitECandidate.Solver.MemSafe.Ptx

#print axioms jb_alloc
#print axioms jd_of_jc
#print axioms kb_of_runT
#print axioms runT_src
#print axioms freshBuf_runT
#print axioms freshBuf_disj
#print axioms ordered_of_G
#print axioms hoare_mzJC'
#print axioms fe_of_jc
#print axioms hoare_pmcBody
#print axioms pmc_funSpec
