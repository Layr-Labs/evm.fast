import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.BackendStages.Chunk608_623

/-! `wsize ≤ wordS` on the post-`word_to_word` programs of the baseline shard
`BackendStages.Chunk608_623.programs` (one kernel-checked Boolean evaluation). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Word.Chunk608_623
open InitECandidate.Proofs.BackendStages

theorem ok : Chunk608_623.programs.all (wordOkB wordS) = true := by kernel_rfl

end InitECandidate.Solver.Concrete.Word.Chunk608_623

#print axioms InitECandidate.Solver.Concrete.Word.Chunk608_623.ok
