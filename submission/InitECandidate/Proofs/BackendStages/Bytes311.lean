import InitECandidate.Proofs.BackendStages.Padded311
import InitECandidate.Proofs.BackendStages.BytesData311
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes311_eq : (Padded311.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes311 := by
  with_unfolding_all rfl
#print axioms sectionBytes311_eq
end InitECandidate.Proofs.BackendStages
