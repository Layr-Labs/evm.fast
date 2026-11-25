import InitECandidate.Solver.MemSafe.PtC.Eq10

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

theorem cbk_93 : cbd ptS93 = 25709375297034803331881346615074543542415916594662623004175967813618 := by
  (conv_lhs => rw [ptS93, cbd, cbk_95, cbk_94]) <;> decide +kernel

theorem cbk_92 : cbd ptS92 = 25709375297034803331881346615074543542415916594662623004175967813618 := by
  have leftCost : cbd (.assign .local (nm "i") (cw 0)) = 0 := by decide_cbv
  (conv_lhs => rw [ptS92, cbd, leftCost, cbk_93, Nat.zero_add]) <;> decide +kernel

theorem cbk_91 : cbd ptS91 = 25709375297034803331881346615074543542415916594662623004175967813618 := by
  have leftCost : cbd .skip = 0 := by decide_cbv
  (conv_lhs => rw [ptS91, cbd, leftCost, cbk_92, Nat.zero_add]) <;> decide +kernel

theorem cbk_90 : cbd ptS90 = 25709375297034803331881346615414825909336855059103675047514342260825 := by
  let args : List (ExpHOL 64) := [(lv (nm "aa")), (lv (nm "sender")), (cw 1)]
  let callCost := cbd (callD (nm "htab_set") args)
  let tailCost := cbd ptS91
  have splitCost : cbd ptS90 = callCost + tailCost := by
    conv_lhs => rw [ptS90, cbd]
  have callValue : callCost = 340282366920938464441052043338374447207 := cbd_htabSet args
  have tailValue : tailCost = 25709375297034803331881346615074543542415916594662623004175967813618 := cbk_91
  have total : 340282366920938464441052043338374447207 + 25709375297034803331881346615074543542415916594662623004175967813618 = 25709375297034803331881346615414825909336855059103675047514342260825 := by
    decide +kernel
  exact splitCost.trans (addCostValues callValue tailValue total)

theorem cbk_89 : cbd ptS89 = 25709375297034803331881346615414825909336855059103675047514342260825 := by
  have leftCost : cbd .skip = 0 := by decide_cbv
  (conv_lhs => rw [ptS89, cbd, leftCost, cbk_90, Nat.zero_add]) <;> decide +kernel

theorem cbk_88 : cbd ptS88 = 0 := by
  unfold ptS88
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_87 : cbd ptS87 = 25709375297034803331881346615414825909336855059103675047514342260838 := by
  have callPrice : tbl (nm "htab_new") = 12 := by decide +kernel
  (conv_lhs => rw [ptS87, cbd, callPrice, cbk_89]) <;> decide +kernel

theorem cbk_86 : cbd ptS86 = 25709375297034803331881346615414825909336855059103675047514342260838 := by
  (conv_lhs => rw [ptS86, cbd, cbk_88, cbk_87, Nat.zero_add]) <;> decide +kernel

theorem cbk_85 : cbd ptS85 = 25709375297034803331881346615414825909336855059103675047514342260838 := by
  have leftCost : cbd (.store (.op .add [(lv (nm "m")), (cw 48)]) (lv (nm "reservoir"))) = 0 := by decide_cbv
  (conv_lhs => rw [ptS85, cbd, leftCost, cbk_86, Nat.zero_add]) <;> decide +kernel

theorem cbk_84 : cbd ptS84 = 25709375297034803331881346615414825909336855059103675047514342260838 := by
  have leftCost : cbd (.store (.op .add [(lv (nm "m")), (cw 40)]) (lv (nm "mgas"))) = 0 := by decide_cbv
  (conv_lhs => rw [ptS84, cbd, leftCost, cbk_85, Nat.zero_add]) <;> decide +kernel

theorem cbk_83 : cbd ptS83 = 25709375297034803331881346615414825909336855059103675047514342260838 := by
  have leftCost : cbd (.store (.op .add [(lv (nm "m")), (cw 24)]) (.load .one (.op .add [(lv (nm "tx")), (cw 152)]))) = 0 := by decide_cbv
  (conv_lhs => rw [ptS83, cbd, leftCost, cbk_84, Nat.zero_add]) <;> decide +kernel

theorem cbk_82 : cbd ptS82 = 25709375297034803331881346615414825909336855059103675047514342260838 := by
  have leftCost : cbd (.store (.op .add [(lv (nm "m")), (cw 16)]) (lv (nm "sender"))) = 0 := by decide_cbv
  (conv_lhs => rw [ptS82, cbd, leftCost, cbk_83, Nat.zero_add]) <;> decide +kernel

end InitECandidate.Solver.MemSafe.PtC
