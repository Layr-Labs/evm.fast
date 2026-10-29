import InitECandidate.Proofs.BackendStages.Padded127
import InitECandidate.Proofs.BackendStages.BytesData127
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes127_eq : (Padded127.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes127 := by
  with_unfolding_all rfl
#print axioms sectionBytes127_eq
end InitECandidate.Proofs.BackendStages
