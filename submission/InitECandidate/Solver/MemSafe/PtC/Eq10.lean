import InitECandidate.Solver.MemSafe.PtC.Eq9

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

theorem cbk_105 : cbd ptS105 = 85974336068665873228455775456214299244696526110484490734694075309110 := by
  (conv_lhs => rw [ptS105, cbd, cbk_107, cbk_106]) <;> decide +kernel

theorem cbk_104 : cbd ptS104 = 85974336068665873228455775456214299244696526110484490734694075309113 := by
  have callPrice : tbl (nm "alloc") = 2 := by decide +kernel
  (conv_lhs => rw [ptS104, cbd, callPrice, cbk_105]) <;> decide +kernel

theorem cbk_103 : cbd ptS103 = 6277101735386680782211037236938343446020723065351917535336 := by
  unfold ptS103
  try simp only [callD, cbd, cbk_200]
  try decide_cbv

theorem cbk_102 : cbd ptS102 = 85974336068665873228455775456214299244696526110484490734694075309113 := by
  have leftCost : cbd .skip = 0 := by decide_cbv
  (conv_lhs => rw [ptS102, cbd, leftCost, cbk_104, Nat.zero_add]) <;> decide +kernel

theorem cbk_101 : cbd ptS101 = 85974336074942974963842456238425336481634869556505213800045992844449 := by
  (conv_lhs => rw [ptS101, cbd, cbk_103, cbk_102]) <;> decide +kernel

theorem cbk_100 : cbd ptS100 = 85974336074942974963842456238425336481634869556505213800045992844449 := by
  have leftCost : cbd (.assign .local (nm "i") (cw 0)) = 0 := by decide_cbv
  (conv_lhs => rw [ptS100, cbd, leftCost, cbk_101, Nat.zero_add]) <;> decide +kernel

theorem cbk_99 : cbd ptS99 = 85974336074942974963842456238425336481634869556505213800045992844462 := by
  have callPrice : tbl (nm "htab_new") = 12 := by decide +kernel
  (conv_lhs => rw [ptS99, cbd, callPrice, cbk_100]) <;> decide +kernel

theorem cbk_98 : cbd ptS98 = 6277101735386680782211037236938343446020723065351917535336 := by
  unfold ptS98
  try simp only [callD, cbd, cbk_202]
  try decide_cbv

theorem cbk_97 : cbd ptS97 = 85974336074942974963842456238425336481634869556505213800045992844462 := by
  have leftCost : cbd .skip = 0 := by decide_cbv
  (conv_lhs => rw [ptS97, cbd, leftCost, cbk_99, Nat.zero_add]) <;> decide +kernel

theorem cbk_96 : cbd ptS96 = 85974336081220076699229137020636373718573213002525936865397910379798 := by
  (conv_lhs => rw [ptS96, cbd, cbk_98, cbk_97]) <;> decide +kernel

theorem cbk_95 : cbd ptS95 = 6277101735386680782211037236938343446020723065351917535336 := by
  unfold ptS95
  try simp only [callD, cbd, cbk_204]
  try decide_cbv

theorem cbk_94 : cbd ptS94 = 85974336081220076699229137020636373718573213002525936865397910379798 := by
  have leftCost : cbd (.assign .local (nm "i") (cw 0)) = 0 := by decide_cbv
  (conv_lhs => rw [ptS94, cbd, leftCost, cbk_96, Nat.zero_add]) <;> decide +kernel

end InitECandidate.Solver.MemSafe.PtC
