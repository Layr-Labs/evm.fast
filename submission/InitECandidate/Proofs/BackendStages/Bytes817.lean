import InitECandidate.Proofs.BackendStages.Padded817
import InitECandidate.Proofs.BackendStages.BytesData817
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes817_eq : (Padded817.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes817 := by
  with_unfolding_all rfl
#print axioms sectionBytes817_eq
end InitECandidate.Proofs.BackendStages
