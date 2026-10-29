import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data414
import InitECandidate.Proofs.WordStages.Source478
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate398
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate414_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output414 =
    InitECandidate.Proofs.WordStages.source478 := by
  kernel_rfl
#print axioms translate414_eq
end InitECandidate.Proofs.FrontendStages.Word
