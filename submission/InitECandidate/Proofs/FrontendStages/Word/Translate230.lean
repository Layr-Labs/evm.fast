import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data230
import InitECandidate.Proofs.WordStages.Source294
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate214
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate230_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output230 =
    InitECandidate.Proofs.WordStages.source294 := by
  kernel_rfl
#print axioms translate230_eq
end InitECandidate.Proofs.FrontendStages.Word
