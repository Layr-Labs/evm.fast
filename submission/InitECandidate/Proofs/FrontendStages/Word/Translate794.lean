import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data794
import InitECandidate.Proofs.WordStages.Source858
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate778
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate794_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output794 =
    InitECandidate.Proofs.WordStages.source858 := by
  kernel_rfl
#print axioms translate794_eq
end InitECandidate.Proofs.FrontendStages.Word
