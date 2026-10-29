import InitECandidate.Proofs.BackendStages.Padded320
import InitECandidate.Proofs.BackendStages.BytesData320
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes320_eq : (Padded320.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes320 := by
  with_unfolding_all rfl
#print axioms sectionBytes320_eq
end InitECandidate.Proofs.BackendStages
