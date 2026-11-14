import InitECandidate.Solver.MemSafe.PtC.Eq0

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

theorem cbk_213 : cbd ptS213 = 274877907018 := by
  unfold ptS213
  try simp only [callD, cbd, cbk_214, cbk_215]
  try decide_cbv

theorem cbk_212 : cbd ptS212 = 5070602402296423411789907099723 := by
  unfold ptS212
  try simp only [callD, cbd, cbk_213]
  try decide_cbv

theorem cbk_211 : cbd ptS211 = 5070602402296423411789907099723 := by
  unfold ptS211
  try simp only [callD, cbd, cbk_212]
  try decide_cbv

theorem cbk_210 : cbd ptS210 = 5070602402296423411789907099723 := by
  unfold ptS210
  try simp only [callD, cbd, cbk_211]
  try decide_cbv

theorem cbk_209 : cbd ptS209 = 5070602402296423411789907099723 := by
  unfold ptS209
  try simp only [callD, cbd, cbk_210]
  try decide_cbv

theorem cbk_208 : cbd ptS208 = 5070602402296423411789907099723 := by
  unfold ptS208
  try simp only [callD, cbd, cbk_209]
  try decide_cbv

theorem cbk_207 : cbd ptS207 = 0 := by
  unfold ptS207
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_206 : cbd ptS206 = 0 := by
  unfold ptS206
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_205 : cbd ptS205 = 36893490140283929151 := by
  unfold ptS205
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_204 : cbd ptS204 = 36893490140283929151 := by
  unfold ptS204
  try simp only [callD, cbd, cbk_205]
  try decide_cbv

theorem cbk_203 : cbd ptS203 = 36893490140283929151 := by
  unfold ptS203
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_202 : cbd ptS202 = 36893490140283929151 := by
  unfold ptS202
  try simp only [callD, cbd, cbk_203]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
