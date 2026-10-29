import InitECandidate.Proofs.BackendStages.Padded744
import InitECandidate.Proofs.BackendStages.BytesData744
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes744_eq : (Padded744.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes744 := by
  with_unfolding_all rfl
#print axioms sectionBytes744_eq
end InitECandidate.Proofs.BackendStages
