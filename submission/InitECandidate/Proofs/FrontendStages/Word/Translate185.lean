import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data185
import InitECandidate.Proofs.WordStages.Source249
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate169
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate185_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output185 =
    InitECandidate.Proofs.WordStages.source249 := by
  kernel_rfl
#print axioms translate185_eq
end InitECandidate.Proofs.FrontendStages.Word
