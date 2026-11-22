import InitECandidate.Solver.MemSafe.PtC.Eq7

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

theorem cbk_129 : cbd ptS129 = 288673328260925461099327334929653476949496201484061542148769906163888 := by
  unfold ptS129
  try simp only [callD, cbd, cbk_130, cbk_131]
  try decide_cbv

theorem cbk_128 : cbd ptS128 = 288673328260925461099327334929653476949496201484061542148769906163888 := by
  unfold ptS128
  try simp only [callD, cbd, cbk_129]
  try decide_cbv

theorem cbk_127 : cbd ptS127 = 6277101735386681920455555159187925072843226291902091403238 := by
  unfold ptS127
  try simp only [callD, cbd]
  decide +kernel

theorem cbk_126 : cbd ptS126 = 288673328260925461099327334929653476949496201484061542148769906163888 := by
  unfold ptS126
  try simp only [callD, cbd, cbk_128]
  try decide_cbv

theorem cbk_125 : cbd ptS125 = 6277101735386681920455555159187925072843226291902091403238 := by
  unfold ptS125
  try simp only [callD, cbd]
  decide +kernel

theorem cbk_124 : cbd ptS124 = 288673328267202562834714016850109032108684126556904768440671997567126 := by
  unfold ptS124
  try simp only [callD, cbd, cbk_126, cbk_127]
  try decide_cbv

theorem cbk_123 : cbd ptS123 = 288673328273479664570100698770564587267872051629747994732574088970364 := by
  unfold ptS123
  try simp only [callD, cbd, cbk_124, cbk_125]
  try decide_cbv

theorem cbk_122 : cbd ptS122 = 288673328273479664570100698770564587267872051629747994732574088970382 := by
  unfold ptS122
  try simp only [callD, cbd, cbk_123]
  decide +kernel

theorem cbk_121 : cbd ptS121 = 288673328273479664570100698770564587267872051629747994732574088970383 := by
  unfold ptS121
  try simp only [callD, cbd, cbk_122]
  decide +kernel

theorem cbk_120 : cbd ptS120 = 288673328273479664570100698770564587267872051629747994732574088970401 := by
  unfold ptS120
  try simp only [callD, cbd, cbk_121]
  decide +kernel

theorem cbk_119 : cbd ptS119 = 288673328273479664570100698770564587267872051629747994732574088970401 := by
  unfold ptS119
  try simp only [callD, cbd, cbk_120]
  try decide_cbv

theorem cbk_118 : cbd ptS118 = 288673328273479664570100698770564587267872051629747994732574088970402 := by
  unfold ptS118
  try simp only [callD, cbd, cbk_119]
  decide +kernel

end InitECandidate.Solver.MemSafe.PtC
