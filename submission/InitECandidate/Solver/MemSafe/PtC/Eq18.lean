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

theorem cbk_9 : cbd ptS9 = 50242184020686399661167408862418942629830010077312815413524 := by
  have callPrice : tbl (nm "alloc") = 2 := by decide +kernel
  (conv_lhs => rw [ptS9, cbd, callPrice, cbk_11]) <;> decide +kernel

theorem cbk_8 : cbd ptS8 = 50242184020686399661167408862418942629830010077312815413524 := by
  (conv_lhs => rw [ptS8, cbd, cbk_10, cbk_9, Nat.zero_add]) <;> decide +kernel

theorem cbk_7 : cbd ptS7 = 50242184020686399661167408862418942629830010077312815413529 := by
  have callPrice : tbl (nm "tx_chain_id") = 4 := by decide +kernel
  (conv_lhs => rw [ptS7, cbd, callPrice, cbk_8]) <;> decide +kernel

theorem cbk_6 : cbd ptS6 = 0 := by
  unfold ptS6
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_5 : cbd ptS5 = 50242184020686399661167408862418942629830010077312815413529 := by
  have leftCost : cbd .skip = 0 := by decide_cbv
  (conv_lhs => rw [ptS5, cbd, leftCost, cbk_7, Nat.zero_add]) <;> decide +kernel

theorem cbk_4 : cbd ptS4 = 0 := by
  unfold ptS4
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_3 : cbd ptS3 = 50242184020686399661167408862418942629830010077312815413529 := by
  (conv_lhs => rw [ptS3, cbd, cbk_6, cbk_5, Nat.zero_add]) <;> decide +kernel

theorem cbk_2 : cbd ptS2 = 50242184020686399661167408862418942629830010077312815413529 := by
  (conv_lhs => rw [ptS2, cbd, cbk_4, cbk_3, Nat.zero_add]) <;> decide +kernel

theorem cbk_1 : cbd ptS1 = 50242184090838478289801244582038102369297508177384405154950 := by
  have callPrice : tbl (nm "encode_transaction") = 70152078628633835719619159739467498100071589741420 := by decide +kernel
  (conv_lhs => rw [ptS1, cbd, callPrice, cbk_2]) <;> decide +kernel

theorem cbk_0 : cbd ptS0 = 50242184090838478289801244582038102369297508177384405154950 := by
  have leftCost : cbd (.assign .global (nm "bal_index") (.op .add [(lv (nm "index")), (cw 1)])) = 0 := by decide_cbv
  (conv_lhs => rw [ptS0, cbd, leftCost, cbk_1, Nat.zero_add]) <;> decide +kernel

end InitECandidate.Solver.MemSafe.PtC

#print axioms InitECandidate.Solver.MemSafe.PtC.cbk_0
