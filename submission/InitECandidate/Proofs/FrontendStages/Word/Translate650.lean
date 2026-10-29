import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data650
import InitECandidate.Proofs.WordStages.Source714
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate634
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate650_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output650 =
    InitECandidate.Proofs.WordStages.source714 := by
  kernel_rfl
#print axioms translate650_eq
end InitECandidate.Proofs.FrontendStages.Word
