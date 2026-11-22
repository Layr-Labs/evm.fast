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

theorem cbk_117 : cbd ptS117 = 288673328273479664570100698770564587267872051629747994732574088970402 := by
  unfold ptS117
  try simp only [callD, cbd, cbk_118]
  try decide_cbv

theorem cbk_116 : cbd ptS116 = 288673328273479664570100698770564587267872051629747994732574088970403 := by
  unfold ptS116
  try simp only [callD, cbd, cbk_117]
  decide +kernel

theorem cbk_115 : cbd ptS115 = 288673328273479664570100698770564587267872051629766441476647798522024 := by
  unfold ptS115
  try simp only [callD, cbd, cbk_116]
  decide +kernel

theorem cbk_114 : cbd ptS114 = 288673328273479664570100698770564587267872051629766441476647798522024 := by
  unfold ptS114
  try simp only [callD, cbd, cbk_115]
  try decide_cbv

theorem cbk_113 : cbd ptS113 = 320714611813557949008739618282206819953163947467141382826359337724863 := by
  unfold ptS113
  try simp only [callD, cbd, tbl_pmc, bPmc_eq, cbk_114]
  try decide_cbv

theorem cbk_112 : cbd ptS112 = 320714611813557949008739618282206819953163947467141382826359337724863 := by
  unfold ptS112
  try simp only [callD, cbd, cbk_113]
  try decide_cbv

theorem cbk_111 : cbd ptS111 = 320714611813557949008739618282206819953163947467141382826359337724863 := by
  unfold ptS111
  try simp only [callD, cbd, cbk_112]
  try decide_cbv

theorem cbk_110 : cbd ptS110 = 320714611813557949008739618282206819953163947467141382826359337724863 := by
  unfold ptS110
  try simp only [callD, cbd, cbk_111]
  try decide_cbv

theorem cbk_109 : cbd ptS109 = 320714611813557949008739618282547102320084885931582434869697712172070 := by
  have callPrice1 : tbl (nm "htab_set") = 340282366920938464441052043338374447206 := by decide +kernel
  unfold ptS109
  try simp only [callD, cbd, callPrice1, cbk_110]
  try decide_cbv

theorem cbk_108 : cbd ptS108 = 320714611813557949008739618282547102320084885931582434869697712172070 := by
  unfold ptS108
  try simp only [callD, cbd, cbk_109]
  try decide_cbv

theorem cbk_107 : cbd ptS107 = 1135522258986882073916698982893440076914320 := by
  unfold ptS107
  try simp only [callD, cbd, cbk_186, cbk_187]
  try decide_cbv

theorem cbk_106 : cbd ptS106 = 320714611813557949008739618282547102320084885931582434869697712172070 := by
  unfold ptS106
  try simp only [callD, cbd, cbk_108]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
