import InitECandidate.Proofs.BackendStages.Padded736
import InitECandidate.Proofs.BackendStages.BytesData736
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes736_eq : (Padded736.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes736 := by
  with_unfolding_all rfl
#print axioms sectionBytes736_eq
end InitECandidate.Proofs.BackendStages
