import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data776
import InitECandidate.Proofs.WordStages.Source840
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate760
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate776_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output776 =
    InitECandidate.Proofs.WordStages.source840 := by
  kernel_rfl
#print axioms translate776_eq
end InitECandidate.Proofs.FrontendStages.Word
