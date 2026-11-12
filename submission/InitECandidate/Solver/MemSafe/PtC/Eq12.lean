import InitECandidate.Solver.MemSafe.PtC.Eq11

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

theorem cbk_81 : cbd ptS81 = 1404544343490099317887021779953637534431865896351937922525561385794265321734704305287989977 := by
  unfold ptS81
  try simp only [callD, cbd, cbk_82]
  try decide_cbv

theorem cbk_80 : cbd ptS80 = 1404544343490099317887021779953637534431865896351937922525561385794265321734704305287989977 := by
  unfold ptS80
  try simp only [callD, cbd, cbk_81]
  try decide_cbv

theorem cbk_79 : cbd ptS79 = 1404544343490099317887021779953637534431865896351937922525561385794265395521680600126196450 := by
  unfold ptS79
  try simp only [callD, cbd, cbk_80]
  try decide_cbv

theorem cbk_78 : cbd ptS78 = 1404544343490099317887021779953637534431865896351937922525561385794265395521680600126196450 := by
  unfold ptS78
  try simp only [callD, cbd, cbk_79]
  try decide_cbv

theorem cbk_77 : cbd ptS77 = 1404544343490099317887021779953637534431865896351937922525561385794265395521680600126196450 := by
  unfold ptS77
  try simp only [callD, cbd, cbk_78]
  try decide_cbv

theorem cbk_76 : cbd ptS76 = 1404544343490099317887021779953637534431865896351937922525561385794265395521680600126196450 := by
  unfold ptS76
  try simp only [callD, cbd, cbk_77]
  try decide_cbv

theorem cbk_75 : cbd ptS75 = 1404544343490099317887021779953637534431865896351937922525561385794265395521680600126196450 := by
  unfold ptS75
  try simp only [callD, cbd, cbk_76]
  try decide_cbv

theorem cbk_74 : cbd ptS74 = 1404544343490099317887021779953637534431865896351938603090295227671192783439497306401409792 := by
  unfold ptS74
  try simp only [callD, cbd, cbk_75]
  try decide_cbv

theorem cbk_73 : cbd ptS73 = 1404544343490099317887021779953637534431865896351938603090295227671192783439497306401409795 := by
  unfold ptS73
  try simp only [callD, cbd, cbk_74]
  try decide_cbv

theorem cbk_72 : cbd ptS72 = 1404544343490099317887021779953637534431865896351938603090295227671192783439497306401409795 := by
  unfold ptS72
  try simp only [callD, cbd, cbk_73]
  try decide_cbv

theorem cbk_71 : cbd ptS71 = 0 := by
  unfold ptS71
  try simp only [callD, cbd, cbk_206]
  try decide_cbv

theorem cbk_70 : cbd ptS70 = 1404544343490099317887021779953637534431865896351938603090295227671192783439497306401409795 := by
  unfold ptS70
  try simp only [callD, cbd, cbk_72]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
