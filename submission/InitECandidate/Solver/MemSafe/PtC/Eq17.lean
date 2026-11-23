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

theorem cbk_21 : cbd ptS21 = 32054442847352420609958720124757368383797885354120222332797921189530 := by
  have leftCost : cbd .skip = 0 := by decide_cbv
  (conv_lhs => rw [ptS21, cbd, leftCost, cbk_22, Nat.zero_add]) <;> decide +kernel

theorem cbk_20 : cbd ptS20 = 32054442847352420609958721259599062636838082343154586248426079616225 := by
  have callPrice : tbl (nm "get_account") = 1134841694253040196989034363915628158426694 := by decide +kernel
  (conv_lhs => rw [ptS20, cbd, callPrice, cbk_21]) <;> decide +kernel

theorem cbk_19 : cbd ptS19 = 32054442847352420609958721259599062636838082343154586248426079616226 := by
  have callPrice : tbl (nm "calculate_total_blob_gas") = 0 := by decide +kernel
  (conv_lhs => rw [ptS19, cbd, callPrice, cbk_20]) <;> decide +kernel

theorem cbk_18 : cbd ptS18 = 32054442847352420609958721259599062636838082343154586248426079616226 := by
  have leftCost : cbd .skip = 0 := by decide_cbv
  (conv_lhs => rw [ptS18, cbd, leftCost, cbk_19, Nat.zero_add]) <;> decide +kernel

theorem cbk_17 : cbd ptS17 = 32054442878737929286892126225189304481228519174107919365649021017190 := by
  have callPrice : tbl (nm "check_transaction") = 31385508676933404965590241844390436830953333117222941400963 := by decide +kernel
  (conv_lhs => rw [ptS17, cbd, callPrice, cbk_18]) <;> decide +kernel

theorem cbk_16 : cbd ptS16 = 32054442878737929286892126225189304481228519174107919365649021017190 := by
  (conv_lhs => rw [ptS16, cbd, cbk_17]) <;> decide +kernel

theorem cbk_15 : cbd ptS15 = 32054442878737929286892126225189304481228519174107919365649021017190 := by
  have leftCost : cbd .skip = 0 := by decide_cbv
  (conv_lhs => rw [ptS15, cbd, leftCost, cbk_16, Nat.zero_add]) <;> decide +kernel

theorem cbk_14 : cbd ptS14 = 32054442878737929286892126225189304481228519174218599830091278326898 := by
  have callPrice : tbl (nm "validate_transaction") = 110680464442257309707 := by decide +kernel
  (conv_lhs => rw [ptS14, cbd, callPrice, cbk_15]) <;> decide +kernel

theorem cbk_13 : cbd ptS13 = 225975662473920507694771627315778422922075979890255731413459 := by
  unfold ptS13
  try simp only [callD, cbd]
  decide +kernel

theorem cbk_12 : cbd ptS12 = 32054442878737929286892126225189304481228519174218599830091278326898 := by
  have leftCost : cbd .skip = 0 := by decide_cbv
  (conv_lhs => rw [ptS12, cbd, leftCost, cbk_14, Nat.zero_add]) <;> decide +kernel

theorem cbk_11 : cbd ptS11 = 32054443104713591760812633919960931797006942096294579720347009740357 := by
  (conv_lhs => rw [ptS11, cbd, cbk_13, cbk_12]) <;> decide +kernel

theorem cbk_10 : cbd ptS10 = 0 := by
  have noCost : cbd .skip = 0 := by decide_cbv
  (conv_lhs => rw [ptS10, cbd, cbk_225, noCost]) <;> decide +kernel

end InitECandidate.Solver.MemSafe.PtC
