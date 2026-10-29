import InitECandidate.Proofs.BackendStages.Padded378
import InitECandidate.Proofs.BackendStages.BytesData378
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes378_eq : (Padded378.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes378 := by
  with_unfolding_all rfl
#print axioms sectionBytes378_eq
end InitECandidate.Proofs.BackendStages
