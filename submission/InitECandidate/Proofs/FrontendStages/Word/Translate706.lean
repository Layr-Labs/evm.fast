import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data706
import InitECandidate.Proofs.WordStages.Source770
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate690
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate706_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output706 =
    InitECandidate.Proofs.WordStages.source770 := by
  kernel_rfl
#print axioms translate706_eq
end InitECandidate.Proofs.FrontendStages.Word
