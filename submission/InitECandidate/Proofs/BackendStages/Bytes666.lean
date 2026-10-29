import InitECandidate.Proofs.BackendStages.Padded666
import InitECandidate.Proofs.BackendStages.BytesData666
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes666_eq : (Padded666.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes666 := by
  with_unfolding_all rfl
#print axioms sectionBytes666_eq
end InitECandidate.Proofs.BackendStages
