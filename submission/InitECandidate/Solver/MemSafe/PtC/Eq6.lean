import InitECandidate.Solver.MemSafe.PtC.Eq5

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

theorem cbk_153 : cbd ptS153 = 228633156544212326088680180589341087017756714273882032842797714 := by
  unfold ptS153
  try simp only [callD, cbd, cbk_154]
  try decide_cbv

theorem cbk_152 : cbd ptS152 = 0 := by
  unfold ptS152
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_151 : cbd ptS151 = 228633156544212326088680180589341087017756714273882032842797714 := by
  unfold ptS151
  try simp only [callD, cbd, cbk_153]
  try decide_cbv

theorem cbk_150 : cbd ptS150 = 0 := by
  unfold ptS150
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_149 : cbd ptS149 = 228633156544212326088680180589341087017756714273882032842797714 := by
  unfold ptS149
  try simp only [callD, cbd, cbk_151, cbk_152]
  try decide_cbv

theorem cbk_148 : cbd ptS148 = 228633156544212326088680180589341087017756714273882032842797714 := by
  unfold ptS148
  try simp only [callD, cbd, cbk_149, cbk_150]
  try decide_cbv

theorem cbk_147 : cbd ptS147 = 0 := by
  unfold ptS147
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_146 : cbd ptS146 = 215679802221445732277429767532743306852151082665348992408654588999169 := by
  unfold ptS146
  try simp only [callD, cbd, cbk_148]
  try decide_cbv

theorem cbk_145 : cbd ptS145 = 215679802221445732277429767532743306852151082665348992408654588999169 := by
  unfold ptS145
  try simp only [callD, cbd, cbk_146, cbk_147]
  try decide_cbv

theorem cbk_144 : cbd ptS144 = 7 := by
  unfold ptS144
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_143 : cbd ptS143 = 215679802221445732277429767532743306852151082665348992408654588999169 := by
  unfold ptS143
  try simp only [callD, cbd, cbk_145]
  try decide_cbv

theorem cbk_142 : cbd ptS142 = 215679802221445732277429767532743306852151082665348992408654588999176 := by
  unfold ptS142
  try simp only [callD, cbd, cbk_143, cbk_144]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
