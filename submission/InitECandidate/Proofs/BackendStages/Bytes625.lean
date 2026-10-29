import InitECandidate.Proofs.BackendStages.Padded625
import InitECandidate.Proofs.BackendStages.BytesData625
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes625_eq : (Padded625.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes625 := by
  with_unfolding_all rfl
#print axioms sectionBytes625_eq
end InitECandidate.Proofs.BackendStages
