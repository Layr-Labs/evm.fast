import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data708
import InitECandidate.Proofs.WordStages.Source772
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate692
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate708_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output708 =
    InitECandidate.Proofs.WordStages.source772 := by
  kernel_rfl
#print axioms translate708_eq
end InitECandidate.Proofs.FrontendStages.Word
