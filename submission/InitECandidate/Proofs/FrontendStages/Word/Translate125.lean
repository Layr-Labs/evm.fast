import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data125
import InitECandidate.Proofs.WordStages.Source189
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate109
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate125_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output125 =
    InitECandidate.Proofs.WordStages.source189 := by
  kernel_rfl
#print axioms translate125_eq
end InitECandidate.Proofs.FrontendStages.Word
