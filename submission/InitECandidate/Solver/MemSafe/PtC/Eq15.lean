import InitECandidate.Solver.MemSafe.PtC.Eq14

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

theorem cbk_45 : cbd ptS45 = 85974336137713992317709263923742197348801041683369670533818039246386 := by
  have leftCost : cbd (.store (.op .add [(lv (nm "te")), (cw 88)]) (lv (nm "reservoir"))) = 0 := by decide_cbv
  (conv_lhs => rw [ptS45, cbd, leftCost, cbk_46, Nat.zero_add]) <;> decide +kernel

theorem cbk_44 : cbd ptS44 = 85974336137713992317709263923742197348801041683369670533818039246386 := by
  have leftCost : cbd (.store (.op .add [(lv (nm "te")), (cw 80)]) (lv (nm "mgas"))) = 0 := by decide_cbv
  (conv_lhs => rw [ptS44, cbd, leftCost, cbk_45, Nat.zero_add]) <;> decide +kernel

theorem cbk_43 : cbd ptS43 = 0 := by
  unfold ptS43
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_42 : cbd ptS42 = 85974336137713992317709263923742197348801041683369670533818039246386 := by
  have leftCost : cbd (.store (.op .add [(lv (nm "te")), (cw 48)]) (lv (nm "price"))) = 0 := by decide_cbv
  (conv_lhs => rw [ptS42, cbd, leftCost, cbk_44, Nat.zero_add]) <;> decide +kernel

theorem cbk_41 : cbd ptS41 = 85974336137713992317709263923742197348801041683369670533818039246386 := by
  (conv_lhs => rw [ptS41, cbd, cbk_43, cbk_42, Nat.zero_add]) <;> decide +kernel

theorem cbk_40 : cbd ptS40 = 85974336137713992317709263923742197348801041683369670533818039246386 := by
  have leftCost : cbd (.store (.op .add [(lv (nm "te")), (cw 8)]) (.load .one (.op .add [(lv (nm "tx")), (cw 152)]))) = 0 := by decide_cbv
  (conv_lhs => rw [ptS40, cbd, leftCost, cbk_41, Nat.zero_add]) <;> decide +kernel

theorem cbk_39 : cbd ptS39 = 85974336137713992317709263923742197348801041683369670533818039246386 := by
  have leftCost : cbd (.store (.op .add [(lv (nm "te")), (cw 0)]) (lv (nm "sender"))) = 0 := by decide_cbv
  (conv_lhs => rw [ptS39, cbd, leftCost, cbk_40, Nat.zero_add]) <;> decide +kernel

theorem cbk_38 : cbd ptS38 = 85974336137713992317709263923742197348801041683443457510112877452859 := by
  have callPrice : tbl (nm "te_new") = 73786976294838206472 := by decide +kernel
  (conv_lhs => rw [ptS38, cbd, callPrice, cbk_39]) <;> decide +kernel

theorem cbk_37 : cbd ptS37 = 85974336137713992317709263923742197348801041683443457510112877452859 := by
  have leftCost : cbd .skip = 0 := by decide_cbv
  (conv_lhs => rw [ptS37, cbd, leftCost, cbk_38, Nat.zero_add]) <;> decide +kernel

theorem cbk_36 : cbd ptS36 = 85974336143991094053095945844197752507988966756286683802014968856096 := by
  let callCost := cbd (callD (nm "set_account_balance") [(lv (nm "sender")), (lv (nm "bal"))])
  let tailCost := cbd ptS37
  have splitCost : cbd ptS36 = callCost + tailCost := by
    conv_lhs => rw [ptS36, cbd]
  have callPrice : tbl (nm "set_account_balance") = 6277101735386681920455555159187925072843226291902091403236 := by decide +kernel
  have callValue : callCost = 6277101735386681920455555159187925072843226291902091403237 := by
    dsimp only [callCost]
    (conv_lhs => rw [callD, cbd, callPrice]) <;> decide +kernel
  have tailValue : tailCost = 85974336137713992317709263923742197348801041683443457510112877452859 := cbk_37
  have total : 6277101735386681920455555159187925072843226291902091403237 + 85974336137713992317709263923742197348801041683443457510112877452859 = 85974336143991094053095945844197752507988966756286683802014968856096 := by
    decide +kernel
  exact splitCost.trans (addCostValues callValue tailValue total)

theorem cbk_35 : cbd ptS35 = 85974336143991094053095945844197752507988966756286683802014968856097 := by
  let callCost := cbd (.call (some (some (.local, (nm "bal")), none)) (nm "u256_sub") [(lv (nm "bal")), (lv (nm "blob_gas_fee"))])
  let tailCost := cbd ptS36
  have splitCost : cbd ptS35 = callCost + tailCost := by
    conv_lhs => rw [ptS35, cbd]
  have callPrice : tbl (nm "u256_sub") = 0 := by decide +kernel
  have callValue : callCost = 1 := by
    dsimp only [callCost]
    (conv_lhs => rw [cbd, callPrice]) <;> decide +kernel
  have tailValue : tailCost = 85974336143991094053095945844197752507988966756286683802014968856096 := cbk_36
  have total : 1 + 85974336143991094053095945844197752507988966756286683802014968856096 = 85974336143991094053095945844197752507988966756286683802014968856097 := by
    decide +kernel
  exact splitCost.trans (addCostValues callValue tailValue total)

theorem cbk_34 : cbd ptS34 = 85974336143991094053095945844197752507988966756286683802014968856098 := by
  let callCost := cbd (.call (some (some (.local, (nm "bal")), none)) (nm "u256_sub") [(lv (nm "bal")), (lv (nm "effective_gas_fee"))])
  let tailCost := cbd ptS35
  have splitCost : cbd ptS34 = callCost + tailCost := by
    conv_lhs => rw [ptS34, cbd]
  have callPrice : tbl (nm "u256_sub") = 0 := by decide +kernel
  have callValue : callCost = 1 := by
    dsimp only [callCost]
    (conv_lhs => rw [cbd, callPrice]) <;> decide +kernel
  have tailValue : tailCost = 85974336143991094053095945844197752507988966756286683802014968856097 := cbk_35
  have total : 1 + 85974336143991094053095945844197752507988966756286683802014968856097 = 85974336143991094053095945844197752507988966756286683802014968856098 := by
    decide +kernel
  exact splitCost.trans (addCostValues callValue tailValue total)

end InitECandidate.Solver.MemSafe.PtC
