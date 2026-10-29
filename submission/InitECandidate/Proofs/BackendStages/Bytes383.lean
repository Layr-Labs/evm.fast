import InitECandidate.Proofs.BackendStages.Padded383
import InitECandidate.Proofs.BackendStages.BytesData383
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes383_eq : (Padded383.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes383 := by
  with_unfolding_all rfl
#print axioms sectionBytes383_eq
end InitECandidate.Proofs.BackendStages
