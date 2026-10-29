import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data196
import InitECandidate.Proofs.WordStages.Source260
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate180
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate196_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output196 =
    InitECandidate.Proofs.WordStages.source260 := by
  kernel_rfl
#print axioms translate196_eq
end InitECandidate.Proofs.FrontendStages.Word
