import InitECandidate.Solver.MemSafe.PtC.Eq15

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

theorem cbk_33 : cbd ptS33 = 3301755532102292557468933552479407427923826267060674382696903 := by
  unfold ptS33
  try simp only [callD, cbd, cbk_34]
  try decide_cbv

theorem cbk_32 : cbd ptS32 = 3301755532102292557643838689175012720653237981884432185275660 := by
  unfold ptS32
  try simp only [callD, cbd, cbk_33]
  try decide_cbv

theorem cbk_31 : cbd ptS31 = 3301755532102292557643838689175012720653237981884432185275660 := by
  unfold ptS31
  try simp only [callD, cbd, cbk_32]
  try decide_cbv

theorem cbk_30 : cbd ptS30 = 3301755532102292557643838689175012720653237981884432185275661 := by
  unfold ptS30
  try simp only [callD, cbd, cbk_31]
  try decide_cbv

theorem cbk_29 : cbd ptS29 = 3301755532102292557643838689175012720653237981884432185275661 := by
  unfold ptS29
  try simp only [callD, cbd, cbk_30]
  try decide_cbv

theorem cbk_28 : cbd ptS28 = 3301755532102292557643838689175012720653237981884432185275661 := by
  unfold ptS28
  try simp only [callD, cbd, cbk_29]
  try decide_cbv

theorem cbk_27 : cbd ptS27 = 3301755532102292557643838689175012720653237981884432185275661 := by
  unfold ptS27
  try simp only [callD, cbd, cbk_28]
  try decide_cbv

theorem cbk_26 : cbd ptS26 = 3301755532102292557643838689175012720653237981884432185275679 := by
  unfold ptS26
  try simp only [callD, cbd, cbk_27]
  try decide_cbv

theorem cbk_25 : cbd ptS25 = 1845354972104797038729527740129256583201044 := by
  unfold ptS25
  try simp only [callD, cbd, cbk_222]
  try decide_cbv

theorem cbk_24 : cbd ptS24 = 3301755532102292557643838689175012720653237981884432185275679 := by
  unfold ptS24
  try simp only [callD, cbd, cbk_26]
  try decide_cbv

theorem cbk_23 : cbd ptS23 = 3301755532102292559489193661279809759382765722013688768476723 := by
  unfold ptS23
  try simp only [callD, cbd, cbk_24, cbk_25]
  try decide_cbv

theorem cbk_22 : cbd ptS22 = 3301755532102292559489193661279809759382765722013688768476723 := by
  unfold ptS22
  try simp only [callD, cbd, cbk_23]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
