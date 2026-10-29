import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data507
import InitECandidate.Proofs.WordStages.Source571
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate491
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate507_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output507 =
    InitECandidate.Proofs.WordStages.source571 := by
  kernel_rfl
#print axioms translate507_eq
end InitECandidate.Proofs.FrontendStages.Word
