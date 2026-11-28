import InitECandidate.Solver.MemSafe.PtC.Eq16

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

theorem cbk_21 : cbd ptS21 = 50242183412701715976331500391158468275986622380148400660298 := by
  have leftCost : cbd .skip = 0 := by decide_cbv
  (conv_lhs => rw [ptS21, cbd, leftCost, cbk_22, Nat.zero_add]) <;> decide +kernel

theorem cbk_20 : cbd ptS20 = 50242183412701717110152347543435849874464841777848660639385 := by
  have callPrice : tbl (nm "get_account") = 1133820847152277381598478219397700259979086 := by decide +kernel
  (conv_lhs => rw [ptS20, cbd, callPrice, cbk_21]) <;> decide +kernel

theorem cbk_19 : cbd ptS19 = 50242183412701717110152347543435849874464841777848660639386 := by
  have callPrice : tbl (nm "calculate_total_blob_gas") = 0 := by decide +kernel
  (conv_lhs => rw [ptS19, cbd, callPrice, cbk_20]) <;> decide +kernel

theorem cbk_18 : cbd ptS18 = 50242183412701717110152347543435849874464841777848660639386 := by
  have leftCost : cbd .skip = 0 := by decide_cbv
  (conv_lhs => rw [ptS18, cbd, leftCost, cbk_19, Nat.zero_add]) <;> decide +kernel

theorem cbk_17 : cbd ptS17 = 50242183599773927874391970400182691789107323703817001131954 := by
  have callPrice : tbl (nm "check_transaction") = 187072210764239622856746841914642481925968340492567 := by decide +kernel
  (conv_lhs => rw [ptS17, cbd, callPrice, cbk_18]) <;> decide +kernel

theorem cbk_16 : cbd ptS16 = 50242183599773927874391970400182691789107323703817001131954 := by
  (conv_lhs => rw [ptS16, cbd, cbk_17]) <;> decide +kernel

theorem cbk_15 : cbd ptS15 = 50242183599773927874391970400182691789107323703817001131954 := by
  have leftCost : cbd .skip = 0 := by decide_cbv
  (conv_lhs => rw [ptS15, cbd, leftCost, cbk_16, Nat.zero_add]) <;> decide +kernel

theorem cbk_14 : cbd ptS14 = 50242183599773927874391970400182691789218004168259258441662 := by
  have callPrice : tbl (nm "validate_transaction") = 110680464442257309707 := by decide +kernel
  (conv_lhs => rw [ptS14, cbd, callPrice, cbk_15]) <;> decide +kernel

theorem cbk_13 : cbd ptS13 = 420912471786775438462236250840612005909053556971859 := by
  unfold ptS13
  try simp only [callD, cbd]
  decide +kernel

theorem cbk_12 : cbd ptS12 = 50242183599773927874391970400182691789218004168259258441662 := by
  have leftCost : cbd .skip = 0 := by decide_cbv
  (conv_lhs => rw [ptS12, cbd, leftCost, cbk_14, Nat.zero_add]) <;> decide +kernel

theorem cbk_11 : cbd ptS11 = 50242184020686399661167408862418942629830010077312815413521 := by
  (conv_lhs => rw [ptS11, cbd, cbk_13, cbk_12]) <;> decide +kernel

theorem cbk_10 : cbd ptS10 = 0 := by
  have noCost : cbd .skip = 0 := by decide_cbv
  (conv_lhs => rw [ptS10, cbd, cbk_225, noCost]) <;> decide +kernel

end InitECandidate.Solver.MemSafe.PtC
