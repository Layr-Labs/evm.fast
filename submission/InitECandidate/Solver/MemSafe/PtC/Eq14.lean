import InitECandidate.Solver.MemSafe.PtC.Eq13

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

theorem cbk_57 : cbd ptS57 = 16204032641583379049778956912851495506372240320817526904028492512690400621432568648285105 := by
  unfold ptS57
  try simp only [callD, cbd, cbk_58]
  try decide_cbv

theorem cbk_56 : cbd ptS56 = 18446744073709551617 := by
  unfold ptS56
  try simp only [callD, cbd, cbk_218]
  try decide_cbv

theorem cbk_55 : cbd ptS55 = 16204032641583379049778956912851495506372240320817526904028492512690400621432568648285108 := by
  unfold ptS55
  try simp only [callD, cbd, cbk_57]
  try decide_cbv

theorem cbk_54 : cbd ptS54 = 16204032641583379049778956912851495506372240320817526904028492512690419068176642357836725 := by
  unfold ptS54
  try simp only [callD, cbd, cbk_55, cbk_56]
  try decide_cbv

theorem cbk_53 : cbd ptS53 = 16204032641583379049778956912851495506372240320817526904028492512690419068176642357836725 := by
  unfold ptS53
  try simp only [callD, cbd, cbk_54]
  try decide_cbv

theorem cbk_52 : cbd ptS52 = 16204032641583379049778956912851495506372240320817526904028492512690419068176642357836725 := by
  unfold ptS52
  try simp only [callD, cbd, cbk_53]
  try decide_cbv

theorem cbk_51 : cbd ptS51 = 16204032641583379049778956912851495506372240320817526904028492512690419068176642357836725 := by
  unfold ptS51
  try simp only [callD, cbd, cbk_52]
  try decide_cbv

theorem cbk_50 : cbd ptS50 = 0 := by
  unfold ptS50
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_49 : cbd ptS49 = 16204032641583379049778956912851495506372240320817526904028492512690419068176642357836728 := by
  unfold ptS49
  try simp only [callD, cbd, cbk_51]
  try decide_cbv

theorem cbk_48 : cbd ptS48 = 16204032641583379049778956912851495506372240320817526904028492512690419068176642357836728 := by
  unfold ptS48
  try simp only [callD, cbd, cbk_49, cbk_50]
  try decide_cbv

theorem cbk_47 : cbd ptS47 = 16204032641583379049778956912851495506372240320817526904028492512690419068176642357836729 := by
  unfold ptS47
  try simp only [callD, cbd, cbk_48]
  try decide_cbv

theorem cbk_46 : cbd ptS46 = 16204032641583379049778956912851495506372240320817526904028492512690419068176642357836729 := by
  unfold ptS46
  try simp only [callD, cbd, cbk_47]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
