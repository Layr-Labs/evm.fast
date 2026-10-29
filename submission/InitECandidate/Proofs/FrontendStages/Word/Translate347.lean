import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data347
import InitECandidate.Proofs.WordStages.Source411
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate331
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate347_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output347 =
    InitECandidate.Proofs.WordStages.source411 := by
  kernel_rfl
#print axioms translate347_eq
end InitECandidate.Proofs.FrontendStages.Word
