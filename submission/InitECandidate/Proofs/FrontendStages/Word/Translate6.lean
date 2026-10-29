import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data6
import InitECandidate.Proofs.WordStages.Source70
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate6_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output6 =
    InitECandidate.Proofs.WordStages.source70 := by
  kernel_rfl
#print axioms translate6_eq
end InitECandidate.Proofs.FrontendStages.Word
