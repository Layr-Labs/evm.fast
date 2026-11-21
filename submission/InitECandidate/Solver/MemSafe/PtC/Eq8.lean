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

theorem cbk_129 : cbd ptS129 = 86844067203180501598600558552198695873203787350734811119569277957410228535472 := by
  unfold ptS129
  try simp only [callD, cbd, cbk_130, cbk_131]
  try decide_cbv

theorem cbk_128 : cbd ptS128 = 86844067203180501598600558552198695873203787350734811119569277957410228535472 := by
  unfold ptS128
  try simp only [callD, cbd, cbk_129]
  try decide_cbv

theorem cbk_127 : cbd ptS127 = 6277101735386681920455555159187925072843226291902091403238 := by
  unfold ptS127
  try simp only [callD, cbd]
  decide +kernel

theorem cbk_126 : cbd ptS126 = 86844067203180501598600558552198695873203787350734811119569277957410228535472 := by
  unfold ptS126
  try simp only [callD, cbd, cbk_128]
  try decide_cbv

theorem cbk_125 : cbd ptS125 = 6277101735386681920455555159187925072843226291902091403238 := by
  unfold ptS125
  try simp only [callD, cbd]
  decide +kernel

theorem cbk_124 : cbd ptS124 = 86844067203180501604877660287585377793659342509922736192412504249312319938710 := by
  unfold ptS124
  try simp only [callD, cbd, cbk_126, cbk_127]
  try decide_cbv

theorem cbk_123 : cbd ptS123 = 86844067203180501611154762022972059714114897669110661265255730541214411341948 := by
  unfold ptS123
  try simp only [callD, cbd, cbk_124, cbk_125]
  try decide_cbv

theorem cbk_122 : cbd ptS122 = 86844067203180501611154762022972059714114897669110661265255730541214411341966 := by
  unfold ptS122
  try simp only [callD, cbd, cbk_123]
  decide +kernel

theorem cbk_121 : cbd ptS121 = 86844067203180501611154762022972059714114897669110661265255730541214411341967 := by
  unfold ptS121
  try simp only [callD, cbd, cbk_122]
  decide +kernel

theorem cbk_120 : cbd ptS120 = 86844067203180501611154762022972059714114897669110661265255730541214411341985 := by
  unfold ptS120
  try simp only [callD, cbd, cbk_121]
  decide +kernel

theorem cbk_119 : cbd ptS119 = 86844067203180501611154762022972059714114897669110661265255730541214411341985 := by
  unfold ptS119
  try simp only [callD, cbd, cbk_120]
  try decide_cbv

theorem cbk_118 : cbd ptS118 = 86844067203180501611154762022972059714114897669110661265255730541214411341986 := by
  unfold ptS118
  try simp only [callD, cbd, cbk_119]
  decide +kernel

end InitECandidate.Solver.MemSafe.PtC
