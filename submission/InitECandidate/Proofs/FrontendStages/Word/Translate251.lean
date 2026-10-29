import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data251
import InitECandidate.Proofs.WordStages.Source315
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate235
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate251_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output251 =
    InitECandidate.Proofs.WordStages.source315 := by
  kernel_rfl
#print axioms translate251_eq
end InitECandidate.Proofs.FrontendStages.Word
