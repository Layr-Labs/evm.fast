import InitECandidate.Solver.MemSafe.PtC.Eq17

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

theorem cbk_9 : cbd ptS9 = 216943550393510633371208351201025710492177152008958690420876623152772 := by
  unfold ptS9
  try simp only [callD, cbd, cbk_11]
  try decide_cbv

theorem cbk_8 : cbd ptS8 = 216943550393510633371208351201025710492177152008958690420876623152772 := by
  unfold ptS8
  try simp only [callD, cbd, cbk_10, cbk_9]
  try decide_cbv

theorem cbk_7 : cbd ptS7 = 216943550393510633371208351201025710492177152008958690420876623152777 := by
  unfold ptS7
  try simp only [callD, cbd, cbk_8]
  try decide_cbv

theorem cbk_6 : cbd ptS6 = 0 := by
  unfold ptS6
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_5 : cbd ptS5 = 216943550393510633371208351201025710492177152008958690420876623152777 := by
  unfold ptS5
  try simp only [callD, cbd, cbk_7]
  try decide_cbv

theorem cbk_4 : cbd ptS4 = 0 := by
  unfold ptS4
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_3 : cbd ptS3 = 216943550393510633371208351201025710492177152008958690420876623152777 := by
  unfold ptS3
  try simp only [callD, cbd, cbk_5, cbk_6]
  try decide_cbv

theorem cbk_2 : cbd ptS2 = 216943550393510633371208351201025710492177152008958690420876623152777 := by
  unfold ptS2
  try simp only [callD, cbd, cbk_3, cbk_4]
  try decide_cbv

theorem cbk_1 : cbd ptS1 = 216943550431173243783528435814325577687386673762003517517815241967798 := by
  unfold ptS1
  try simp only [callD, cbd, cbk_2]
  try decide_cbv

theorem cbk_0 : cbd ptS0 = 216943550431173243783528435814325577687386673762003517517815241967798 := by
  unfold ptS0
  try simp only [callD, cbd, cbk_1]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
