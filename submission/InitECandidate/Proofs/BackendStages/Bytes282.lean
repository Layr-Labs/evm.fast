import InitECandidate.Proofs.BackendStages.Padded282
import InitECandidate.Proofs.BackendStages.BytesData282
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes282_eq : (Padded282.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes282 := by
  with_unfolding_all rfl
#print axioms sectionBytes282_eq
end InitECandidate.Proofs.BackendStages
