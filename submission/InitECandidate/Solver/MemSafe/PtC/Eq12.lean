import InitECandidate.Solver.MemSafe.PtC.Eq11

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

theorem cbk_81 : cbd ptS81 = 32054442753195894579158506332883488814624187061164189841366198623730 := by
  have leftCost : cbd (.store (.op .add [(lv (nm "m")), (cw 8)]) (lv (nm "te"))) = 0 := by decide_cbv
  (conv_lhs => rw [ptS81, cbd, leftCost, cbk_82, Nat.zero_add]) <;> decide +kernel

theorem cbk_80 : cbd ptS80 = 32054442753195894579158506332883488814624187061164189841366198623730 := by
  have leftCost : cbd (.store (.op .add [(lv (nm "m")), (cw 0)]) (gv (nm "be"))) = 0 := by decide_cbv
  (conv_lhs => rw [ptS80, cbd, leftCost, cbk_81, Nat.zero_add]) <;> decide +kernel

theorem cbk_79 : cbd ptS79 = 32054442753195894579158506332883488814624187061237976817661036830203 := by
  have callPrice : tbl (nm "msg_new") = 73786976294838206472 := by decide +kernel
  (conv_lhs => rw [ptS79, cbd, callPrice, cbk_80]) <;> decide +kernel

theorem cbk_78 : cbd ptS78 = 32054442753195894579158506332883488814624187061237976817661036830203 := by
  have leftCost : cbd .skip = 0 := by decide_cbv
  (conv_lhs => rw [ptS78, cbd, leftCost, cbk_79, Nat.zero_add]) <;> decide +kernel

theorem cbk_77 : cbd ptS77 = 32054442753195894579158506332883488814624187061237976817661036830203 := by
  have leftCost : cbd (.store (.op .add [(lv (nm "te")), (cw 192)]) (.rfield 1 (lv (nm "intrinsic")))) = 0 := by decide_cbv
  (conv_lhs => rw [ptS77, cbd, leftCost, cbk_78, Nat.zero_add]) <;> decide +kernel

theorem cbk_76 : cbd ptS76 = 32054442753195894579158506332883488814624187061237976817661036830203 := by
  have leftCost : cbd (.store (.op .add [(lv (nm "te")), (cw 184)]) (.rfield 0 (lv (nm "intrinsic")))) = 0 := by decide_cbv
  (conv_lhs => rw [ptS76, cbd, leftCost, cbk_77, Nat.zero_add]) <;> decide +kernel

theorem cbk_75 : cbd ptS75 = 32054442753195894579158506332883488814624187061237976817661036830203 := by
  have leftCost : cbd (.store (.op .add [(lv (nm "te")), (cw 176)]) (lv (nm "txh"))) = 0 := by decide_cbv
  (conv_lhs => rw [ptS75, cbd, leftCost, cbk_76, Nat.zero_add]) <;> decide +kernel

theorem cbk_74 : cbd ptS74 = 32054442753195894579158506333564053548466063988625894634367312043545 := by
  let callCost := cbd (callD (nm "keccak256") [(.rfield 0 (lv (nm "enc"))), (.rfield 1 (lv (nm "enc"))), (lv (nm "txh"))])
  let tailCost := cbd ptS75
  have splitCost : cbd ptS74 = callCost + tailCost := by
    conv_lhs => rw [ptS74, cbd]
  have callPrice : tbl (nm "keccak256") = 680564733841876927387917816706275213341 := by decide +kernel
  have callValue : callCost = 680564733841876927387917816706275213342 := by
    dsimp only [callCost]
    (conv_lhs => rw [callD, cbd, callPrice]) <;> decide +kernel
  have tailValue : tailCost = 32054442753195894579158506332883488814624187061237976817661036830203 := cbk_75
  have total : 680564733841876927387917816706275213342 + 32054442753195894579158506332883488814624187061237976817661036830203 = 32054442753195894579158506333564053548466063988625894634367312043545 := by
    decide +kernel
  exact splitCost.trans (addCostValues callValue tailValue total)

theorem cbk_73 : cbd ptS73 = 32054442753195894579158506333564053548466063988625894634367312043548 := by
  have callPrice : tbl (nm "alloc") = 2 := by decide +kernel
  (conv_lhs => rw [ptS73, cbd, callPrice, cbk_74]) <;> decide +kernel

theorem cbk_72 : cbd ptS72 = 32054442753195894579158506333564053548466063988625894634367312043548 := by
  have leftCost : cbd (.store (.op .add [(lv (nm "te")), (cw 168)]) (lv (nm "index"))) = 0 := by decide_cbv
  (conv_lhs => rw [ptS72, cbd, leftCost, cbk_73, Nat.zero_add]) <;> decide +kernel

theorem cbk_71 : cbd ptS71 = 0 := by
  have noCost : cbd .skip = 0 := by decide_cbv
  (conv_lhs => rw [ptS71, cbd, cbk_206, noCost]) <;> decide +kernel

theorem cbk_70 : cbd ptS70 = 32054442753195894579158506333564053548466063988625894634367312043548 := by
  have leftCost : cbd (.store (.op .add [(lv (nm "te")), (cw 160)]) (cw 1)) = 0 := by decide_cbv
  (conv_lhs => rw [ptS70, cbd, leftCost, cbk_72, Nat.zero_add]) <;> decide +kernel

end InitECandidate.Solver.MemSafe.PtC
