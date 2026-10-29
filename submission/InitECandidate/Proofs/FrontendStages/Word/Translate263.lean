import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data263
import InitECandidate.Proofs.WordStages.Source327
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate247
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate263_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output263 =
    InitECandidate.Proofs.WordStages.source327 := by
  kernel_rfl
#print axioms translate263_eq
end InitECandidate.Proofs.FrontendStages.Word
