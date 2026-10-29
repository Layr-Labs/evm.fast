import InitECandidate.Proofs.BackendStages.Padded157
import InitECandidate.Proofs.BackendStages.BytesData157
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes157_eq : (Padded157.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes157 := by
  with_unfolding_all rfl
#print axioms sectionBytes157_eq
end InitECandidate.Proofs.BackendStages
