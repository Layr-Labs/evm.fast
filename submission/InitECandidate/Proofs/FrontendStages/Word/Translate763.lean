import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data763
import InitECandidate.Proofs.WordStages.Source827
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate747
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate763_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output763 =
    InitECandidate.Proofs.WordStages.source827 := by
  kernel_rfl
#print axioms translate763_eq
end InitECandidate.Proofs.FrontendStages.Word
