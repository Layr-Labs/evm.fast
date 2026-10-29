import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data260
import InitECandidate.Proofs.WordStages.Source324
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate244
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate260_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output260 =
    InitECandidate.Proofs.WordStages.source324 := by
  kernel_rfl
#print axioms translate260_eq
end InitECandidate.Proofs.FrontendStages.Word
