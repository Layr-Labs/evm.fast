import InitECandidate.Solver.MemSafe.PtC.Eq9

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

theorem cbk_105 : cbd ptS105 = 3301755532008756452654234587697114526951282370550622040973008 := by
  unfold ptS105
  try simp only [callD, cbd, cbk_106, cbk_107]
  try decide_cbv

theorem cbk_104 : cbd ptS104 = 3301755532008756452654234587697114526951282370550622040973011 := by
  unfold ptS104
  try simp only [callD, cbd, cbk_105]
  try decide_cbv

theorem cbk_103 : cbd ptS103 = 38029518017509100121566801297986 := by
  unfold ptS103
  try simp only [callD, cbd, cbk_200]
  try decide_cbv

theorem cbk_102 : cbd ptS102 = 3301755532008756452654234587697114526951282370550622040973011 := by
  unfold ptS102
  try simp only [callD, cbd, cbk_104]
  try decide_cbv

theorem cbk_101 : cbd ptS101 = 3301755532008756452654234587735144044968791470672188842270997 := by
  unfold ptS101
  try simp only [callD, cbd, cbk_102, cbk_103]
  try decide_cbv

theorem cbk_100 : cbd ptS100 = 3301755532008756452654234587735144044968791470672188842270997 := by
  unfold ptS100
  try simp only [callD, cbd, cbk_101]
  try decide_cbv

theorem cbk_99 : cbd ptS99 = 3301755532008756452654234587735144044968791470672188842271010 := by
  unfold ptS99
  try simp only [callD, cbd, cbk_100]
  try decide_cbv

theorem cbk_98 : cbd ptS98 = 38029518017509100121566801297986 := by
  unfold ptS98
  try simp only [callD, cbd, cbk_202]
  try decide_cbv

theorem cbk_97 : cbd ptS97 = 3301755532008756452654234587735144044968791470672188842271010 := by
  unfold ptS97
  try simp only [callD, cbd, cbk_99]
  try decide_cbv

theorem cbk_96 : cbd ptS96 = 3301755532008756452654234587773173562986300570793755643568996 := by
  unfold ptS96
  try simp only [callD, cbd, cbk_97, cbk_98]
  try decide_cbv

theorem cbk_95 : cbd ptS95 = 38029518017509100121566801297986 := by
  unfold ptS95
  try simp only [callD, cbd, cbk_204]
  try decide_cbv

theorem cbk_94 : cbd ptS94 = 3301755532008756452654234587773173562986300570793755643568996 := by
  unfold ptS94
  try simp only [callD, cbd, cbk_96]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
