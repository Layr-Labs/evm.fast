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

theorem cbk_177 : cbd ptS177 = 792133887961467619215946090710769239946946831974400 := by
  unfold ptS177
  try simp only [callD, cbd, cbk_178]
  try decide_cbv

theorem cbk_176 : cbd ptS176 = 792133887961467619215946090710769239946946831974400 := by
  unfold ptS176
  try simp only [callD, cbd, cbk_177]
  try decide_cbv

theorem cbk_175 : cbd ptS175 = 2 := by
  have callPrice1 : tbl (nm "scratch_release") = 0 := by decide +kernel
  have callPrice2 : tbl (nm "frame_mem_release") = 0 := by decide +kernel
  unfold ptS175
  try simp only [callD, cbd, callPrice1, callPrice2]
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

theorem cbk_171 : cbd ptS171 = 792133887961467619215946090710769239946946831974400 := by
  unfold ptS171
  try simp only [callD, cbd, cbk_176]
  try decide_cbv

theorem cbk_170 : cbd ptS170 = 13159114253257016045473300376595037411620453873893832651009282442 := by
  unfold ptS170
  try simp only [callD, cbd, tbl_inc, cbk_172]
  try decide_cbv

theorem cbk_169 : cbd ptS169 = 13159114253257808179361261844214253357711164643133779597841256842 := by
  conv_lhs => rw [ptS169, cbd, cbk_171, cbk_170]

theorem cbk_168 : cbd ptS168 = 13159114253257808179361261844214253357711164643133779597841256842 := by
  rw [ptS168, cbd, cbk_169]

theorem cbk_167 : cbd ptS167 = 13159114253257808179361261844214253357711164643133779597841256842 := by
  have storeCost : cbd (.store (lv (nm "rl")) (lv (nm "stable_logs"))) = 0 := by decide_cbv
  rw [ptS167, cbd, storeCost, cbk_168, Nat.zero_add]

theorem cbk_166 : cbd ptS166 = 18446744073709551617 := by
  unfold ptS166
  try simp only [callD, cbd, cbk_182]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC

#print axioms InitECandidate.Solver.MemSafe.PtC.cbk_169
#print axioms InitECandidate.Solver.MemSafe.PtC.cbk_168
#print axioms InitECandidate.Solver.MemSafe.PtC.cbk_167
