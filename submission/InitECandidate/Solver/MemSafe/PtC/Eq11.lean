import InitECandidate.Solver.MemSafe.PtC.Eq10

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

theorem cbk_93 : cbd ptS93 = 1404544343490099317887021779953637534431865896351937582243194464855800880682660966913542757 := by
  unfold ptS93
  try simp only [callD, cbd, cbk_94, cbk_95]
  try decide_cbv

theorem cbk_92 : cbd ptS92 = 1404544343490099317887021779953637534431865896351937582243194464855800880682660966913542757 := by
  unfold ptS92
  try simp only [callD, cbd, cbk_93]
  try decide_cbv

theorem cbk_91 : cbd ptS91 = 1404544343490099317887021779953637534431865896351937582243194464855800880682660966913542757 := by
  unfold ptS91
  try simp only [callD, cbd, cbk_92]
  try decide_cbv

theorem cbk_90 : cbd ptS90 = 1404544343490099317887021779953637534431865896351937922525561385794265321734704305287989964 := by
  unfold ptS90
  try simp only [callD, cbd, cbk_91]
  try decide_cbv

theorem cbk_89 : cbd ptS89 = 1404544343490099317887021779953637534431865896351937922525561385794265321734704305287989964 := by
  unfold ptS89
  try simp only [callD, cbd, cbk_90]
  try decide_cbv

theorem cbk_88 : cbd ptS88 = 0 := by
  unfold ptS88
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_87 : cbd ptS87 = 1404544343490099317887021779953637534431865896351937922525561385794265321734704305287989977 := by
  unfold ptS87
  try simp only [callD, cbd, cbk_89]
  try decide_cbv

theorem cbk_86 : cbd ptS86 = 1404544343490099317887021779953637534431865896351937922525561385794265321734704305287989977 := by
  unfold ptS86
  try simp only [callD, cbd, cbk_87, cbk_88]
  try decide_cbv

theorem cbk_85 : cbd ptS85 = 1404544343490099317887021779953637534431865896351937922525561385794265321734704305287989977 := by
  unfold ptS85
  try simp only [callD, cbd, cbk_86]
  try decide_cbv

theorem cbk_84 : cbd ptS84 = 1404544343490099317887021779953637534431865896351937922525561385794265321734704305287989977 := by
  unfold ptS84
  try simp only [callD, cbd, cbk_85]
  try decide_cbv

theorem cbk_83 : cbd ptS83 = 1404544343490099317887021779953637534431865896351937922525561385794265321734704305287989977 := by
  unfold ptS83
  try simp only [callD, cbd, cbk_84]
  try decide_cbv

theorem cbk_82 : cbd ptS82 = 1404544343490099317887021779953637534431865896351937922525561385794265321734704305287989977 := by
  unfold ptS82
  try simp only [callD, cbd, cbk_83]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
