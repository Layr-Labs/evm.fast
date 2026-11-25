import InitECandidate.Solver.MemSafe.PtC.Eq12

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

theorem cbk_69 : cbd ptS69 = 99292153265146967942716469463914314319657128290513630838519 := by
  (conv_lhs => rw [ptS69, cbd, cbk_71, cbk_70, Nat.zero_add]) <;> decide +kernel

theorem cbk_68 : cbd ptS68 = 0 := by
  have noCost : cbd .skip = 0 := by decide_cbv
  (conv_lhs => rw [ptS68, cbd, cbk_207, noCost]) <;> decide +kernel

theorem cbk_67 : cbd ptS67 = 99292153265146967942716469463914314319657128290513630838520 := by
  have callPrice : tbl (nm "tx_is_setcode") = 0 := by decide +kernel
  (conv_lhs => rw [ptS67, cbd, callPrice, cbk_69]) <;> decide +kernel

theorem cbk_66 : cbd ptS66 = 99292153265146967942716469463914314319657128290513630838520 := by
  (conv_lhs => rw [ptS66, cbd, cbk_68, cbk_67, Nat.zero_add]) <;> decide +kernel

theorem cbk_65 : cbd ptS65 = 99292153265146967942716469463914314319657128290513630838521 := by
  have callPrice : tbl (nm "tx_is_blob") = 0 := by decide +kernel
  (conv_lhs => rw [ptS65, cbd, callPrice, cbk_66]) <;> decide +kernel

theorem cbk_64 : cbd ptS64 = 99292153265146967942716469463914314319657128290513630838521 := by
  have leftCost : cbd (.store (.op .add [(lv (nm "te")), (cw 120)]) (lv (nm "nkeys"))) = 0 := by decide_cbv
  (conv_lhs => rw [ptS64, cbd, leftCost, cbk_65, Nat.zero_add]) <;> decide +kernel

theorem cbk_63 : cbd ptS63 = 99292153265146967942716469463914314319657128290513630838521 := by
  have leftCost : cbd (.store (.op .add [(lv (nm "te")), (cw 112)]) (lv (nm "al_keys"))) = 0 := by decide_cbv
  (conv_lhs => rw [ptS63, cbd, leftCost, cbk_64, Nat.zero_add]) <;> decide +kernel

theorem cbk_62 : cbd ptS62 = 99292153265146967942716469463914314319657128290513630838521 := by
  have leftCost : cbd (.store (.op .add [(lv (nm "te")), (cw 104)]) (.op .add [(lv (nm "nal")), (cw 1)])) = 0 := by decide_cbv
  (conv_lhs => rw [ptS62, cbd, leftCost, cbk_63, Nat.zero_add]) <;> decide +kernel

theorem cbk_61 : cbd ptS61 = 50216813883093446119873939292526669842901807022655013912588 := by
  unfold ptS61
  try simp only [callD, cbd, cbk_208]
  try decide_cbv

theorem cbk_60 : cbd ptS60 = 99292153265146967942716469463914314319657128290513630838521 := by
  have leftCost : cbd (.store (.op .add [(lv (nm "te")), (cw 96)]) (lv (nm "al_addrs"))) = 0 := by decide_cbv
  (conv_lhs => rw [ptS60, cbd, leftCost, cbk_62, Nat.zero_add]) <;> decide +kernel

theorem cbk_59 : cbd ptS59 = 149508967148240414062590408756440984162558935313168644751109 := by
  (conv_lhs => rw [ptS59, cbd, cbk_61, cbk_60]) <;> decide +kernel

theorem cbk_58 : cbd ptS58 = 149508967148240414062590408756440984162558935313168644751109 := by
  have leftCost : cbd (.assign .local (nm "i") (cw 0)) = 0 := by decide_cbv
  (conv_lhs => rw [ptS58, cbd, leftCost, cbk_59, Nat.zero_add]) <;> decide +kernel

end InitECandidate.Solver.MemSafe.PtC
