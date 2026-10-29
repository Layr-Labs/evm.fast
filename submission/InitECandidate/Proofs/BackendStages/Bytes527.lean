import InitECandidate.Proofs.BackendStages.Padded527
import InitECandidate.Proofs.BackendStages.BytesData527
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes527_eq : (Padded527.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes527 := by
  with_unfolding_all rfl
#print axioms sectionBytes527_eq
end InitECandidate.Proofs.BackendStages
