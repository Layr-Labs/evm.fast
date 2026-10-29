import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data724
import InitECandidate.Proofs.WordStages.Source788
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate708
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate724_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output724 =
    InitECandidate.Proofs.WordStages.source788 := by
  kernel_rfl
#print axioms translate724_eq
end InitECandidate.Proofs.FrontendStages.Word
