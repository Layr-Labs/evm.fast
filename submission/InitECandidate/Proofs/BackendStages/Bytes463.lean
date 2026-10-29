import InitECandidate.Proofs.BackendStages.Padded463
import InitECandidate.Proofs.BackendStages.BytesData463
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes463_eq : (Padded463.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes463 := by
  with_unfolding_all rfl
#print axioms sectionBytes463_eq
end InitECandidate.Proofs.BackendStages
