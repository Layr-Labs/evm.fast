import InitECandidate.Proofs.BackendStages.Padded873
import InitECandidate.Proofs.BackendStages.BytesData873
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes873_eq : (Padded873.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes873 := by
  with_unfolding_all rfl
#print axioms sectionBytes873_eq
end InitECandidate.Proofs.BackendStages
