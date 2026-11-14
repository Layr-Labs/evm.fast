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

theorem cbk_21 : cbd ptS21 = 216943550136149462220354438365758704678869294646651793285652530887422 := by
  unfold ptS21
  try simp only [callD, cbd, cbk_22]
  try decide_cbv

theorem cbk_20 : cbd ptS20 = 216943550136149462220354438540663841332008292255818696948955693028637 := by
  unfold ptS20
  try simp only [callD, cbd, cbk_21]
  try decide_cbv

theorem cbk_19 : cbd ptS19 = 216943550136149462220354438540663841332008292255818696948955693028638 := by
  unfold ptS19
  try simp only [callD, cbd, cbk_20]
  try decide_cbv

theorem cbk_18 : cbd ptS18 = 216943550136149462220354438540663841332008292255818696948955693028638 := by
  unfold ptS18
  try simp only [callD, cbd, cbk_19]
  try decide_cbv

theorem cbk_17 : cbd ptS17 = 216943550167534970897287843506254083176398729086772030066178634429602 := by
  unfold ptS17
  try simp only [callD, cbd, cbk_18]
  try decide_cbv

theorem cbk_16 : cbd ptS16 = 216943550167534970897287843506254083176398729086772030066178634429602 := by
  unfold ptS16
  try simp only [callD, cbd, cbk_17]
  try decide_cbv

theorem cbk_15 : cbd ptS15 = 216943550167534970897287843506254083176398729086772030066178634429602 := by
  unfold ptS15
  try simp only [callD, cbd, cbk_16]
  try decide_cbv

theorem cbk_14 : cbd ptS14 = 216943550167534970897287843506254083176398729086882710530620891739310 := by
  unfold ptS14
  try simp only [callD, cbd, cbk_15]
  try decide_cbv

theorem cbk_13 : cbd ptS13 = 225975662473920507694771627315778422922075979890255731413459 := by
  unfold ptS13
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_12 : cbd ptS12 = 216943550167534970897287843506254083176398729086882710530620891739310 := by
  unfold ptS12
  try simp only [callD, cbd, cbk_14]
  try decide_cbv

theorem cbk_11 : cbd ptS11 = 216943550393510633371208351201025710492177152008958690420876623152769 := by
  unfold ptS11
  try simp only [callD, cbd, cbk_12, cbk_13]
  try decide_cbv

theorem cbk_10 : cbd ptS10 = 0 := by
  unfold ptS10
  try simp only [callD, cbd, cbk_225]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
