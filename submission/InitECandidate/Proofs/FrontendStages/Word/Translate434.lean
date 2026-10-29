import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data434
import InitECandidate.Proofs.WordStages.Source498
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate418
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate434_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output434 =
    InitECandidate.Proofs.WordStages.source498 := by
  kernel_rfl
#print axioms translate434_eq
end InitECandidate.Proofs.FrontendStages.Word
