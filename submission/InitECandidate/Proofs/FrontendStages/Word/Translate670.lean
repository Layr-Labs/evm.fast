import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data670
import InitECandidate.Proofs.WordStages.Source734
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate654
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate670_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output670 =
    InitECandidate.Proofs.WordStages.source734 := by
  kernel_rfl
#print axioms translate670_eq
end InitECandidate.Proofs.FrontendStages.Word
