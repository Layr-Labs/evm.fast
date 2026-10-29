import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data189
import InitECandidate.Proofs.WordStages.Source253
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate173
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate189_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output189 =
    InitECandidate.Proofs.WordStages.source253 := by
  kernel_rfl
#print axioms translate189_eq
end InitECandidate.Proofs.FrontendStages.Word
