import InitECandidate.Proofs.BackendStages.Padded532
import InitECandidate.Proofs.BackendStages.BytesData532
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes532_eq : (Padded532.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes532 := by
  with_unfolding_all rfl
#print axioms sectionBytes532_eq
end InitECandidate.Proofs.BackendStages
