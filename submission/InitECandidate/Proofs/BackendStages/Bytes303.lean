import InitECandidate.Proofs.BackendStages.Padded303
import InitECandidate.Proofs.BackendStages.BytesData303
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes303_eq : (Padded303.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes303 := by
  with_unfolding_all rfl
#print axioms sectionBytes303_eq
end InitECandidate.Proofs.BackendStages
