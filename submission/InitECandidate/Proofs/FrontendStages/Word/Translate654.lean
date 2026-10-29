import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data654
import InitECandidate.Proofs.WordStages.Source718
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate638
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate654_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output654 =
    InitECandidate.Proofs.WordStages.source718 := by
  kernel_rfl
#print axioms translate654_eq
end InitECandidate.Proofs.FrontendStages.Word
