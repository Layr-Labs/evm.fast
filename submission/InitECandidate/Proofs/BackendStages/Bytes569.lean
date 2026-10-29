import InitECandidate.Proofs.BackendStages.Padded569
import InitECandidate.Proofs.BackendStages.BytesData569
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes569_eq : (Padded569.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes569 := by
  with_unfolding_all rfl
#print axioms sectionBytes569_eq
end InitECandidate.Proofs.BackendStages
