import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data509
import InitECandidate.Proofs.WordStages.Source573
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate493
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate509_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output509 =
    InitECandidate.Proofs.WordStages.source573 := by
  kernel_rfl
#print axioms translate509_eq
end InitECandidate.Proofs.FrontendStages.Word
