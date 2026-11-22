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

theorem cbk_21 : cbd ptS21 = 320714611926545780245699875556916634953876626943740671493963638705434 := by
  unfold ptS21
  try simp only [callD, cbd, cbk_22]
  try decide_cbv

theorem cbk_20 : cbd ptS20 = 320714611926545780245699876691758329206916823932775035409591797132129 := by
  unfold ptS20
  try simp only [callD, cbd, cbk_21]
  decide +kernel

theorem cbk_19 : cbd ptS19 = 320714611926545780245699876691758329206916823932775035409591797132130 := by
  unfold ptS19
  try simp only [callD, cbd, cbk_20]
  decide +kernel

theorem cbk_18 : cbd ptS18 = 320714611926545780245699876691758329206916823932775035409591797132130 := by
  unfold ptS18
  try simp only [callD, cbd, cbk_19]
  try decide_cbv

theorem cbk_17 : cbd ptS17 = 320714611957931288922633281657348571051307260763728368526814738533094 := by
  unfold ptS17
  try simp only [callD, cbd, cbk_18]
  decide +kernel

theorem cbk_16 : cbd ptS16 = 320714611957931288922633281657348571051307260763728368526814738533094 := by
  unfold ptS16
  try simp only [callD, cbd, cbk_17]
  try decide_cbv

theorem cbk_15 : cbd ptS15 = 320714611957931288922633281657348571051307260763728368526814738533094 := by
  unfold ptS15
  try simp only [callD, cbd, cbk_16]
  try decide_cbv

theorem cbk_14 : cbd ptS14 = 320714611957931288922633281657348571051307260763839048991256995842802 := by
  unfold ptS14
  try simp only [callD, cbd, cbk_15]
  decide +kernel

theorem cbk_13 : cbd ptS13 = 225975662473920507694771627315778422922075979890255731413459 := by
  unfold ptS13
  try simp only [callD, cbd]
  decide +kernel

theorem cbk_12 : cbd ptS12 = 320714611957931288922633281657348571051307260763839048991256995842802 := by
  unfold ptS12
  try simp only [callD, cbd, cbk_14]
  try decide_cbv

theorem cbk_11 : cbd ptS11 = 320714612183906951396553789352120198367085683685915028881512727256261 := by
  unfold ptS11
  try simp only [callD, cbd, cbk_12, cbk_13]
  try decide_cbv

theorem cbk_10 : cbd ptS10 = 0 := by
  unfold ptS10
  try simp only [callD, cbd, cbk_225]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
