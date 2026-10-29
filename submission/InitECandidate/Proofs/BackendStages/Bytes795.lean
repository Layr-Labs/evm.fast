import InitECandidate.Proofs.BackendStages.Padded795
import InitECandidate.Proofs.BackendStages.BytesData795
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes795_eq : (Padded795.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes795 := by
  with_unfolding_all rfl
#print axioms sectionBytes795_eq
end InitECandidate.Proofs.BackendStages
