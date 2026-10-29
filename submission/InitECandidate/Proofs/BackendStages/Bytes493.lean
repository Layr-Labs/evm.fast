import InitECandidate.Proofs.BackendStages.Padded493
import InitECandidate.Proofs.BackendStages.BytesData493
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes493_eq : (Padded493.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes493 := by
  with_unfolding_all rfl
#print axioms sectionBytes493_eq
end InitECandidate.Proofs.BackendStages
