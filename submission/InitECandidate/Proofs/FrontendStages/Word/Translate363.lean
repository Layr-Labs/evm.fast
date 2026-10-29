import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data363
import InitECandidate.Proofs.WordStages.Source427
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate347
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate363_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output363 =
    InitECandidate.Proofs.WordStages.source427 := by
  kernel_rfl
#print axioms translate363_eq
end InitECandidate.Proofs.FrontendStages.Word
