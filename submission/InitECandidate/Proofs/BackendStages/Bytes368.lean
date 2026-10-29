import InitECandidate.Proofs.BackendStages.Padded368
import InitECandidate.Proofs.BackendStages.BytesData368
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes368_eq : (Padded368.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes368 := by
  with_unfolding_all rfl
#print axioms sectionBytes368_eq
end InitECandidate.Proofs.BackendStages
