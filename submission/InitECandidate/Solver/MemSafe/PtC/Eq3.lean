import InitECandidate.Solver.MemSafe.PtC.Eq2

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

theorem cbk_189 : cbd ptS189 = 0 := by
  unfold ptS189
  try simp only [callD, cbd, cbk_190]
  try decide_cbv

theorem cbk_188 : cbd ptS188 = 0 := by
  unfold ptS188
  try simp only [callD, cbd, cbk_189]
  try decide_cbv

theorem cbk_187 : cbd ptS187 = 1135522258986882073916698982893440076914320 := by
  unfold ptS187
  try simp only [callD, cbd, cbk_192]
  try decide_cbv

theorem cbk_186 : cbd ptS186 = 0 := by
  unfold ptS186
  try simp only [callD, cbd, cbk_188]
  try decide_cbv

theorem cbk_185 : cbd ptS185 = 0 := by
  unfold ptS185
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_184 : cbd ptS184 = 73786976294838206473 := by
  unfold ptS184
  try simp only [callD, cbd, cbk_185]
  try decide_cbv

theorem cbk_183 : cbd ptS183 = 0 := by
  unfold ptS183
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_182 : cbd ptS182 = 0 := by
  unfold ptS182
  try simp only [callD, cbd, cbk_183]
  try decide_cbv

theorem cbk_181 : cbd ptS181 = 12554203470773362705388851331493776227290369235582827143292 := by
  unfold ptS181
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_180 : cbd ptS180 = 12554203470773362705388851331493776227290369235582827143292 := by
  unfold ptS180
  try simp only [callD, cbd, cbk_181]
  try decide_cbv

theorem cbk_179 : cbd ptS179 = 12554203470773362705388851331493776227290369235582827143293 := by
  unfold ptS179
  try simp only [callD, cbd, cbk_180]
  try decide_cbv

theorem cbk_178 : cbd ptS178 = 231584178474632412584745290207647128933190931493979098325776965133417748406398 := by
  unfold ptS178
  try simp only [callD, cbd, cbk_179]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
