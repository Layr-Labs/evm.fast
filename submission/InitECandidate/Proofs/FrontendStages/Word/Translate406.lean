import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data406
import InitECandidate.Proofs.WordStages.Source470
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate390
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate406_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output406 =
    InitECandidate.Proofs.WordStages.source470 := by
  kernel_rfl
#print axioms translate406_eq
end InitECandidate.Proofs.FrontendStages.Word
