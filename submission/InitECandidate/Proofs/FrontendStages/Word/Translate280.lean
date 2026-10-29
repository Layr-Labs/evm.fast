import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data280
import InitECandidate.Proofs.WordStages.Source344
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate264
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate280_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output280 =
    InitECandidate.Proofs.WordStages.source344 := by
  kernel_rfl
#print axioms translate280_eq
end InitECandidate.Proofs.FrontendStages.Word
