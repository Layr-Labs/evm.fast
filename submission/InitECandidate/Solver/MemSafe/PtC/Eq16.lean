import InitECandidate.Solver.MemSafe.PtC.Eq15

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

theorem cbk_33 : cbd ptS33 = 723700557986514764376189533082442263495112263471744007052643203521256215704206 := by
  unfold ptS33
  try simp only [callD, cbd, cbk_34]
  try decide_cbv

theorem cbk_32 : cbd ptS32 = 723700557986514764382466634817828945415567818630931932125486429813158307107443 := by
  unfold ptS32
  try simp only [callD, cbd, cbk_33]
  try decide_cbv

theorem cbk_31 : cbd ptS31 = 723700557986514764382466634817828945415567818630931932125486429813158307107443 := by
  unfold ptS31
  try simp only [callD, cbd, cbk_32]
  try decide_cbv

theorem cbk_30 : cbd ptS30 = 723700557986514764382466634817828945415567818630931932125486429813158307107444 := by
  unfold ptS30
  try simp only [callD, cbd, cbk_31]
  try decide_cbv

theorem cbk_29 : cbd ptS29 = 723700557986514764382466634817828945415567818630931932125486429813158307107444 := by
  unfold ptS29
  try simp only [callD, cbd, cbk_30]
  try decide_cbv

theorem cbk_28 : cbd ptS28 = 723700557986514764382466634817828945415567818630931932125486429813158307107444 := by
  unfold ptS28
  try simp only [callD, cbd, cbk_29]
  try decide_cbv

theorem cbk_27 : cbd ptS27 = 723700557986514764382466634817828945415567818630931932125486429813158307107444 := by
  unfold ptS27
  try simp only [callD, cbd, cbk_28]
  try decide_cbv

theorem cbk_26 : cbd ptS26 = 723700557986514764382466634817828945415567818630931932125486429813158307107462 := by
  unfold ptS26
  try simp only [callD, cbd, cbk_27]
  try decide_cbv

theorem cbk_25 : cbd ptS25 = 31385508676933403830408265224429301376813834371602864668800 := by
  unfold ptS25
  try simp only [callD, cbd, cbk_222]
  try decide_cbv

theorem cbk_24 : cbd ptS24 = 723700557986514764382466634817828945415567818630931932125486429813158307107462 := by
  unfold ptS24
  try simp only [callD, cbd, cbk_26]
  try decide_cbv

theorem cbk_23 : cbd ptS23 = 723700557986514764413852143494762349245976083855361233502300264184761171776262 := by
  unfold ptS23
  try simp only [callD, cbd, cbk_24, cbk_25]
  try decide_cbv

theorem cbk_22 : cbd ptS22 = 723700557986514764413852143494762349245976083855361233502300264184761171776262 := by
  unfold ptS22
  try simp only [callD, cbd, cbk_23]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
