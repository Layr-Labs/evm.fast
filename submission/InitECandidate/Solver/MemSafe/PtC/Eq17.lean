import InitECandidate.Solver.MemSafe.PtC.Eq16

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

theorem cbk_21 : cbd ptS21 = 1404544343490099317887021779953731690957896696565729796405130559492558277767195737010555777 := by
  unfold ptS21
  try simp only [callD, cbd, cbk_22]
  try decide_cbv

theorem cbk_20 : cbd ptS20 = 1404544343490099317887021779953731690957896696566864638099383599689547312131111365168982472 := by
  unfold ptS20
  try simp only [callD, cbd, cbk_21]
  try decide_cbv

theorem cbk_19 : cbd ptS19 = 1404544343490099317887021779953731690957896696566864638099383599689547312131111365168982473 := by
  unfold ptS19
  try simp only [callD, cbd, cbk_20]
  try decide_cbv

theorem cbk_18 : cbd ptS18 = 1404544343490099317887021779953731690957896696566864638099383599689547312131111365168982473 := by
  unfold ptS18
  try simp only [callD, cbd, cbk_19]
  try decide_cbv

theorem cbk_17 : cbd ptS17 = 1404544343490099317887021779953763076466573629971830228341227990126378265464228588110383437 := by
  unfold ptS17
  try simp only [callD, cbd, cbk_18]
  try decide_cbv

theorem cbk_16 : cbd ptS16 = 1404544343490099317887021779953763076466573629971830228341227990126378265464228588110383437 := by
  unfold ptS16
  try simp only [callD, cbd, cbk_17]
  try decide_cbv

theorem cbk_15 : cbd ptS15 = 1404544343490099317887021779953763076466573629971830228341227990126378265464228588110383437 := by
  unfold ptS15
  try simp only [callD, cbd, cbk_16]
  try decide_cbv

theorem cbk_14 : cbd ptS14 = 1404544343490099317887021779953763076466573629971830228341227990126378376144693030367693145 := by
  unfold ptS14
  try simp only [callD, cbd, cbk_15]
  try decide_cbv

theorem cbk_13 : cbd ptS13 = 225975662473920507694771627315778422922075979890255731413459 := by
  unfold ptS13
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_12 : cbd ptS12 = 1404544343490099317887021779953763076466573629971830228341227990126378376144693030367693145 := by
  unfold ptS12
  try simp only [callD, cbd, cbk_14]
  try decide_cbv

theorem cbk_11 : cbd ptS11 = 1404544343490099317887021779953989052129047550479524999968543768549300452124583286099106604 := by
  unfold ptS11
  try simp only [callD, cbd, cbk_12, cbk_13]
  try decide_cbv

theorem cbk_10 : cbd ptS10 = 0 := by
  unfold ptS10
  try simp only [callD, cbd, cbk_225]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
