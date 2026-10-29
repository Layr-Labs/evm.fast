import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data95
import InitECandidate.Proofs.WordStages.Source159
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate79
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate95_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output95 =
    InitECandidate.Proofs.WordStages.source159 := by
  kernel_rfl
#print axioms translate95_eq
end InitECandidate.Proofs.FrontendStages.Word
