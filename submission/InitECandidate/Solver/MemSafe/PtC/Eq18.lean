import InitECandidate.Solver.MemSafe.PtC.Eq17

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

theorem cbk_9 : cbd ptS9 = 320714612183906951396553789352120198367085683685915028881512727256264 := by
  have callPrice : tbl (nm "alloc") = 2 := by decide +kernel
  (conv_lhs => rw [ptS9, cbd, callPrice, cbk_11]) <;> decide +kernel

theorem cbk_8 : cbd ptS8 = 320714612183906951396553789352120198367085683685915028881512727256264 := by
  (conv_lhs => rw [ptS8, cbd, cbk_10, cbk_9, Nat.zero_add]) <;> decide +kernel

theorem cbk_7 : cbd ptS7 = 320714612183906951396553789352120198367085683685915028881512727256269 := by
  have callPrice : tbl (nm "tx_chain_id") = 4 := by decide +kernel
  (conv_lhs => rw [ptS7, cbd, callPrice, cbk_8]) <;> decide +kernel

theorem cbk_6 : cbd ptS6 = 0 := by
  unfold ptS6
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_5 : cbd ptS5 = 320714612183906951396553789352120198367085683685915028881512727256269 := by
  have leftCost : cbd .skip = 0 := by decide_cbv
  (conv_lhs => rw [ptS5, cbd, leftCost, cbk_7, Nat.zero_add]) <;> decide +kernel

theorem cbk_4 : cbd ptS4 = 0 := by
  unfold ptS4
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_3 : cbd ptS3 = 320714612183906951396553789352120198367085683685915028881512727256269 := by
  (conv_lhs => rw [ptS3, cbd, cbk_6, cbk_5, Nat.zero_add]) <;> decide +kernel

theorem cbk_2 : cbd ptS2 = 320714612183906951396553789352120198367085683685915028881512727256269 := by
  (conv_lhs => rw [ptS2, cbd, cbk_4, cbk_3, Nat.zero_add]) <;> decide +kernel

theorem cbk_1 : cbd ptS1 = 320714612221569561808873873965420065562295205438959855978451346071290 := by
  have callPrice : tbl (nm "encode_transaction") = 37662610412320084613299867195209521753044827096938618815020 := by decide +kernel
  (conv_lhs => rw [ptS1, cbd, callPrice, cbk_2]) <;> decide +kernel

theorem cbk_0 : cbd ptS0 = 320714612221569561808873873965420065562295205438959855978451346071290 := by
  have leftCost : cbd (.assign .global (nm "bal_index") (.op .add [(lv (nm "index")), (cw 1)])) = 0 := by decide_cbv
  (conv_lhs => rw [ptS0, cbd, leftCost, cbk_1, Nat.zero_add]) <;> decide +kernel

end InitECandidate.Solver.MemSafe.PtC

#print axioms InitECandidate.Solver.MemSafe.PtC.cbk_0
