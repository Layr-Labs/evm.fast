import InitECandidate.Proofs.BackendStages.Padded663
import InitECandidate.Proofs.BackendStages.BytesData663
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes663_eq : (Padded663.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes663 := by
  with_unfolding_all rfl
#print axioms sectionBytes663_eq
end InitECandidate.Proofs.BackendStages
