import InitECandidate.Proofs.BackendStages.Padded647
import InitECandidate.Proofs.BackendStages.BytesData647
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes647_eq : (Padded647.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes647 := by
  with_unfolding_all rfl
#print axioms sectionBytes647_eq
end InitECandidate.Proofs.BackendStages
