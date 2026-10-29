import InitECandidate.Proofs.BackendStages.Padded584
import InitECandidate.Proofs.BackendStages.BytesData584
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes584_eq : (Padded584.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes584 := by
  with_unfolding_all rfl
#print axioms sectionBytes584_eq
end InitECandidate.Proofs.BackendStages
