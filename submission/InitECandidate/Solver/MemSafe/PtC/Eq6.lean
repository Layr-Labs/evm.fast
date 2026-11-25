import InitECandidate.Solver.MemSafe.PtC.Eq5

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

theorem cbk_153 : cbd ptS153 = 25306724824118550282010220584975622558097151253864111261 := by
  rw [ptS153, cbd, cbk_154]

theorem cbk_152 : cbd ptS152 = 0 := by
  unfold ptS152
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_151 : cbd ptS151 = 25306724824118550282010220584975622558097151253864111261 := by
  rw [ptS151, cbd, cbk_153]

theorem cbk_150 : cbd ptS150 = 0 := by
  unfold ptS150
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_149 : cbd ptS149 = 25306724824118550282010220584975622558097151253864111261 := by
  rw [ptS149, cbd, cbk_152, cbk_151, Nat.zero_add]

theorem cbk_148 : cbd ptS148 = 25306724824118550282010220584975622558097151253864111261 := by
  rw [ptS148, cbd, cbk_150, cbk_149, Nat.zero_add]

theorem cbk_147 : cbd ptS147 = 0 := by
  unfold ptS147
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_146 : cbd ptS146 = 67504150380230936784570876878960970498152069792132657175840 := by
  have receiptPrice : tbl (nm "encode_receipt") = SeventhReceipt.price := by decide +kernel
  conv_lhs => rw [ptS146, cbd, receiptPrice, cbk_148]
  decide +kernel

theorem cbk_145 : cbd ptS145 = 67504150380230936784570876878960970498152069792132657175840 := by
  rw [ptS145, cbd, cbk_147, cbk_146, Nat.zero_add]

theorem cbk_144 : cbd ptS144 = 7 := by
  have callPrice1 : tbl (nm "lst_new") = 6 := by decide +kernel
  unfold ptS144
  try simp only [callD, cbd, callPrice1]
  try decide_cbv

theorem cbk_143 : cbd ptS143 = 67504150380230936784570876878960970498152069792132657175840 := by
  rw [ptS143, cbd, cbk_145]

theorem cbk_142 : cbd ptS142 = 67504150380230936784570876878960970498152069792132657175847 := by
  conv_lhs => rw [ptS142, cbd, cbk_144, cbk_143]

end InitECandidate.Solver.MemSafe.PtC

#print axioms InitECandidate.Solver.MemSafe.PtC.cbk_146
#print axioms InitECandidate.Solver.MemSafe.PtC.cbk_142
