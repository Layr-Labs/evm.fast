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

theorem cbk_33 : cbd ptS33 = 16204032641583379049778956912857772608107627002737982459187680437763336081444839287446441 := by
  unfold ptS33
  try simp only [callD, cbd, cbk_34]
  try decide_cbv

theorem cbk_32 : cbd ptS32 = 16204032641583379049778956912864049709843013684658438014346868362836179307736741378849678 := by
  unfold ptS32
  try simp only [callD, cbd, cbk_33]
  try decide_cbv

theorem cbk_31 : cbd ptS31 = 16204032641583379049778956912864049709843013684658438014346868362836179307736741378849678 := by
  unfold ptS31
  try simp only [callD, cbd, cbk_32]
  try decide_cbv

theorem cbk_30 : cbd ptS30 = 16204032641583379049778956912864049709843013684658438014346868362836179307736741378849679 := by
  unfold ptS30
  try simp only [callD, cbd, cbk_31]
  try decide_cbv

theorem cbk_29 : cbd ptS29 = 16204032641583379049778956912864049709843013684658438014346868362836179307736741378849679 := by
  unfold ptS29
  try simp only [callD, cbd, cbk_30]
  try decide_cbv

theorem cbk_28 : cbd ptS28 = 16204032641583379049778956912864049709843013684658438014346868362836179307736741378849679 := by
  unfold ptS28
  try simp only [callD, cbd, cbk_29]
  try decide_cbv

theorem cbk_27 : cbd ptS27 = 16204032641583379049778956912864049709843013684658438014346868362836179307736741378849679 := by
  unfold ptS27
  try simp only [callD, cbd, cbk_28]
  try decide_cbv

theorem cbk_26 : cbd ptS26 = 16204032641583379049778956912864049709843013684658438014346868362836179307736741378849697 := by
  unfold ptS26
  try simp only [callD, cbd, cbk_27]
  try decide_cbv

theorem cbk_25 : cbd ptS25 = 31385508676933403830408265224429301376813834371602864668800 := by
  unfold ptS25
  try simp only [callD, cbd, cbk_222]
  try decide_cbv

theorem cbk_24 : cbd ptS24 = 16204032641583379049778956912864049709843013684658438014346868362836179307736741378849697 := by
  unfold ptS24
  try simp only [callD, cbd, cbk_26]
  try decide_cbv

theorem cbk_23 : cbd ptS23 = 16204032641583379049778956912895435218519947088488846279571297664212993142108344243518497 := by
  unfold ptS23
  try simp only [callD, cbd, cbk_24, cbk_25]
  try decide_cbv

theorem cbk_22 : cbd ptS22 = 16204032641583379049778956912895435218519947088488846279571297664212993142108344243518497 := by
  unfold ptS22
  try simp only [callD, cbd, cbk_23]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
