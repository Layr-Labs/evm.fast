import InitECandidate.Proofs.BackendStages.Padded758
import InitECandidate.Proofs.BackendStages.BytesData758
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes758_eq : (Padded758.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes758 := by
  with_unfolding_all rfl
#print axioms sectionBytes758_eq
end InitECandidate.Proofs.BackendStages
