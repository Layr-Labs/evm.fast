import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.BackendStages.Chunk320_335

/-! `wsize ≤ wordS` on the post-`word_to_word` programs of the baseline shard
`BackendStages.Chunk320_335.programs` (one kernel-checked Boolean evaluation). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Word.Chunk320_335
open InitECandidate.Proofs.BackendStages

theorem ok : Chunk320_335.programs.all (wordOkB wordS) = true := by kernel_rfl

end InitECandidate.Solver.Concrete.Word.Chunk320_335

#print axioms InitECandidate.Solver.Concrete.Word.Chunk320_335.ok
