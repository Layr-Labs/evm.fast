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

theorem cbk_105 : cbd ptS105 = 16204032641583379049778956912782447387282986832349999005924387997117533888377518393899453 := by
  unfold ptS105
  try simp only [callD, cbd, cbk_106, cbk_107]
  try decide_cbv

theorem cbk_104 : cbd ptS104 = 16204032641583379049778956912782447387282986832349999005924387997117533888377518393899456 := by
  unfold ptS104
  try simp only [callD, cbd, cbk_105]
  try decide_cbv

theorem cbk_103 : cbd ptS103 = 6277101735386680782211037236938343446020723065351917535336 := by
  unfold ptS103
  try simp only [callD, cbd, cbk_200]
  try decide_cbv

theorem cbk_102 : cbd ptS102 = 16204032641583379049778956912782447387282986832349999005924387997117533888377518393899456 := by
  unfold ptS102
  try simp only [callD, cbd, cbk_104]
  try decide_cbv

theorem cbk_101 : cbd ptS101 = 16204032641583379049778956912788724489018373513132210043161326340563554611442870311434792 := by
  unfold ptS101
  try simp only [callD, cbd, cbk_102, cbk_103]
  try decide_cbv

theorem cbk_100 : cbd ptS100 = 16204032641583379049778956912788724489018373513132210043161326340563554611442870311434792 := by
  unfold ptS100
  try simp only [callD, cbd, cbk_101]
  try decide_cbv

theorem cbk_99 : cbd ptS99 = 16204032641583379049778956912788724489018373513132210043161326340563554611442870311434805 := by
  unfold ptS99
  try simp only [callD, cbd, cbk_100]
  try decide_cbv

theorem cbk_98 : cbd ptS98 = 6277101735386680782211037236938343446020723065351917535336 := by
  unfold ptS98
  try simp only [callD, cbd, cbk_202]
  try decide_cbv

theorem cbk_97 : cbd ptS97 = 16204032641583379049778956912788724489018373513132210043161326340563554611442870311434805 := by
  unfold ptS97
  try simp only [callD, cbd, cbk_99]
  try decide_cbv

theorem cbk_96 : cbd ptS96 = 16204032641583379049778956912795001590753760193914421080398264684009575334508222228970141 := by
  unfold ptS96
  try simp only [callD, cbd, cbk_97, cbk_98]
  try decide_cbv

theorem cbk_95 : cbd ptS95 = 6277101735386680782211037236938343446020723065351917535336 := by
  unfold ptS95
  try simp only [callD, cbd, cbk_204]
  try decide_cbv

theorem cbk_94 : cbd ptS94 = 16204032641583379049778956912795001590753760193914421080398264684009575334508222228970141 := by
  unfold ptS94
  try simp only [callD, cbd, cbk_96]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
