import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data174
import InitECandidate.Proofs.WordStages.Source238
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate158
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate174_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output174 =
    InitECandidate.Proofs.WordStages.source238 := by
  kernel_rfl
#print axioms translate174_eq
end InitECandidate.Proofs.FrontendStages.Word
