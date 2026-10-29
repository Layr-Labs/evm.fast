import InitECandidate.Proofs.BackendStages.Padded236
import InitECandidate.Proofs.BackendStages.BytesData236
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes236_eq : (Padded236.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes236 := by
  with_unfolding_all rfl
#print axioms sectionBytes236_eq
end InitECandidate.Proofs.BackendStages
