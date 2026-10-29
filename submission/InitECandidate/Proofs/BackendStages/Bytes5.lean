import InitECandidate.Proofs.BackendStages.Padded5
import InitECandidate.Proofs.BackendStages.BytesData5
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes5_eq : (Padded5.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes5 := by
  with_unfolding_all rfl
#print axioms sectionBytes5_eq
end InitECandidate.Proofs.BackendStages
