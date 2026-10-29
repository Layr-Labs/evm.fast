import InitECandidate.Proofs.BackendStages.Padded245
import InitECandidate.Proofs.BackendStages.BytesData245
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes245_eq : (Padded245.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes245 := by
  with_unfolding_all rfl
#print axioms sectionBytes245_eq
end InitECandidate.Proofs.BackendStages
