import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data33
import InitECandidate.Proofs.WordStages.Source97
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate17
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate33_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output33 =
    InitECandidate.Proofs.WordStages.source97 := by
  kernel_rfl
#print axioms translate33_eq
end InitECandidate.Proofs.FrontendStages.Word
