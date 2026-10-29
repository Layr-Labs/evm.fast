import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data7
import InitECandidate.Proofs.WordStages.Source71
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate7_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output7 =
    InitECandidate.Proofs.WordStages.source71 := by
  kernel_rfl
#print axioms translate7_eq
end InitECandidate.Proofs.FrontendStages.Word
