import InitECandidate.Solver.MemSafe.PtC.Eq16

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

theorem cbk_21 : cbd ptS21 = 202636156472511705480625565190679344829295925202247002506829281697673396686106 := by
  unfold ptS21
  try simp only [callD, cbd, cbk_22]
  try decide_cbv

theorem cbk_20 : cbd ptS20 = 202636156472511705480625565190679345964137619455287199495863645613301555112801 := by
  unfold ptS20
  try simp only [callD, cbd, cbk_21]
  decide +kernel

theorem cbk_19 : cbd ptS19 = 202636156472511705480625565190679345964137619455287199495863645613301555112802 := by
  unfold ptS19
  try simp only [callD, cbd, cbk_20]
  decide +kernel

theorem cbk_18 : cbd ptS18 = 202636156472511705480625565190679345964137619455287199495863645613301555112802 := by
  unfold ptS18
  try simp only [callD, cbd, cbk_19]
  try decide_cbv

theorem cbk_17 : cbd ptS17 = 202636156472511705512011073867612750929727861299677636326816978730524496513766 := by
  unfold ptS17
  try simp only [callD, cbd, cbk_18]
  decide +kernel

theorem cbk_16 : cbd ptS16 = 202636156472511705512011073867612750929727861299677636326816978730524496513766 := by
  unfold ptS16
  try simp only [callD, cbd, cbk_17]
  try decide_cbv

theorem cbk_15 : cbd ptS15 = 202636156472511705512011073867612750929727861299677636326816978730524496513766 := by
  unfold ptS15
  try simp only [callD, cbd, cbk_16]
  try decide_cbv

theorem cbk_14 : cbd ptS14 = 202636156472511705512011073867612750929727861299677636326927659194966753823474 := by
  unfold ptS14
  try simp only [callD, cbd, cbk_15]
  decide +kernel

theorem cbk_13 : cbd ptS13 = 225975662473920507694771627315778422922075979890255731413459 := by
  unfold ptS13
  try simp only [callD, cbd]
  decide +kernel

theorem cbk_12 : cbd ptS12 = 202636156472511705512011073867612750929727861299677636326927659194966753823474 := by
  unfold ptS12
  try simp only [callD, cbd, cbk_14]
  try decide_cbv

theorem cbk_11 : cbd ptS11 = 202636156472511705737986736341533258624499488615456059249003639085222485236933 := by
  unfold ptS11
  try simp only [callD, cbd, cbk_12, cbk_13]
  try decide_cbv

theorem cbk_10 : cbd ptS10 = 0 := by
  unfold ptS10
  try simp only [callD, cbd, cbk_225]
  try decide_cbv

end InitECandidate.Solver.MemSafe.PtC
