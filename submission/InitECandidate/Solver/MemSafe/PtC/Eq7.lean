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

theorem cbk_141 : cbd ptS141 = 4081774915355487248180923855735226531823226061297559198591991516958687455032108567105320 := by
  unfold ptS141
  try simp only [callD, cbd, cbk_142]
  try decide_cbv

theorem cbk_140 : cbd ptS140 = 0 := by
  unfold ptS140
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_139 : cbd ptS139 = 4081774915355487248180923855735226531823226061297559198591991516958687455032108567105320 := by
  unfold ptS139
  try simp only [callD, cbd, cbk_141]
  try decide_cbv

theorem cbk_138 : cbd ptS138 = 0 := by
  unfold ptS138
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_137 : cbd ptS137 = 4081774915355487248180923855735226531823226061297559198591991516958687455032108567105320 := by
  unfold ptS137
  try simp only [callD, cbd, cbk_139, cbk_140]
  try decide_cbv

theorem cbk_136 : cbd ptS136 = 0 := by
  unfold ptS136
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_135 : cbd ptS135 = 4081774915355487248180923855735226531823226061297559198591991516958687455032108567105320 := by
  unfold ptS135
  try simp only [callD, cbd, cbk_137, cbk_138]
  try decide_cbv

theorem cbk_134 : cbd ptS134 = 0 := by
  unfold ptS134
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_133 : cbd ptS133 = 4081774915355487248180923855735226531823226061297559198591991516958687455032108567105320 := by
  unfold ptS133
  try simp only [callD, cbd, cbk_135, cbk_136]
  try decide_cbv

theorem cbk_132 : cbd ptS132 = 4081774915355487248180923855735226531823226061297559198591991516958687455032108567105320 := by
  unfold ptS132
  try simp only [callD, cbd, cbk_133, cbk_134]
  try decide_cbv

theorem cbk_131 : cbd ptS131 = 0 := by
  unfold ptS131
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_130 : cbd ptS130 = 4081774915355487248180923855735226531823226061297559198591991516958687455032108567105321 := by
  unfold ptS130
  try simp only [callD, cbd, cbk_132]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
