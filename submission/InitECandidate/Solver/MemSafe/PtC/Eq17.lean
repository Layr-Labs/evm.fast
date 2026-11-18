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

theorem cbk_21 : cbd ptS21 = 3301755532102292559489193661279809759382765722013688768476723 := by
  unfold ptS21
  try simp only [callD, cbd, cbk_22]
  try decide_cbv

theorem cbk_20 : cbd ptS20 = 3301755532102292559489193661610032741723789180562380936500746 := by
  unfold ptS20
  try simp only [callD, cbd, cbk_21]
  try decide_cbv

theorem cbk_19 : cbd ptS19 = 3301755532102292559489193661610032741723789180562380936500747 := by
  unfold ptS19
  try simp only [callD, cbd, cbk_20]
  try decide_cbv

theorem cbk_18 : cbd ptS18 = 3301755532102292559489193661610032741723789180562380936500747 := by
  unfold ptS18
  try simp only [callD, cbd, cbk_19]
  try decide_cbv

theorem cbk_17 : cbd ptS17 = 3301755532102292561334548634045052762794358825987667572423312 := by
  unfold ptS17
  try simp only [callD, cbd, cbk_18]
  try decide_cbv

theorem cbk_16 : cbd ptS16 = 3301755532102292561334548634045052762794358825987667572423312 := by
  unfold ptS16
  try simp only [callD, cbd, cbk_17]
  try decide_cbv

theorem cbk_15 : cbd ptS15 = 3301755532102292561334548634045052762794358825987667572423312 := by
  unfold ptS15
  try simp only [callD, cbd, cbk_16]
  try decide_cbv

theorem cbk_14 : cbd ptS14 = 3301755532102292561334548634045052762794469506452109829733020 := by
  unfold ptS14
  try simp only [callD, cbd, cbk_15]
  try decide_cbv

theorem cbk_13 : cbd ptS13 = 75325221105248483715273617435511859767499295801516231287983 := by
  unfold ptS13
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_12 : cbd ptS12 = 3301755532102292561334548634045052762794469506452109829733020 := by
  unfold ptS12
  try simp only [callD, cbd, cbk_14]
  try decide_cbv

theorem cbk_11 : cbd ptS11 = 3377080753207541045049822251480564622561968802253626061021003 := by
  unfold ptS11
  try simp only [callD, cbd, cbk_12, cbk_13]
  try decide_cbv

theorem cbk_10 : cbd ptS10 = 0 := by
  unfold ptS10
  try simp only [callD, cbd, cbk_225]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
