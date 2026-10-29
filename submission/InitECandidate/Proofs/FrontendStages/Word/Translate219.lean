import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data219
import InitECandidate.Proofs.WordStages.Source283
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate203
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate219_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output219 =
    InitECandidate.Proofs.WordStages.source283 := by
  kernel_rfl
#print axioms translate219_eq
end InitECandidate.Proofs.FrontendStages.Word
