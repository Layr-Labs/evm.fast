import InitECandidate.Proofs.BackendStages.Padded242
import InitECandidate.Proofs.BackendStages.BytesData242
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes242_eq : (Padded242.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes242 := by
  with_unfolding_all rfl
#print axioms sectionBytes242_eq
end InitECandidate.Proofs.BackendStages
