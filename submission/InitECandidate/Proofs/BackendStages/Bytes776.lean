import InitECandidate.Proofs.BackendStages.Padded776
import InitECandidate.Proofs.BackendStages.BytesData776
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes776_eq : (Padded776.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes776 := by
  with_unfolding_all rfl
#print axioms sectionBytes776_eq
end InitECandidate.Proofs.BackendStages
