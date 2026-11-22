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

theorem cbk_45 : cbd ptS45 = 202636156472511705436685853042972577157976549659441850984255207765971511004338 := by
  unfold ptS45
  try simp only [callD, cbd, cbk_46]
  try decide_cbv

theorem cbk_44 : cbd ptS44 = 202636156472511705436685853042972577157976549659441850984255207765971511004338 := by
  unfold ptS44
  try simp only [callD, cbd, cbk_45]
  try decide_cbv

theorem cbk_43 : cbd ptS43 = 0 := by
  unfold ptS43
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_42 : cbd ptS42 = 202636156472511705436685853042972577157976549659441850984255207765971511004338 := by
  unfold ptS42
  try simp only [callD, cbd, cbk_44]
  try decide_cbv

theorem cbk_41 : cbd ptS41 = 202636156472511705436685853042972577157976549659441850984255207765971511004338 := by
  unfold ptS41
  try simp only [callD, cbd, cbk_42, cbk_43]
  try decide_cbv

theorem cbk_40 : cbd ptS40 = 202636156472511705436685853042972577157976549659441850984255207765971511004338 := by
  unfold ptS40
  try simp only [callD, cbd, cbk_41]
  try decide_cbv

theorem cbk_39 : cbd ptS39 = 202636156472511705436685853042972577157976549659441850984255207765971511004338 := by
  unfold ptS39
  try simp only [callD, cbd, cbk_40]
  try decide_cbv

theorem cbk_38 : cbd ptS38 = 202636156472511705436685853042972577157976549659441850984328994742266349210811 := by
  unfold ptS38
  try simp only [callD, cbd, cbk_39]
  decide +kernel

theorem cbk_37 : cbd ptS37 = 202636156472511705436685853042972577157976549659441850984328994742266349210811 := by
  unfold ptS37
  try simp only [callD, cbd, cbk_38]
  try decide_cbv

theorem cbk_36 : cbd ptS36 = 202636156472511705442962954778359259078432104818629776057172221034168440614048 := by
  have callPrice1 : tbl (nm "set_account_balance") = 6277101735386681920455555159187925072843226291902091403236 := by decide +kernel
  unfold ptS36
  try simp only [callD, cbd, callPrice1, cbk_37]
  try decide_cbv

theorem cbk_35 : cbd ptS35 = 202636156472511705442962954778359259078432104818629776057172221034168440614049 := by
  have callPrice1 : tbl (nm "u256_sub") = 0 := by decide +kernel
  unfold ptS35
  try simp only [callD, cbd, callPrice1, cbk_36]
  try decide_cbv

theorem cbk_34 : cbd ptS34 = 202636156472511705442962954778359259078432104818629776057172221034168440614050 := by
  have callPrice1 : tbl (nm "u256_sub") = 0 := by decide +kernel
  unfold ptS34
  try simp only [callD, cbd, callPrice1, cbk_35]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
