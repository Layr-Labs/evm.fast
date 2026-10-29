import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data381
import InitECandidate.Proofs.WordStages.Source445
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate365
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate381_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output381 =
    InitECandidate.Proofs.WordStages.source445 := by
  kernel_rfl
#print axioms translate381_eq
end InitECandidate.Proofs.FrontendStages.Word
