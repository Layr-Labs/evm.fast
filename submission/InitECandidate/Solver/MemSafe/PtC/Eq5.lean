import InitECandidate.Solver.MemSafe.PtC.Eq4

/-!
# PtC: stages 1 to 3
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.PtC
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx InitECandidate.Solver.MemSafe.Hooks

private theorem indexInitCost : cbd (.assign .local (nm "i") (cw 0)) = 0 := by decide_cbv

theorem cbk_165 : cbd ptS165 = 53933052448554541663636672732148418761166019016540442888614683201939 := by
  have callPrice : tbl (nm "lst_push") = 73786976294838206472 := by decide +kernel
  conv_lhs => rw [ptS165, cbd, callPrice, cbk_167]

theorem cbk_164 : cbd ptS164 = 53933052448554541663636672732148418761166019016558889632688392753556 := by
  conv_lhs => rw [ptS164, cbd, cbk_166, cbk_165]

theorem cbk_163 : cbd ptS163 = 53933052448554541663636672732148418761166019016558889632688392753556 := by
  rw [ptS163, cbd, indexInitCost, cbk_164, Nat.zero_add]

theorem cbk_162 : cbd ptS162 = 53933052448554541663636672732148418761166019016558889632688392753556 := by
  rw [ptS162, cbd, cbk_163]

theorem cbk_161 : cbd ptS161 = 53933052448554541663636672732148418761166019016558889632688392753556 := by
  have storeCost : cbd (.store (.op .add [(lv (nm "stable_logs")), (cw 8)]) (lv (nm "nl"))) = 0 := by
    decide_cbv
  rw [ptS161, cbd, storeCost, cbk_162, Nat.zero_add]

theorem cbk_160 : cbd ptS160 = 0 := by
  unfold ptS160
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_159 : cbd ptS159 = 53933052448554541663636672732148418761166019016558889632688392753563 := by
  have callPrice : tbl (nm "lst_new") = 6 := by decide +kernel
  conv_lhs => rw [ptS159, cbd, callPrice, cbk_161]

theorem cbk_158 : cbd ptS158 = 53933052448554541663636672732148418761166019016558889632688392753563 := by
  rw [ptS158, cbd, cbk_160, cbk_159, Nat.zero_add]

theorem cbk_157 : cbd ptS157 = 1361129467683753854111752846759006568458 := by
  unfold ptS157
  try simp only [callD, cbd, cbk_184]
  try decide_cbv

theorem cbk_156 : cbd ptS156 = 53933052448554541663636672732148418761166019016558889632688392753563 := by
  rw [ptS156, cbd, cbk_158]

theorem cbk_155 : cbd ptS155 = 53933052448554541663636672733509548228849772870670642479447399322021 := by
  conv_lhs => rw [ptS155, cbd, cbk_157, cbk_156]

theorem cbk_154 : cbd ptS154 = 53933052448554541663636672733509548228849772870670642479447399322021 := by
  rw [ptS154, cbd, indexInitCost, cbk_155, Nat.zero_add]

end InitECandidate.Solver.MemSafe.PtC

#print axioms InitECandidate.Solver.MemSafe.PtC.cbk_165
#print axioms InitECandidate.Solver.MemSafe.PtC.cbk_159
