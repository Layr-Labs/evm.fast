import InitECandidate.Solver.MemSafe.PtC.Eq8

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

theorem cbk_117 : cbd ptS117 = 215679802221445732277429767883914709709777771377945265034653778000443 := by
  unfold ptS117
  try simp only [callD, cbd, cbk_118]
  try decide_cbv

theorem cbk_116 : cbd ptS116 = 215679802221445732277429767883914709709777771377945265034653778000444 := by
  unfold ptS116
  try simp only [callD, cbd, cbk_117]
  try decide_cbv

theorem cbk_115 : cbd ptS115 = 215679802221445732277429767883914709709777771377963711778727487552065 := by
  unfold ptS115
  try simp only [callD, cbd, cbk_116]
  try decide_cbv

theorem cbk_114 : cbd ptS114 = 215679802221445732277429767883914709709777771377963711778727487552065 := by
  unfold ptS114
  try simp only [callD, cbd, cbk_115]
  try decide_cbv

theorem cbk_113 : cbd ptS113 = 216943550098486851714498247446982822872765372111999259571659175989619 := by
  unfold ptS113
  try simp only [callD, cbd, tbl_pmc, bPmc_eq, cbk_114]
  try decide_cbv

theorem cbk_112 : cbd ptS112 = 216943550098486851714498247446982822872765372111999259571659175989619 := by
  unfold ptS112
  try simp only [callD, cbd, cbk_113]
  try decide_cbv

theorem cbk_111 : cbd ptS111 = 216943550098486851714498247446982822872765372111999259571659175989619 := by
  unfold ptS111
  try simp only [callD, cbd, cbk_112]
  try decide_cbv

theorem cbk_110 : cbd ptS110 = 216943550098486851714498247446982822872765372111999259571659175989619 := by
  unfold ptS110
  try simp only [callD, cbd, cbk_111]
  try decide_cbv

theorem cbk_109 : cbd ptS109 = 216943550098486851714498247446982822872765372112036153061799459918770 := by
  unfold ptS109
  try simp only [callD, cbd, cbk_110]
  try decide_cbv

theorem cbk_108 : cbd ptS108 = 216943550098486851714498247446982822872765372112036153061799459918770 := by
  unfold ptS108
  try simp only [callD, cbd, cbk_109]
  try decide_cbv

theorem cbk_107 : cbd ptS107 = 175585701386980874536831522641115080628840 := by
  unfold ptS107
  try simp only [callD, cbd, cbk_186, cbk_187]
  try decide_cbv

theorem cbk_106 : cbd ptS106 = 216943550098486851714498247446982822872765372112036153061799459918770 := by
  unfold ptS106
  try simp only [callD, cbd, cbk_108]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
