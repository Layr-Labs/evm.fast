import InitECandidate.Proofs.BackendStages.Padded381
import InitECandidate.Proofs.BackendStages.BytesData381
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes381_eq : (Padded381.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes381 := by
  with_unfolding_all rfl
#print axioms sectionBytes381_eq
end InitECandidate.Proofs.BackendStages
