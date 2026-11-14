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

theorem cbk_69 : cbd ptS69 = 16204032641583379049778956912801278692489146874697652964735965842847498814409913634372515 := by
  unfold ptS69
  try simp only [callD, cbd, cbk_70, cbk_71]
  try decide_cbv

theorem cbk_68 : cbd ptS68 = 0 := by
  unfold ptS68
  try simp only [callD, cbd, cbk_207]
  try decide_cbv

theorem cbk_67 : cbd ptS67 = 16204032641583379049778956912801278692489146874697652964735965842847498814409913634372516 := by
  unfold ptS67
  try simp only [callD, cbd, cbk_69]
  try decide_cbv

theorem cbk_66 : cbd ptS66 = 16204032641583379049778956912801278692489146874697652964735965842847498814409913634372516 := by
  unfold ptS66
  try simp only [callD, cbd, cbk_67, cbk_68]
  try decide_cbv

theorem cbk_65 : cbd ptS65 = 16204032641583379049778956912801278692489146874697652964735965842847498814409913634372517 := by
  unfold ptS65
  try simp only [callD, cbd, cbk_66]
  try decide_cbv

theorem cbk_64 : cbd ptS64 = 16204032641583379049778956912801278692489146874697652964735965842847498814409913634372517 := by
  unfold ptS64
  try simp only [callD, cbd, cbk_65]
  try decide_cbv

theorem cbk_63 : cbd ptS63 = 16204032641583379049778956912801278692489146874697652964735965842847498814409913634372517 := by
  unfold ptS63
  try simp only [callD, cbd, cbk_64]
  try decide_cbv

theorem cbk_62 : cbd ptS62 = 16204032641583379049778956912801278692489146874697652964735965842847498814409913634372517 := by
  unfold ptS62
  try simp only [callD, cbd, cbk_63]
  try decide_cbv

theorem cbk_61 : cbd ptS61 = 50216813883093446119873939292526669842901807022655013912588 := by
  unfold ptS61
  try simp only [callD, cbd, cbk_208]
  try decide_cbv

theorem cbk_60 : cbd ptS60 = 16204032641583379049778956912801278692489146874697652964735965842847498814409913634372517 := by
  unfold ptS60
  try simp only [callD, cbd, cbk_62]
  try decide_cbv

theorem cbk_59 : cbd ptS59 = 16204032641583379049778956912851495506372240320817526904028492512690400621432568648285105 := by
  unfold ptS59
  try simp only [callD, cbd, cbk_60, cbk_61]
  try decide_cbv

theorem cbk_58 : cbd ptS58 = 16204032641583379049778956912851495506372240320817526904028492512690400621432568648285105 := by
  unfold ptS58
  try simp only [callD, cbd, cbk_59]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
