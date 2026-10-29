import InitECandidate.Proofs.BackendStages.Padded570
import InitECandidate.Proofs.BackendStages.BytesData570
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes570_eq : (Padded570.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes570 := by
  with_unfolding_all rfl
#print axioms sectionBytes570_eq
end InitECandidate.Proofs.BackendStages
