import InitECandidate.Proofs.BackendStages.Padded764
import InitECandidate.Proofs.BackendStages.BytesData764
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes764_eq : (Padded764.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes764 := by
  with_unfolding_all rfl
#print axioms sectionBytes764_eq
end InitECandidate.Proofs.BackendStages
