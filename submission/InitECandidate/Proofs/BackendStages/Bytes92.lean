import InitECandidate.Proofs.BackendStages.Padded92
import InitECandidate.Proofs.BackendStages.BytesData92
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes92_eq : (Padded92.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes92 := by
  with_unfolding_all rfl
#print axioms sectionBytes92_eq
end InitECandidate.Proofs.BackendStages
