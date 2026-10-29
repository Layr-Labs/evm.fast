import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data40
import InitECandidate.Proofs.WordStages.Source104
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate24
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate40_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output40 =
    InitECandidate.Proofs.WordStages.source104 := by
  kernel_rfl
#print axioms translate40_eq
end InitECandidate.Proofs.FrontendStages.Word
