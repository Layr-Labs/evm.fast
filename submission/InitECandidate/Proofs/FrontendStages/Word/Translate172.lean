import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data172
import InitECandidate.Proofs.WordStages.Source236
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate156
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate172_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output172 =
    InitECandidate.Proofs.WordStages.source236 := by
  kernel_rfl
#print axioms translate172_eq
end InitECandidate.Proofs.FrontendStages.Word
