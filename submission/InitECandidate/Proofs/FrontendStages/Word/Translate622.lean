import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data622
import InitECandidate.Proofs.WordStages.Source686
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate606
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate622_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output622 =
    InitECandidate.Proofs.WordStages.source686 := by
  kernel_rfl
#print axioms translate622_eq
end InitECandidate.Proofs.FrontendStages.Word
