import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data175
import InitECandidate.Proofs.WordStages.Source239
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate159
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate175_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output175 =
    InitECandidate.Proofs.WordStages.source239 := by
  kernel_rfl
#print axioms translate175_eq
end InitECandidate.Proofs.FrontendStages.Word
