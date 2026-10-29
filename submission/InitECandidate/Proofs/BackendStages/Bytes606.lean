import InitECandidate.Proofs.BackendStages.Padded606
import InitECandidate.Proofs.BackendStages.BytesData606
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes606_eq : (Padded606.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes606 := by
  with_unfolding_all rfl
#print axioms sectionBytes606_eq
end InitECandidate.Proofs.BackendStages
