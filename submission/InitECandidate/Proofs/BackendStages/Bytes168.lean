import InitECandidate.Proofs.BackendStages.Padded168
import InitECandidate.Proofs.BackendStages.BytesData168
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes168_eq : (Padded168.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes168 := by
  with_unfolding_all rfl
#print axioms sectionBytes168_eq
end InitECandidate.Proofs.BackendStages
