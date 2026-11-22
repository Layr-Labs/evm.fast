import InitECandidate.Solver.MemSafe.PtC.Eq13

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

theorem cbk_57 : cbd ptS57 = 320714611882606068097993107885597259411071475421148150818188043472042 := by
  (conv_lhs => rw [ptS57, cbd, cbk_58]) <;> decide +kernel

theorem cbk_56 : cbd ptS56 = 18446744073709551617 := by
  unfold ptS56
  try simp only [callD, cbd, cbk_218]
  try decide_cbv

theorem cbk_55 : cbd ptS55 = 320714611882606068097993107885597259411071475421148150818188043472045 := by
  have callPrice : tbl (nm "alloc") = 2 := by decide +kernel
  (conv_lhs => rw [ptS55, cbd, callPrice, cbk_57]) <;> decide +kernel

theorem cbk_54 : cbd ptS54 = 320714611882606068097993107885597259411071475421166597562261753023662 := by
  (conv_lhs => rw [ptS54, cbd, cbk_56, cbk_55]) <;> decide +kernel

theorem cbk_53 : cbd ptS53 = 320714611882606068097993107885597259411071475421166597562261753023662 := by
  (conv_lhs => rw [ptS53, cbd, cbk_54]) <;> decide +kernel

theorem cbk_52 : cbd ptS52 = 320714611882606068097993107885597259411071475421166597562261753023662 := by
  (conv_lhs => rw [ptS52, cbd, cbk_53]) <;> decide +kernel

theorem cbk_51 : cbd ptS51 = 320714611882606068097993107885597259411071475421166597562261753023662 := by
  have leftCost : cbd (.store (lv (nm "al_addrs")) (.load .one (.op .add [(gv (nm "be")), (cw 32)]))) = 0 := by decide_cbv
  (conv_lhs => rw [ptS51, cbd, leftCost, cbk_52, Nat.zero_add]) <;> decide +kernel

theorem cbk_50 : cbd ptS50 = 0 := by
  have yesCost : cbd (.assign .local (nm "nal") (.load .one (.op .add [(lv (nm "tx")), (cw 216)]))) = 0 := by decide_cbv
  have noCost : cbd .skip = 0 := by decide_cbv
  (conv_lhs => rw [ptS50, cbd, yesCost, noCost]) <;> decide +kernel

theorem cbk_49 : cbd ptS49 = 320714611882606068097993107885597259411071475421166597562261753023665 := by
  have callPrice : tbl (nm "alloc") = 2 := by decide +kernel
  (conv_lhs => rw [ptS49, cbd, callPrice, cbk_51]) <;> decide +kernel

theorem cbk_48 : cbd ptS48 = 320714611882606068097993107885597259411071475421166597562261753023665 := by
  (conv_lhs => rw [ptS48, cbd, cbk_50, cbk_49, Nat.zero_add]) <;> decide +kernel

theorem cbk_47 : cbd ptS47 = 320714611882606068097993107885597259411071475421166597562261753023666 := by
  have callPrice : tbl (nm "tx_has_access_list") = 0 := by decide +kernel
  (conv_lhs => rw [ptS47, cbd, callPrice, cbk_48]) <;> decide +kernel

theorem cbk_46 : cbd ptS46 = 320714611882606068097993107885597259411071475421166597562261753023666 := by
  (conv_lhs => rw [ptS46, cbd, cbk_47]) <;> decide +kernel

end InitECandidate.Solver.MemSafe.PtC
