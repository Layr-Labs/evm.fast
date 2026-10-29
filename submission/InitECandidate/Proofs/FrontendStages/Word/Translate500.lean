import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data500
import InitECandidate.Proofs.WordStages.Source564
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate484
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate500_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output500 =
    InitECandidate.Proofs.WordStages.source564 := by
  kernel_rfl
#print axioms translate500_eq
end InitECandidate.Proofs.FrontendStages.Word
