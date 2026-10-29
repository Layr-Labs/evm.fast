import InitECandidate.Proofs.BackendStages.Padded823
import InitECandidate.Proofs.BackendStages.BytesData823
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes823_eq : (Padded823.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes823 := by
  with_unfolding_all rfl
#print axioms sectionBytes823_eq
end InitECandidate.Proofs.BackendStages
