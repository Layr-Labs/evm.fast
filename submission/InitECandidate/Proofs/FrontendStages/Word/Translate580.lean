import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data580
import InitECandidate.Proofs.WordStages.Source644
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate564
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate580_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output580 =
    InitECandidate.Proofs.WordStages.source644 := by
  kernel_rfl
#print axioms translate580_eq
end InitECandidate.Proofs.FrontendStages.Word
