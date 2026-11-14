import InitECandidate.Solver.MemSafe.PtC.Eq4

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

theorem cbk_165 : cbd ptS165 = 228633156544212326088678819459873403263902584074291200126677632 := by
  unfold ptS165
  try simp only [callD, cbd, cbk_167]
  try decide_cbv

theorem cbk_164 : cbd ptS164 = 228633156544212326088678819459873403263902602521035273836229249 := by
  unfold ptS164
  try simp only [callD, cbd, cbk_165, cbk_166]
  try decide_cbv

theorem cbk_163 : cbd ptS163 = 228633156544212326088678819459873403263902602521035273836229249 := by
  unfold ptS163
  try simp only [callD, cbd, cbk_164]
  try decide_cbv

theorem cbk_162 : cbd ptS162 = 228633156544212326088678819459873403263902602521035273836229249 := by
  unfold ptS162
  try simp only [callD, cbd, cbk_163]
  try decide_cbv

theorem cbk_161 : cbd ptS161 = 228633156544212326088678819459873403263902602521035273836229249 := by
  unfold ptS161
  try simp only [callD, cbd, cbk_162]
  try decide_cbv

theorem cbk_160 : cbd ptS160 = 0 := by
  unfold ptS160
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_159 : cbd ptS159 = 228633156544212326088678819459873403263902602521035273836229256 := by
  unfold ptS159
  try simp only [callD, cbd, cbk_161]
  try decide_cbv

theorem cbk_158 : cbd ptS158 = 228633156544212326088678819459873403263902602521035273836229256 := by
  unfold ptS158
  try simp only [callD, cbd, cbk_159, cbk_160]
  try decide_cbv

theorem cbk_157 : cbd ptS157 = 1361129467683753854111752846759006568458 := by
  unfold ptS157
  try simp only [callD, cbd, cbk_184]
  try decide_cbv

theorem cbk_156 : cbd ptS156 = 228633156544212326088678819459873403263902602521035273836229256 := by
  unfold ptS156
  try simp only [callD, cbd, cbk_158]
  try decide_cbv

theorem cbk_155 : cbd ptS155 = 228633156544212326088680180589341087017756714273882032842797714 := by
  unfold ptS155
  try simp only [callD, cbd, cbk_156, cbk_157]
  try decide_cbv

theorem cbk_154 : cbd ptS154 = 228633156544212326088680180589341087017756714273882032842797714 := by
  unfold ptS154
  try simp only [callD, cbd, cbk_155]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
