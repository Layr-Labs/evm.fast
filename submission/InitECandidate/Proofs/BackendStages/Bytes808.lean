import InitECandidate.Proofs.BackendStages.Padded808
import InitECandidate.Proofs.BackendStages.BytesData808
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes808_eq : (Padded808.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes808 := by
  with_unfolding_all rfl
#print axioms sectionBytes808_eq
end InitECandidate.Proofs.BackendStages
