import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data100
import InitECandidate.Proofs.WordStages.Source164
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate84
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate100_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output100 =
    InitECandidate.Proofs.WordStages.source164 := by
  kernel_rfl
#print axioms translate100_eq
end InitECandidate.Proofs.FrontendStages.Word
