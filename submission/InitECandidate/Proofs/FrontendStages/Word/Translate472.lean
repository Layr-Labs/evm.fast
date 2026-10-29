import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data472
import InitECandidate.Proofs.WordStages.Source536
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate456
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate472_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output472 =
    InitECandidate.Proofs.WordStages.source536 := by
  kernel_rfl
#print axioms translate472_eq
end InitECandidate.Proofs.FrontendStages.Word
