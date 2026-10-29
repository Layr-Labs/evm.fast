import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data668
import InitECandidate.Proofs.WordStages.Source732
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate652
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate668_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output668 =
    InitECandidate.Proofs.WordStages.source732 := by
  kernel_rfl
#print axioms translate668_eq
end InitECandidate.Proofs.FrontendStages.Word
