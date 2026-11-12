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

theorem cbk_105 : cbd ptS105 = 1404544343490099317887021779953618703126659736309590949131483649825462818513464911160936733 := by
  unfold ptS105
  try simp only [callD, cbd, cbk_106, cbk_107]
  try decide_cbv

theorem cbk_104 : cbd ptS104 = 1404544343490099317887021779953618703126659736309590949131483649825462818513464911160936736 := by
  unfold ptS104
  try simp only [callD, cbd, cbk_105]
  try decide_cbv

theorem cbk_103 : cbd ptS103 = 6277101735386680782211037236938343446020723065351917535336 := by
  unfold ptS103
  try simp only [callD, cbd, cbk_200]
  try decide_cbv

theorem cbk_102 : cbd ptS102 = 1404544343490099317887021779953618703126659736309590949131483649825462818513464911160936736 := by
  unfold ptS102
  try simp only [callD, cbd, cbk_104]
  try decide_cbv

theorem cbk_101 : cbd ptS101 = 1404544343490099317887021779953624980228395122990373160168720588168908839236530263078472072 := by
  unfold ptS101
  try simp only [callD, cbd, cbk_102, cbk_103]
  try decide_cbv

theorem cbk_100 : cbd ptS100 = 1404544343490099317887021779953624980228395122990373160168720588168908839236530263078472072 := by
  unfold ptS100
  try simp only [callD, cbd, cbk_101]
  try decide_cbv

theorem cbk_99 : cbd ptS99 = 1404544343490099317887021779953624980228395122990373160168720588168908839236530263078472085 := by
  unfold ptS99
  try simp only [callD, cbd, cbk_100]
  try decide_cbv

theorem cbk_98 : cbd ptS98 = 6277101735386680782211037236938343446020723065351917535336 := by
  unfold ptS98
  try simp only [callD, cbd, cbk_202]
  try decide_cbv

theorem cbk_97 : cbd ptS97 = 1404544343490099317887021779953624980228395122990373160168720588168908839236530263078472085 := by
  unfold ptS97
  try simp only [callD, cbd, cbk_99]
  try decide_cbv

theorem cbk_96 : cbd ptS96 = 1404544343490099317887021779953631257330130509671155371205957526512354859959595614996007421 := by
  unfold ptS96
  try simp only [callD, cbd, cbk_97, cbk_98]
  try decide_cbv

theorem cbk_95 : cbd ptS95 = 6277101735386680782211037236938343446020723065351917535336 := by
  unfold ptS95
  try simp only [callD, cbd, cbk_204]
  try decide_cbv

theorem cbk_94 : cbd ptS94 = 1404544343490099317887021779953631257330130509671155371205957526512354859959595614996007421 := by
  unfold ptS94
  try simp only [callD, cbd, cbk_96]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
