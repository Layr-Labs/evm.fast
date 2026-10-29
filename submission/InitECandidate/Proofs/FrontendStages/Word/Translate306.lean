import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data306
import InitECandidate.Proofs.WordStages.Source370
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate290
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate306_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output306 =
    InitECandidate.Proofs.WordStages.source370 := by
  kernel_rfl
#print axioms translate306_eq
end InitECandidate.Proofs.FrontendStages.Word
