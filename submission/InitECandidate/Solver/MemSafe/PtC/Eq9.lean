import InitECandidate.Solver.MemSafe.PtC.Eq8

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

theorem cbk_117 : cbd ptS117 = 13159194286304934359543338405320697793310040127545571408371454498 := by
  rw [ptS117, cbd, cbk_118]

theorem cbk_116 : cbd ptS116 = 13159194286304934359543338405320697793310040127545571408371454499 := by
  have callPrice : tbl (nm "min") = 0 := by decide +kernel
  (conv_lhs => rw [ptS116, cbd, callPrice, cbk_117]) <;> decide +kernel

theorem cbk_115 : cbd ptS115 = 13159194286304934359543338405320697793310040145992315482081006120 := by
  have callPrice : tbl (nm "udiv_small5") = 18446744073709551620 := by decide +kernel
  (conv_lhs => rw [ptS115, cbd, callPrice, cbk_116]) <;> decide +kernel

theorem cbk_114 : cbd ptS114 = 13159194286304934359543338405320697793310040145992315482081006120 := by
  rw [ptS114, cbd, cbk_115]

theorem cbk_113 : cbd ptS113 = 25709375278203498125721303132578890477797873875460418871341763846067 := by
  (conv_lhs => rw [ptS113, cbd, tbl_pmc, bPmc_eq, cbk_114]) <;> decide +kernel

theorem cbk_112 : cbd ptS112 = 25709375278203498125721303132578890477797873875460418871341763846067 := by
  have leftCost : cbd (.store (.op .add [(lv (nm "m")), (cw 160)]) (lv (nm "ak"))) = 0 := by decide_cbv
  (conv_lhs => rw [ptS112, cbd, leftCost, cbk_113, Nat.zero_add]) <;> decide +kernel

theorem cbk_111 : cbd ptS111 = 25709375278203498125721303132578890477797873875460418871341763846067 := by
  have leftCost : cbd (.store (.op .add [(lv (nm "m")), (cw 152)]) (lv (nm "aa"))) = 0 := by decide_cbv
  (conv_lhs => rw [ptS111, cbd, leftCost, cbk_112, Nat.zero_add]) <;> decide +kernel

theorem cbk_110 : cbd ptS110 = 25709375278203498125721303132578890477797873875460418871341763846067 := by
  have leftCost : cbd .skip = 0 := by decide_cbv
  (conv_lhs => rw [ptS110, cbd, leftCost, cbk_111, Nat.zero_add]) <;> decide +kernel

/-- An unconditional call price depends on the callee, so the proved
    precompile insertion price also applies to the transaction's insertion. -/
theorem cbd_htabSet (args : List (ExpHOL 64)) :
    cbd (callD (nm "htab_set") args) = 340282366920938464441052043338374447207 := by
  have samePrice : cbd (callD (nm "htab_set") args) = cbd ptS205 := by
    simp only [ptS205, callD, cbd]
  exact samePrice.trans cbk_205

theorem addCostValues {callCost tailCost callValue tailValue total : Nat}
    (hCall : callCost = callValue) (hTail : tailCost = tailValue)
    (hTotal : callValue + tailValue = total) : callCost + tailCost = total := by
  rw [hCall, hTail, hTotal]

theorem cbk_109 : cbd ptS109 = 25709375278203498125721303132919172844718812339901470914680138293274 := by
  let args : List (ExpHOL 64) := [(lv (nm "aa")), (.load .one (.op .add [(lv (nm "m")), (cw 32)])), (cw 1)]
  let callCost := cbd (callD (nm "htab_set") args)
  let tailCost := cbd ptS110
  have splitCost : cbd ptS109 = callCost + tailCost := by
    conv_lhs => rw [ptS109, cbd]
  have callValue : callCost = 340282366920938464441052043338374447207 := cbd_htabSet args
  have tailValue : tailCost = 25709375278203498125721303132578890477797873875460418871341763846067 := cbk_110
  have total : 340282366920938464441052043338374447207 + 25709375278203498125721303132578890477797873875460418871341763846067 = 25709375278203498125721303132919172844718812339901470914680138293274 := by
    decide +kernel
  exact splitCost.trans (addCostValues callValue tailValue total)

theorem cbk_108 : cbd ptS108 = 25709375278203498125721303132919172844718812339901470914680138293274 := by
  have leftCost : cbd (.store (.op .add [(lv (nm "m")), (cw 136)]) (cw 1)) = 0 := by decide_cbv
  (conv_lhs => rw [ptS108, cbd, leftCost, cbk_109, Nat.zero_add]) <;> decide +kernel

theorem cbk_107 : cbd ptS107 = 1135522258986882073916698982893440076914320 := by
  (conv_lhs => rw [ptS107, cbd, cbk_187, cbk_186]) <;> decide +kernel

theorem cbk_106 : cbd ptS106 = 25709375278203498125721303132919172844718812339901470914680138293274 := by
  have leftCost : cbd .skip = 0 := by decide_cbv
  (conv_lhs => rw [ptS106, cbd, leftCost, cbk_108, Nat.zero_add]) <;> decide +kernel

end InitECandidate.Solver.MemSafe.PtC
