import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data159
import InitECandidate.Proofs.WordStages.Source223
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate143
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate159_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output159 =
    InitECandidate.Proofs.WordStages.source223 := by
  kernel_rfl
#print axioms translate159_eq
end InitECandidate.Proofs.FrontendStages.Word
