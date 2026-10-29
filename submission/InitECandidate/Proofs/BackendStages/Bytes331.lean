import InitECandidate.Proofs.BackendStages.Padded331
import InitECandidate.Proofs.BackendStages.BytesData331
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes331_eq : (Padded331.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes331 := by
  with_unfolding_all rfl
#print axioms sectionBytes331_eq
end InitECandidate.Proofs.BackendStages
