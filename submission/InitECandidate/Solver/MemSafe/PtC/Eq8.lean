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

theorem cbk_129 : cbd ptS129 = 53933052516033385319043490967798414887225767746264615120326192386608 := by
  (conv_lhs => rw [ptS129, cbd, cbk_131, cbk_130, Nat.zero_add]) <;> decide +kernel

theorem cbk_128 : cbd ptS128 = 53933052516033385319043490967798414887225767746264615120326192386608 := by
  (conv_lhs => rw [ptS128, cbd, cbk_129]) <;> decide +kernel

theorem cbk_127 : cbd ptS127 = 6277101735386681920455555159187925072843226291902091403238 := by
  unfold ptS127
  try simp only [callD, cbd]
  decide +kernel

theorem cbk_126 : cbd ptS126 = 53933052516033385319043490967798414887225767746264615120326192386608 := by
  (conv_lhs => rw [ptS126, cbd, cbk_128]) <;> decide +kernel

theorem cbk_125 : cbd ptS125 = 6277101735386681920455555159187925072843226291902091403238 := by
  unfold ptS125
  try simp only [callD, cbd]
  decide +kernel

theorem cbk_124 : cbd ptS124 = 53933052522310487054430172888253970046413692819107841412228283789846 := by
  (conv_lhs => rw [ptS124, cbd, cbk_127, cbk_126]) <;> decide +kernel

theorem cbk_123 : cbd ptS123 = 53933052528587588789816854808709525205601617891951067704130375193084 := by
  (conv_lhs => rw [ptS123, cbd, cbk_125, cbk_124]) <;> decide +kernel

theorem cbk_122 : cbd ptS122 = 53933052528587588789816854808709525205601617891951067704130375193102 := by
  have callPrice : tbl (nm "fee_mul") = 17 := by decide +kernel
  (conv_lhs => rw [ptS122, cbd, callPrice, cbk_123]) <;> decide +kernel

theorem cbk_121 : cbd ptS121 = 53933052528587588789816854808709525205601617891951067704130375193103 := by
  have callPrice : tbl (nm "u256_sub") = 0 := by decide +kernel
  (conv_lhs => rw [ptS121, cbd, callPrice, cbk_122]) <;> decide +kernel

theorem cbk_120 : cbd ptS120 = 53933052528587588789816854808709525205601617891951067704130375193121 := by
  have callPrice : tbl (nm "fee_mul") = 17 := by decide +kernel
  (conv_lhs => rw [ptS120, cbd, callPrice, cbk_121]) <;> decide +kernel

theorem cbk_119 : cbd ptS119 = 53933052528587588789816854808709525205601617891951067704130375193121 := by
  (conv_lhs => rw [ptS119, cbd, cbk_120]) <;> decide +kernel

theorem cbk_118 : cbd ptS118 = 53933052528587588789816854808709525205601617891951067704130375193122 := by
  have callPrice : tbl (nm "max") = 0 := by decide +kernel
  (conv_lhs => rw [ptS118, cbd, callPrice, cbk_119]) <;> decide +kernel

end InitECandidate.Solver.MemSafe.PtC
