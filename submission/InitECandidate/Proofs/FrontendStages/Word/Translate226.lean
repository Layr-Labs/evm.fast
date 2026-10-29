import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data226
import InitECandidate.Proofs.WordStages.Source290
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate210
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate226_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output226 =
    InitECandidate.Proofs.WordStages.source290 := by
  kernel_rfl
#print axioms translate226_eq
end InitECandidate.Proofs.FrontendStages.Word
