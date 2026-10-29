import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data484
import InitECandidate.Proofs.WordStages.Source548
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate468
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate484_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output484 =
    InitECandidate.Proofs.WordStages.source548 := by
  kernel_rfl
#print axioms translate484_eq
end InitECandidate.Proofs.FrontendStages.Word
