import InitECandidate.Proofs.BackendStages.Padded97
import InitECandidate.Proofs.BackendStages.BytesData97
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes97_eq : (Padded97.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes97 := by
  with_unfolding_all rfl
#print axioms sectionBytes97_eq
end InitECandidate.Proofs.BackendStages
