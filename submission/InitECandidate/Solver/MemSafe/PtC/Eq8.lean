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

theorem cbk_129 : cbd ptS129 = 25306906050321626783362313701921905286775512980433264745 := by
  (conv_lhs => rw [ptS129, cbd, cbk_131, cbk_130, Nat.zero_add]) <;> decide +kernel

theorem cbk_128 : cbd ptS128 = 25306906050321626783362313701921905286775512980433264745 := by
  (conv_lhs => rw [ptS128, cbd, cbk_129]) <;> decide +kernel

theorem cbk_127 : cbd ptS127 = 1153557224440030065488002918475256911929846 := by
  unfold ptS127
  try simp only [callD, cbd]
  decide +kernel

theorem cbk_126 : cbd ptS126 = 25306906050321626783362313701921905286775512980433264745 := by
  (conv_lhs => rw [ptS126, cbd, cbk_128]) <;> decide +kernel

theorem cbk_125 : cbd ptS125 = 1153557224440030065488002918475256911929846 := by
  unfold ptS125
  try simp only [callD, cbd]
  decide +kernel

theorem cbk_124 : cbd ptS124 = 25306906050322780340586753731987393289693988237345194591 := by
  (conv_lhs => rw [ptS124, cbd, cbk_127, cbk_126]) <;> decide +kernel

theorem cbk_123 : cbd ptS123 = 25306906050323933897811193762052881292612463494257124437 := by
  (conv_lhs => rw [ptS123, cbd, cbk_125, cbk_124]) <;> decide +kernel

theorem cbk_122 : cbd ptS122 = 25306906050323933897811193762052881292612463494257124455 := by
  have callPrice : tbl (nm "fee_mul") = 17 := by decide +kernel
  (conv_lhs => rw [ptS122, cbd, callPrice, cbk_123]) <;> decide +kernel

theorem cbk_121 : cbd ptS121 = 25306906050323933897811193762052881292612463494257124456 := by
  have callPrice : tbl (nm "u256_sub") = 0 := by decide +kernel
  (conv_lhs => rw [ptS121, cbd, callPrice, cbk_122]) <;> decide +kernel

theorem cbk_120 : cbd ptS120 = 25306906050323933897811193762052881292612463494257124474 := by
  have callPrice : tbl (nm "fee_mul") = 17 := by decide +kernel
  (conv_lhs => rw [ptS120, cbd, callPrice, cbk_121]) <;> decide +kernel

theorem cbk_119 : cbd ptS119 = 25306906050323933897811193762052881292612463494257124474 := by
  (conv_lhs => rw [ptS119, cbd, cbk_120]) <;> decide +kernel

theorem cbk_118 : cbd ptS118 = 25306906050323933897811193762052881292612463494257124475 := by
  have callPrice : tbl (nm "max") = 0 := by decide +kernel
  (conv_lhs => rw [ptS118, cbd, callPrice, cbk_119]) <;> decide +kernel

end InitECandidate.Solver.MemSafe.PtC
