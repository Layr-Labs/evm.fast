import InitECandidate.Proofs.BackendStages.Padded69
import InitECandidate.Proofs.BackendStages.BytesData69
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes69_eq : (Padded69.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes69 := by
  with_unfolding_all rfl
#print axioms sectionBytes69_eq
end InitECandidate.Proofs.BackendStages
