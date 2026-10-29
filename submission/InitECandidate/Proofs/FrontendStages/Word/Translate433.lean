import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data433
import InitECandidate.Proofs.WordStages.Source497
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate417
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate433_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output433 =
    InitECandidate.Proofs.WordStages.source497 := by
  kernel_rfl
#print axioms translate433_eq
end InitECandidate.Proofs.FrontendStages.Word
