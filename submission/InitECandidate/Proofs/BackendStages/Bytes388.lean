import InitECandidate.Proofs.BackendStages.Padded388
import InitECandidate.Proofs.BackendStages.BytesData388
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes388_eq : (Padded388.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes388 := by
  with_unfolding_all rfl
#print axioms sectionBytes388_eq
end InitECandidate.Proofs.BackendStages
