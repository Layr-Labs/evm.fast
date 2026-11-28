import InitECandidate.Solver.MemSafe.PtC.Eq6

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

theorem cbk_141 : cbd ptS141 = 25306906050321626783362313701921905286775512980433264744 := by
  rw [ptS141, cbd, cbk_142]

theorem cbk_140 : cbd ptS140 = 0 := by
  unfold ptS140
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_139 : cbd ptS139 = 25306906050321626783362313701921905286775512980433264744 := by
  have skipCost : cbd .skip = 0 := by decide_cbv
  rw [ptS139, cbd, skipCost, cbk_141, Nat.zero_add]

theorem cbk_138 : cbd ptS138 = 0 := by
  unfold ptS138
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_137 : cbd ptS137 = 25306906050321626783362313701921905286775512980433264744 := by
  rw [ptS137, cbd, cbk_140, cbk_139, Nat.zero_add]

theorem cbk_136 : cbd ptS136 = 0 := by
  unfold ptS136
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_135 : cbd ptS135 = 25306906050321626783362313701921905286775512980433264744 := by
  rw [ptS135, cbd, cbk_138, cbk_137, Nat.zero_add]

theorem cbk_134 : cbd ptS134 = 0 := by
  unfold ptS134
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_133 : cbd ptS133 = 25306906050321626783362313701921905286775512980433264744 := by
  rw [ptS133, cbd, cbk_136, cbk_135, Nat.zero_add]

theorem cbk_132 : cbd ptS132 = 25306906050321626783362313701921905286775512980433264744 := by
  rw [ptS132, cbd, cbk_134, cbk_133, Nat.zero_add]

theorem cbk_131 : cbd ptS131 = 0 := by
  unfold ptS131
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_130 : cbd ptS130 = 25306906050321626783362313701921905286775512980433264745 := by
  have maxPrice : tbl (nm "max") = 0 := by decide +kernel
  conv_lhs => rw [ptS130, cbd, maxPrice, cbk_132]

end InitECandidate.Solver.MemSafe.PtC

#print axioms InitECandidate.Solver.MemSafe.PtC.cbk_130
