import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data285
import InitECandidate.Proofs.WordStages.Source349
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate269
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate285_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output285 =
    InitECandidate.Proofs.WordStages.source349 := by
  kernel_rfl
#print axioms translate285_eq
end InitECandidate.Proofs.FrontendStages.Word
