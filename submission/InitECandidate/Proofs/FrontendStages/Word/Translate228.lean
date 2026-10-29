import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data228
import InitECandidate.Proofs.WordStages.Source292
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate212
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate228_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output228 =
    InitECandidate.Proofs.WordStages.source292 := by
  kernel_rfl
#print axioms translate228_eq
end InitECandidate.Proofs.FrontendStages.Word
