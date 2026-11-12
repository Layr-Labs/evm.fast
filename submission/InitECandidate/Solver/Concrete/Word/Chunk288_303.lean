import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.BackendStages.Chunk288_303

/-! `wsize ≤ wordS` on the post-`word_to_word` programs of the baseline shard
`BackendStages.Chunk288_303.programs` (one kernel-checked Boolean evaluation). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Word.Chunk288_303
open InitECandidate.Proofs.BackendStages

theorem ok : Chunk288_303.programs.all (wordOkB wordS) = true := by kernel_rfl

end InitECandidate.Solver.Concrete.Word.Chunk288_303

#print axioms InitECandidate.Solver.Concrete.Word.Chunk288_303.ok
