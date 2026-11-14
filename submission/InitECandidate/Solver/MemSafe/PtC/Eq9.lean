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

theorem cbk_117 : cbd ptS117 = 4081774915355487248180923855747780735293999425138470308910367367104373907615912749911835 := by
  unfold ptS117
  try simp only [callD, cbd, cbk_118]
  try decide_cbv

theorem cbk_116 : cbd ptS116 = 4081774915355487248180923855747780735293999425138470308910367367104373907615912749911836 := by
  unfold ptS116
  try simp only [callD, cbd, cbk_117]
  try decide_cbv

theorem cbk_115 : cbd ptS115 = 4081774915355487248180923855747780735293999425138470308910367367104392354359986459463457 := by
  unfold ptS115
  try simp only [callD, cbd, cbk_116]
  try decide_cbv

theorem cbk_114 : cbd ptS114 = 4081774915355487248180923855747780735293999425138470308910367367104392354359986459463457 := by
  unfold ptS114
  try simp only [callD, cbd, cbk_115]
  try decide_cbv

theorem cbk_113 : cbd ptS113 = 16204032641583379049778956912782447387282986831214136464570584984736393853440739942537926 := by
  unfold ptS113
  try simp only [callD, cbd, tbl_pmc, bPmc_eq, cbk_114]
  try decide_cbv

theorem cbk_112 : cbd ptS112 = 16204032641583379049778956912782447387282986831214136464570584984736393853440739942537926 := by
  unfold ptS112
  try simp only [callD, cbd, cbk_113]
  try decide_cbv

theorem cbk_111 : cbd ptS111 = 16204032641583379049778956912782447387282986831214136464570584984736393853440739942537926 := by
  unfold ptS111
  try simp only [callD, cbd, cbk_112]
  try decide_cbv

theorem cbk_110 : cbd ptS110 = 16204032641583379049778956912782447387282986831214136464570584984736393853440739942537926 := by
  unfold ptS110
  try simp only [callD, cbd, cbk_111]
  try decide_cbv

theorem cbk_109 : cbd ptS109 = 16204032641583379049778956912782447387282986831214476746937505923200834905484078316985133 := by
  unfold ptS109
  try simp only [callD, cbd, cbk_110]
  try decide_cbv

theorem cbk_108 : cbd ptS108 = 16204032641583379049778956912782447387282986831214476746937505923200834905484078316985133 := by
  unfold ptS108
  try simp only [callD, cbd, cbk_109]
  try decide_cbv

theorem cbk_107 : cbd ptS107 = 1135522258986882073916698982893440076914320 := by
  unfold ptS107
  try simp only [callD, cbd, cbk_186, cbk_187]
  try decide_cbv

theorem cbk_106 : cbd ptS106 = 16204032641583379049778956912782447387282986831214476746937505923200834905484078316985133 := by
  unfold ptS106
  try simp only [callD, cbd, cbk_108]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
