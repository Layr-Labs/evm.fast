import InitECandidate.Solver.MemSafe.PtC.Eq14

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

theorem cbk_45 : cbd ptS45 = 216943550098486851808034352439309182866438723840622809332853142108278 := by
  unfold ptS45
  try simp only [callD, cbd, cbk_46]
  try decide_cbv

theorem cbk_44 : cbd ptS44 = 216943550098486851808034352439309182866438723840622809332853142108278 := by
  unfold ptS44
  try simp only [callD, cbd, cbk_45]
  try decide_cbv

theorem cbk_43 : cbd ptS43 = 0 := by
  unfold ptS43
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_42 : cbd ptS42 = 216943550098486851808034352439309182866438723840622809332853142108278 := by
  unfold ptS42
  try simp only [callD, cbd, cbk_44]
  try decide_cbv

theorem cbk_41 : cbd ptS41 = 216943550098486851808034352439309182866438723840622809332853142108278 := by
  unfold ptS41
  try simp only [callD, cbd, cbk_42, cbk_43]
  try decide_cbv

theorem cbk_40 : cbd ptS40 = 216943550098486851808034352439309182866438723840622809332853142108278 := by
  unfold ptS40
  try simp only [callD, cbd, cbk_41]
  try decide_cbv

theorem cbk_39 : cbd ptS39 = 216943550098486851808034352439309182866438723840622809332853142108278 := by
  unfold ptS39
  try simp only [callD, cbd, cbk_40]
  try decide_cbv

theorem cbk_38 : cbd ptS38 = 216943550098486851808034352439309182866438723840696596309147980314751 := by
  unfold ptS38
  try simp only [callD, cbd, cbk_39]
  try decide_cbv

theorem cbk_37 : cbd ptS37 = 216943550098486851808034352439309182866438723840696596309147980314751 := by
  unfold ptS37
  try simp only [callD, cbd, cbk_38]
  try decide_cbv

theorem cbk_36 : cbd ptS36 = 216943550104763953543421034359764738025626648913539822601050071717988 := by
  unfold ptS36
  try simp only [callD, cbd, cbk_37]
  try decide_cbv

theorem cbk_35 : cbd ptS35 = 216943550104763953543421034359764738025626648913539822601050071717989 := by
  unfold ptS35
  try simp only [callD, cbd, cbk_36]
  try decide_cbv

theorem cbk_34 : cbd ptS34 = 216943550104763953543421034359764738025626648913539822601050071717990 := by
  unfold ptS34
  try simp only [callD, cbd, cbk_35]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
