import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data625
import InitECandidate.Proofs.WordStages.Source689
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate609
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate625_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output625 =
    InitECandidate.Proofs.WordStages.source689 := by
  kernel_rfl
#print axioms translate625_eq
end InitECandidate.Proofs.FrontendStages.Word
