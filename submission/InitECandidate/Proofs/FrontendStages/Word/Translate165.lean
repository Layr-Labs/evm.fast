import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data165
import InitECandidate.Proofs.WordStages.Source229
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate149
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate165_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output165 =
    InitECandidate.Proofs.WordStages.source229 := by
  kernel_rfl
#print axioms translate165_eq
end InitECandidate.Proofs.FrontendStages.Word
