import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data184
import InitECandidate.Proofs.WordStages.Source248
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate168
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate184_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output184 =
    InitECandidate.Proofs.WordStages.source248 := by
  kernel_rfl
#print axioms translate184_eq
end InitECandidate.Proofs.FrontendStages.Word
