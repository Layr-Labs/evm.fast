import InitECandidate.Proofs.BackendStages.Padded144
import InitECandidate.Proofs.BackendStages.BytesData144
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes144_eq : (Padded144.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes144 := by
  with_unfolding_all rfl
#print axioms sectionBytes144_eq
end InitECandidate.Proofs.BackendStages
