import InitECandidate.Proofs.BackendStages.Padded162
import InitECandidate.Proofs.BackendStages.BytesData162
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes162_eq : (Padded162.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes162 := by
  with_unfolding_all rfl
#print axioms sectionBytes162_eq
end InitECandidate.Proofs.BackendStages
