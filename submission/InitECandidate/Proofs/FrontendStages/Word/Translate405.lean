import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data405
import InitECandidate.Proofs.WordStages.Source469
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate389
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate405_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output405 =
    InitECandidate.Proofs.WordStages.source469 := by
  kernel_rfl
#print axioms translate405_eq
end InitECandidate.Proofs.FrontendStages.Word
