import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data732
import InitECandidate.Proofs.WordStages.Source796
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate716
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate732_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output732 =
    InitECandidate.Proofs.WordStages.source796 := by
  kernel_rfl
#print axioms translate732_eq
end InitECandidate.Proofs.FrontendStages.Word
