import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data151
import InitECandidate.Proofs.WordStages.Source215
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate135
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate151_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output151 =
    InitECandidate.Proofs.WordStages.source215 := by
  kernel_rfl
#print axioms translate151_eq
end InitECandidate.Proofs.FrontendStages.Word
