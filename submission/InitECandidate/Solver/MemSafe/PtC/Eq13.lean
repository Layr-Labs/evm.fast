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

theorem cbk_69 : cbd ptS69 = 216943550098486851714498247624610218572191304982397860206038488102944 := by
  unfold ptS69
  try simp only [callD, cbd, cbk_70, cbk_71]
  try decide_cbv

theorem cbk_68 : cbd ptS68 = 0 := by
  unfold ptS68
  try simp only [callD, cbd, cbk_207]
  try decide_cbv

theorem cbk_67 : cbd ptS67 = 216943550098486851714498247624610218572191304982397860206038488102945 := by
  unfold ptS67
  try simp only [callD, cbd, cbk_69]
  try decide_cbv

theorem cbk_66 : cbd ptS66 = 216943550098486851714498247624610218572191304982397860206038488102945 := by
  unfold ptS66
  try simp only [callD, cbd, cbk_67, cbk_68]
  try decide_cbv

theorem cbk_65 : cbd ptS65 = 216943550098486851714498247624610218572191304982397860206038488102946 := by
  unfold ptS65
  try simp only [callD, cbd, cbk_66]
  try decide_cbv

theorem cbk_64 : cbd ptS64 = 216943550098486851714498247624610218572191304982397860206038488102946 := by
  unfold ptS64
  try simp only [callD, cbd, cbk_65]
  try decide_cbv

theorem cbk_63 : cbd ptS63 = 216943550098486851714498247624610218572191304982397860206038488102946 := by
  unfold ptS63
  try simp only [callD, cbd, cbk_64]
  try decide_cbv

theorem cbk_62 : cbd ptS62 = 216943550098486851714498247624610218572191304982397860206038488102946 := by
  unfold ptS62
  try simp only [callD, cbd, cbk_63]
  try decide_cbv

theorem cbk_61 : cbd ptS61 = 93536104814698964294247418858206502382740944453708 := by
  unfold ptS61
  try simp only [callD, cbd, cbk_208]
  try decide_cbv

theorem cbk_60 : cbd ptS60 = 216943550098486851714498247624610218572191304982397860206038488102946 := by
  unfold ptS60
  try simp only [callD, cbd, cbk_62]
  try decide_cbv

theorem cbk_59 : cbd ptS59 = 216943550098486851808034352439309182866438723840604362588779432556654 := by
  unfold ptS59
  try simp only [callD, cbd, cbk_60, cbk_61]
  try decide_cbv

theorem cbk_58 : cbd ptS58 = 216943550098486851808034352439309182866438723840604362588779432556654 := by
  unfold ptS58
  try simp only [callD, cbd, cbk_59]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
