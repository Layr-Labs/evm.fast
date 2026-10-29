import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data164
import InitECandidate.Proofs.WordStages.Source228
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate148
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate164_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output164 =
    InitECandidate.Proofs.WordStages.source228 := by
  kernel_rfl
#print axioms translate164_eq
end InitECandidate.Proofs.FrontendStages.Word
