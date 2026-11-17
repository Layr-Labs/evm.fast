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

theorem cbk_105 : cbd ptS105 = 723700557986514764300864312257802093107128810208451566406841010453935322157218 := by
  unfold ptS105
  try simp only [callD, cbd, cbk_106, cbk_107]
  try decide_cbv

theorem cbk_104 : cbd ptS104 = 723700557986514764300864312257802093107128810208451566406841010453935322157221 := by
  unfold ptS104
  try simp only [callD, cbd, cbk_105]
  try decide_cbv

theorem cbk_103 : cbd ptS103 = 6277101735386680782211037236938343446020723065351917535336 := by
  unfold ptS103
  try simp only [callD, cbd, cbk_200]
  try decide_cbv

theorem cbk_102 : cbd ptS102 = 723700557986514764300864312257802093107128810208451566406841010453935322157221 := by
  unfold ptS102
  try simp only [callD, cbd, cbk_104]
  try decide_cbv

theorem cbk_101 : cbd ptS101 = 723700557986514764307141413993188773889339847445389909852861733519287239692557 := by
  unfold ptS101
  try simp only [callD, cbd, cbk_102, cbk_103]
  try decide_cbv

theorem cbk_100 : cbd ptS100 = 723700557986514764307141413993188773889339847445389909852861733519287239692557 := by
  unfold ptS100
  try simp only [callD, cbd, cbk_101]
  try decide_cbv

theorem cbk_99 : cbd ptS99 = 723700557986514764307141413993188773889339847445389909852861733519287239692570 := by
  unfold ptS99
  try simp only [callD, cbd, cbk_100]
  try decide_cbv

theorem cbk_98 : cbd ptS98 = 6277101735386680782211037236938343446020723065351917535336 := by
  unfold ptS98
  try simp only [callD, cbd, cbk_202]
  try decide_cbv

theorem cbk_97 : cbd ptS97 = 723700557986514764307141413993188773889339847445389909852861733519287239692570 := by
  unfold ptS97
  try simp only [callD, cbd, cbk_99]
  try decide_cbv

theorem cbk_96 : cbd ptS96 = 723700557986514764313418515728575454671550884682328253298882456584639157227906 := by
  unfold ptS96
  try simp only [callD, cbd, cbk_97, cbk_98]
  try decide_cbv

theorem cbk_95 : cbd ptS95 = 6277101735386680782211037236938343446020723065351917535336 := by
  unfold ptS95
  try simp only [callD, cbd, cbk_204]
  try decide_cbv

theorem cbk_94 : cbd ptS94 = 723700557986514764313418515728575454671550884682328253298882456584639157227906 := by
  unfold ptS94
  try simp only [callD, cbd, cbk_96]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
