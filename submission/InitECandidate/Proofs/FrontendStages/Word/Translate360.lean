import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data360
import InitECandidate.Proofs.WordStages.Source424
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate344
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate360_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output360 =
    InitECandidate.Proofs.WordStages.source424 := by
  kernel_rfl
#print axioms translate360_eq
end InitECandidate.Proofs.FrontendStages.Word
