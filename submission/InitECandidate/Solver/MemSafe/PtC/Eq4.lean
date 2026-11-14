import InitECandidate.Solver.MemSafe.PtC.Eq3

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

theorem cbk_177 : cbd ptS177 = 3251538701502543536065462153080071383792048613435617459643606 := by
  unfold ptS177
  try simp only [callD, cbd, cbk_178]
  try decide_cbv

theorem cbk_176 : cbd ptS176 = 3251538701502543536065462153080071383792048613435617459643606 := by
  unfold ptS176
  try simp only [callD, cbd, cbk_177]
  try decide_cbv

theorem cbk_175 : cbd ptS175 = 2 := by
  unfold ptS175
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_174 : cbd ptS174 = 2 := by
  unfold ptS174
  try simp only [callD, cbd, cbk_175]
  try decide_cbv

theorem cbk_173 : cbd ptS173 = 2 := by
  unfold ptS173
  try simp only [callD, cbd, cbk_174]
  try decide_cbv

theorem cbk_172 : cbd ptS172 = 2 := by
  unfold ptS172
  try simp only [callD, cbd, cbk_173]
  try decide_cbv

theorem cbk_171 : cbd ptS171 = 3251538701502543536065462153080071383792048613435617459643606 := by
  unfold ptS171
  try simp only [callD, cbd, cbk_176]
  try decide_cbv

theorem cbk_170 : cbd ptS170 = 225381617842709782552613357306793331880110461673879287828827553 := by
  unfold ptS170
  try simp only [callD, cbd, tbl_inc, cbk_172]
  try decide_cbv

theorem cbk_169 : cbd ptS169 = 228633156544212326088678819459873403263902510287314905288471159 := by
  unfold ptS169
  try simp only [callD, cbd, cbk_170, cbk_171]
  try decide_cbv

theorem cbk_168 : cbd ptS168 = 228633156544212326088678819459873403263902510287314905288471159 := by
  unfold ptS168
  try simp only [callD, cbd, cbk_169]
  try decide_cbv

theorem cbk_167 : cbd ptS167 = 228633156544212326088678819459873403263902510287314905288471159 := by
  unfold ptS167
  try simp only [callD, cbd, cbk_168]
  try decide_cbv

theorem cbk_166 : cbd ptS166 = 18446744073709551617 := by
  unfold ptS166
  try simp only [callD, cbd, cbk_182]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
