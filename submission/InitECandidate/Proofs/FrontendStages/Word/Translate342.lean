import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data342
import InitECandidate.Proofs.WordStages.Source406
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate326
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate342_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output342 =
    InitECandidate.Proofs.WordStages.source406 := by
  kernel_rfl
#print axioms translate342_eq
end InitECandidate.Proofs.FrontendStages.Word
