import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data3
import InitECandidate.Proofs.WordStages.Source67
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate3_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output3 =
    InitECandidate.Proofs.WordStages.source67 := by
  kernel_rfl
#print axioms translate3_eq
end InitECandidate.Proofs.FrontendStages.Word
