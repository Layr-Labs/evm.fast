import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data716
import InitECandidate.Proofs.WordStages.Source780
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate700
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate716_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output716 =
    InitECandidate.Proofs.WordStages.source780 := by
  kernel_rfl
#print axioms translate716_eq
end InitECandidate.Proofs.FrontendStages.Word
