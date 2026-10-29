import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data241
import InitECandidate.Proofs.WordStages.Source305
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate225
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate241_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output241 =
    InitECandidate.Proofs.WordStages.source305 := by
  kernel_rfl
#print axioms translate241_eq
end InitECandidate.Proofs.FrontendStages.Word
