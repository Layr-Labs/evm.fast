import InitECandidate.Solver.MemSafe.PtC.Eq10

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

theorem cbk_93 : cbd ptS93 = 434220334893224224636913044719935060538500871036377065512616400216652212366460 := by
  unfold ptS93
  try simp only [callD, cbd, cbk_94, cbk_95]
  try decide_cbv

theorem cbk_92 : cbd ptS92 = 434220334893224224636913044719935060538500871036377065512616400216652212366460 := by
  unfold ptS92
  try simp only [callD, cbd, cbk_93]
  try decide_cbv

theorem cbk_91 : cbd ptS91 = 434220334893224224636913044719935060538500871036377065512616400216652212366460 := by
  unfold ptS91
  try simp only [callD, cbd, cbk_92]
  try decide_cbv

theorem cbk_90 : cbd ptS90 = 434220334893224224636913044719935060538841153403298003977057452259990586813667 := by
  have callPrice1 : tbl (nm "htab_set") = 340282366920938464441052043338374447206 := by decide +kernel
  unfold ptS90
  try simp only [callD, cbd, callPrice1, cbk_91]
  try decide_cbv

theorem cbk_89 : cbd ptS89 = 434220334893224224636913044719935060538841153403298003977057452259990586813667 := by
  unfold ptS89
  try simp only [callD, cbd, cbk_90]
  try decide_cbv

theorem cbk_88 : cbd ptS88 = 0 := by
  unfold ptS88
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_87 : cbd ptS87 = 434220334893224224636913044719935060538841153403298003977057452259990586813680 := by
  unfold ptS87
  try simp only [callD, cbd, cbk_89]
  decide +kernel

theorem cbk_86 : cbd ptS86 = 434220334893224224636913044719935060538841153403298003977057452259990586813680 := by
  unfold ptS86
  try simp only [callD, cbd, cbk_87, cbk_88]
  try decide_cbv

theorem cbk_85 : cbd ptS85 = 434220334893224224636913044719935060538841153403298003977057452259990586813680 := by
  unfold ptS85
  try simp only [callD, cbd, cbk_86]
  try decide_cbv

theorem cbk_84 : cbd ptS84 = 434220334893224224636913044719935060538841153403298003977057452259990586813680 := by
  unfold ptS84
  try simp only [callD, cbd, cbk_85]
  try decide_cbv

theorem cbk_83 : cbd ptS83 = 434220334893224224636913044719935060538841153403298003977057452259990586813680 := by
  unfold ptS83
  try simp only [callD, cbd, cbk_84]
  try decide_cbv

theorem cbk_82 : cbd ptS82 = 434220334893224224636913044719935060538841153403298003977057452259990586813680 := by
  unfold ptS82
  try simp only [callD, cbd, cbk_83]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
