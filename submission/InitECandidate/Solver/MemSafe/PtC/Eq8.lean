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

theorem cbk_129 : cbd ptS129 = 492116379479867314138190034142260165901682243762799684326838261015830385959290 := by
  unfold ptS129
  try simp only [callD, cbd, cbk_130, cbk_131]
  try decide_cbv

theorem cbk_128 : cbd ptS128 = 492116379479867314138190034142260165901682243762799684326838261015830385959290 := by
  unfold ptS128
  try simp only [callD, cbd, cbk_129]
  try decide_cbv

theorem cbk_127 : cbd ptS127 = 6277101735386681920455555159187925072843226291902091403238 := by
  unfold ptS127
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_126 : cbd ptS126 = 492116379479867314138190034142260165901682243762799684326838261015830385959290 := by
  unfold ptS126
  try simp only [callD, cbd, cbk_128]
  try decide_cbv

theorem cbk_125 : cbd ptS125 = 6277101735386681920455555159187925072843226291902091403238 := by
  unfold ptS125
  try simp only [callD, cbd]
  try decide_cbv

theorem cbk_124 : cbd ptS124 = 492116379479867314144467135877646847822137798921987609399681487307732477362528 := by
  unfold ptS124
  try simp only [callD, cbd, cbk_126, cbk_127]
  try decide_cbv

theorem cbk_123 : cbd ptS123 = 492116379479867314150744237613033529742593354081175534472524713599634568765766 := by
  unfold ptS123
  try simp only [callD, cbd, cbk_124, cbk_125]
  try decide_cbv

theorem cbk_122 : cbd ptS122 = 492116379479867314150744237613033529742593354081175534472524713599634568765784 := by
  unfold ptS122
  try simp only [callD, cbd, cbk_123]
  try decide_cbv

theorem cbk_121 : cbd ptS121 = 492116379479867314150744237613033529742593354081175534472524713599634568765785 := by
  unfold ptS121
  try simp only [callD, cbd, cbk_122]
  try decide_cbv

theorem cbk_120 : cbd ptS120 = 492116379479867314150744237613033529742593354081175534472524713599634568765803 := by
  unfold ptS120
  try simp only [callD, cbd, cbk_121]
  try decide_cbv

theorem cbk_119 : cbd ptS119 = 492116379479867314150744237613033529742593354081175534472524713599634568765803 := by
  unfold ptS119
  try simp only [callD, cbd, cbk_120]
  try decide_cbv

theorem cbk_118 : cbd ptS118 = 492116379479867314150744237613033529742593354081175534472524713599634568765804 := by
  unfold ptS118
  try simp only [callD, cbd, cbk_119]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
