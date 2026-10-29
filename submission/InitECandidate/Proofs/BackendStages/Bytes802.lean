import InitECandidate.Proofs.BackendStages.Padded802
import InitECandidate.Proofs.BackendStages.BytesData802
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes802_eq : (Padded802.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes802 := by
  with_unfolding_all rfl
#print axioms sectionBytes802_eq
end InitECandidate.Proofs.BackendStages
