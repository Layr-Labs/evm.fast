import InitECandidate.Solver.MemSafe.PtC.Eq1

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

theorem cbk_201 : cbd ptS201 = 36893490140283929151 := by
  unfold ptS201
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_200 : cbd ptS200 = 36893490140283929151 := by
  unfold ptS200
  try simp only [callD, cbd, cbk_201]
  try decide_cbv

theorem cbk_199 : cbd ptS199 = 0 := by
  unfold ptS199
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_198 : cbd ptS198 = 0 := by
  unfold ptS198
  try simp only [callD, cbd, cbk_199]
  try decide_cbv

theorem cbk_197 : cbd ptS197 = 0 := by
  unfold ptS197
  try simp only [callD, cbd, cbk_198]
  try decide_cbv

theorem cbk_196 : cbd ptS196 = 0 := by
  unfold ptS196
  try simp only [callD, cbd, cbk_197]
  try decide_cbv

theorem cbk_195 : cbd ptS195 = 680564733841876927664618977811918487622 := by
  unfold ptS195
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_194 : cbd ptS194 = 0 := by
  unfold ptS194
  try simp only [callD, cbd, cbk_196]
  try decide_cbv

theorem cbk_193 : cbd ptS193 = 680564733841876927664618977811918487622 := by
  unfold ptS193
  try simp only [callD, cbd, cbk_194, cbk_195]
  try decide_cbv

theorem cbk_192 : cbd ptS192 = 680564733841876927664618977811918487625 := by
  unfold ptS192
  try simp only [callD, cbd, cbk_193]
  try decide_cbv

theorem cbk_191 : cbd ptS191 = 0 := by
  unfold ptS191
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_190 : cbd ptS190 = 0 := by
  unfold ptS190
  try simp only [callD, cbd, cbk_191]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
