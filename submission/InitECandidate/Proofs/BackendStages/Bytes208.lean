import InitECandidate.Proofs.BackendStages.Padded208
import InitECandidate.Proofs.BackendStages.BytesData208
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes208_eq : (Padded208.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes208 := by
  with_unfolding_all rfl
#print axioms sectionBytes208_eq
end InitECandidate.Proofs.BackendStages
