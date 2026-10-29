import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data290
import InitECandidate.Proofs.WordStages.Source354
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate274
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate290_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output290 =
    InitECandidate.Proofs.WordStages.source354 := by
  kernel_rfl
#print axioms translate290_eq
end InitECandidate.Proofs.FrontendStages.Word
