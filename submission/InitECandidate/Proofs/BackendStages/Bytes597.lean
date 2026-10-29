import InitECandidate.Proofs.BackendStages.Padded597
import InitECandidate.Proofs.BackendStages.BytesData597
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes597_eq : (Padded597.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes597 := by
  with_unfolding_all rfl
#print axioms sectionBytes597_eq
end InitECandidate.Proofs.BackendStages
