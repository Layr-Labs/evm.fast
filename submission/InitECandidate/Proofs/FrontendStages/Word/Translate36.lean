import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data36
import InitECandidate.Proofs.WordStages.Source100
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate20
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate36_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output36 =
    InitECandidate.Proofs.WordStages.source100 := by
  kernel_rfl
#print axioms translate36_eq
end InitECandidate.Proofs.FrontendStages.Word
