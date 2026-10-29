import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data628
import InitECandidate.Proofs.WordStages.Source692
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate612
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate628_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output628 =
    InitECandidate.Proofs.WordStages.source692 := by
  kernel_rfl
#print axioms translate628_eq
end InitECandidate.Proofs.FrontendStages.Word
