import InitECandidate.Solver.MemSafe.PtC.Eq15

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

theorem cbk_33 : cbd ptS33 = 50242183225629505193716629714342696327480720724543224970030 := by
  rw [ptS33, cbd, cbk_34]

theorem cbk_32 : cbd ptS32 = 50242183225629506347273854154372761815483639199800136899875 := by
  let callCost := cbd (callD (nm "increment_nonce") [(lv (nm "sender"))])
  let tailCost := cbd ptS33
  have splitCost : cbd ptS32 = callCost + tailCost := by
    conv_lhs => rw [ptS32, cbd]
  have callPrice : tbl (nm "increment_nonce") = 1153557224440030065488002918475256911929844 := by decide +kernel
  have callValue : callCost = 1153557224440030065488002918475256911929845 := by
    dsimp only [callCost]
    (conv_lhs => rw [callD, cbd, callPrice]) <;> decide +kernel
  have tailValue : tailCost = 50242183225629505193716629714342696327480720724543224970030 := cbk_33
  have total : 1153557224440030065488002918475256911929845 + 50242183225629505193716629714342696327480720724543224970030 = 50242183225629506347273854154372761815483639199800136899875 := by
    decide +kernel
  exact splitCost.trans (addCostValues callValue tailValue total)

theorem cbk_31 : cbd ptS31 = 50242183225629506347273854154372761815483639199800136899875 := by
  rw [ptS31, cbd, cbk_32]

theorem cbk_30 : cbd ptS30 = 50242183225629506347273854154372761815483639199800136899876 := by
  have callPrice : tbl (nm "min") = 0 := by decide +kernel
  (conv_lhs => rw [ptS30, cbd, callPrice, cbk_31]) <;> decide +kernel

theorem cbk_29 : cbd ptS29 = 50242183225629506347273854154372761815483639199800136899876 := by
  rw [ptS29, cbd, cbk_30]

theorem cbk_28 : cbd ptS28 = 50242183225629506347273854154372761815483639199800136899876 := by
  rw [ptS28, cbd, cbk_29]

theorem cbk_27 : cbd ptS27 = 50242183225629506347273854154372761815483639199800136899876 := by
  rw [ptS27, cbd, cbk_28]

theorem cbk_26 : cbd ptS26 = 50242183225629506347273854154372761815483639199800136899894 := by
  have callPrice : tbl (nm "fee_mul") = 17 := by decide +kernel
  (conv_lhs => rw [ptS26, cbd, callPrice, cbk_27]) <;> decide +kernel

theorem cbk_25 : cbd ptS25 = 187072209629057646236785706460502983180348263760404 := by
  have noCost : cbd .skip = 0 := by decide_cbv
  (conv_lhs => rw [ptS25, cbd, cbk_222, noCost]) <;> decide +kernel

theorem cbk_24 : cbd ptS24 = 50242183225629506347273854154372761815483639199800136899894 := by
  rw [ptS24, cbd, cbk_26]

theorem cbk_23 : cbd ptS23 = 50242183412701715976331500391158468275986622380148400660298 := by
  (conv_lhs => rw [ptS23, cbd, cbk_25, cbk_24]) <;> decide +kernel

theorem cbk_22 : cbd ptS22 = 50242183412701715976331500391158468275986622380148400660298 := by
  rw [ptS22, cbd, cbk_23]

end InitECandidate.Solver.MemSafe.PtC
