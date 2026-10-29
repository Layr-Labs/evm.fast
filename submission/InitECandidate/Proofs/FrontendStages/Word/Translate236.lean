import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data236
import InitECandidate.Proofs.WordStages.Source300
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate220
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate236_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output236 =
    InitECandidate.Proofs.WordStages.source300 := by
  kernel_rfl
#print axioms translate236_eq
end InitECandidate.Proofs.FrontendStages.Word
