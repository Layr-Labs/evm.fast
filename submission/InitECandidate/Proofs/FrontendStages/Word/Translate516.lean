import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data516
import InitECandidate.Proofs.WordStages.Source580
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate500
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate516_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output516 =
    InitECandidate.Proofs.WordStages.source580 := by
  kernel_rfl
#print axioms translate516_eq
end InitECandidate.Proofs.FrontendStages.Word
