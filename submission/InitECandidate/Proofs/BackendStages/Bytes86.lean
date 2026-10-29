import InitECandidate.Proofs.BackendStages.Padded86
import InitECandidate.Proofs.BackendStages.BytesData86
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes86_eq : (Padded86.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes86 := by
  with_unfolding_all rfl
#print axioms sectionBytes86_eq
end InitECandidate.Proofs.BackendStages
