import InitECandidate.Solver.MemSafe.PtC.PmcLit

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

theorem cbk_225 : cbd ptS225 = 0 := by
  unfold ptS225
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_224 : cbd ptS224 = 0 := by
  unfold ptS224
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_223 : cbd ptS223 = 18 := by
  unfold ptS223
  try simp only [callD, cbd, cbk_224]
  try decide_cbv

theorem cbk_222 : cbd ptS222 = 31385508676933403830408265224429301376813834371602864668800 := by
  unfold ptS222
  try simp only [callD, cbd, cbk_223]
  try decide_cbv

theorem cbk_221 : cbd ptS221 = 0 := by
  unfold ptS221
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_220 : cbd ptS220 = 0 := by
  unfold ptS220
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_219 : cbd ptS219 = 0 := by
  unfold ptS219
  try simp only [callD, cbd, cbk_220, cbk_221]
  try decide_cbv

theorem cbk_218 : cbd ptS218 = 0 := by
  unfold ptS218
  try simp only [callD, cbd, cbk_219]
  try decide_cbv

theorem cbk_217 : cbd ptS217 = 137438953509 := by
  unfold ptS217
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_216 : cbd ptS216 = 0 := by
  unfold ptS216
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_215 : cbd ptS215 = 137438953509 := by
  unfold ptS215
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_214 : cbd ptS214 = 137438953509 := by
  unfold ptS214
  try simp only [callD, cbd, cbk_216, cbk_217]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
