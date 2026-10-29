import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data137
import InitECandidate.Proofs.WordStages.Source201
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate121
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate137_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output137 =
    InitECandidate.Proofs.WordStages.source201 := by
  kernel_rfl
#print axioms translate137_eq
end InitECandidate.Proofs.FrontendStages.Word
