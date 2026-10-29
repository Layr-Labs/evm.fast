import InitECandidate.Proofs.BackendStages.Padded2
import InitECandidate.Proofs.BackendStages.BytesData2
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes2_eq : (Padded2.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes2 := by
  with_unfolding_all rfl
#print axioms sectionBytes2_eq
end InitECandidate.Proofs.BackendStages
