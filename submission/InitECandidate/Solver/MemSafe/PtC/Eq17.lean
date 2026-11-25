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

theorem cbk_21 : cbd ptS21 = 25709375391191329362681560407288705478510553352059707538946064826638 := by
  have leftCost : cbd .skip = 0 := by decide_cbv
  (conv_lhs => rw [ptS21, cbd, leftCost, cbk_22, Nat.zero_add]) <;> decide +kernel

theorem cbk_20 : cbd ptS20 = 25709375391191329362681561542130399731550750341094071454574223253333 := by
  have callPrice : tbl (nm "get_account") = 1134841694253040196989034363915628158426694 := by decide +kernel
  (conv_lhs => rw [ptS20, cbd, callPrice, cbk_21]) <;> decide +kernel

theorem cbk_19 : cbd ptS19 = 25709375391191329362681561542130399731550750341094071454574223253334 := by
  have callPrice : tbl (nm "calculate_total_blob_gas") = 0 := by decide +kernel
  (conv_lhs => rw [ptS19, cbd, callPrice, cbk_20]) <;> decide +kernel

theorem cbk_18 : cbd ptS18 = 25709375391191329362681561542130399731550750341094071454574223253334 := by
  have leftCost : cbd .skip = 0 := by decide_cbv
  (conv_lhs => rw [ptS18, cbd, leftCost, cbk_19, Nat.zero_add]) <;> decide +kernel

theorem cbk_17 : cbd ptS17 = 25709375422576838039614966507720641575941187172047404571797164654298 := by
  have callPrice : tbl (nm "check_transaction") = 31385508676933404965590241844390436830953333117222941400963 := by decide +kernel
  (conv_lhs => rw [ptS17, cbd, callPrice, cbk_18]) <;> decide +kernel

theorem cbk_16 : cbd ptS16 = 25709375422576838039614966507720641575941187172047404571797164654298 := by
  (conv_lhs => rw [ptS16, cbd, cbk_17]) <;> decide +kernel

theorem cbk_15 : cbd ptS15 = 25709375422576838039614966507720641575941187172047404571797164654298 := by
  have leftCost : cbd .skip = 0 := by decide_cbv
  (conv_lhs => rw [ptS15, cbd, leftCost, cbk_16, Nat.zero_add]) <;> decide +kernel

theorem cbk_14 : cbd ptS14 = 25709375422576838039614966507720641575941187172158085036239421964006 := by
  have callPrice : tbl (nm "validate_transaction") = 110680464442257309707 := by decide +kernel
  (conv_lhs => rw [ptS14, cbd, callPrice, cbk_15]) <;> decide +kernel

theorem cbk_13 : cbd ptS13 = 225975662473920507694771627315778422922075979890255731413459 := by
  unfold ptS13
  try simp only [callD, cbd]
  decide +kernel

theorem cbk_12 : cbd ptS12 = 25709375422576838039614966507720641575941187172158085036239421964006 := by
  have leftCost : cbd .skip = 0 := by decide_cbv
  (conv_lhs => rw [ptS12, cbd, leftCost, cbk_14, Nat.zero_add]) <;> decide +kernel

theorem cbk_11 : cbd ptS11 = 25709375648552500513535474202492268891719610094234064926495153377465 := by
  (conv_lhs => rw [ptS11, cbd, cbk_13, cbk_12]) <;> decide +kernel

theorem cbk_10 : cbd ptS10 = 0 := by
  have noCost : cbd .skip = 0 := by decide_cbv
  (conv_lhs => rw [ptS10, cbd, cbk_225, noCost]) <;> decide +kernel

end InitECandidate.Solver.MemSafe.PtC
