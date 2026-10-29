import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data13
import InitECandidate.Proofs.WordStages.Source77
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate13_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output13 =
    InitECandidate.Proofs.WordStages.source77 := by
  kernel_rfl
#print axioms translate13_eq
end InitECandidate.Proofs.FrontendStages.Word
