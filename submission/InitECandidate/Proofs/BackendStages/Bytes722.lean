import InitECandidate.Proofs.BackendStages.Padded722
import InitECandidate.Proofs.BackendStages.BytesData722
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes722_eq : (Padded722.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes722 := by
  with_unfolding_all rfl
#print axioms sectionBytes722_eq
end InitECandidate.Proofs.BackendStages
