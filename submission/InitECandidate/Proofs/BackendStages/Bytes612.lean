import InitECandidate.Proofs.BackendStages.Padded612
import InitECandidate.Proofs.BackendStages.BytesData612
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes612_eq : (Padded612.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes612 := by
  with_unfolding_all rfl
#print axioms sectionBytes612_eq
end InitECandidate.Proofs.BackendStages
