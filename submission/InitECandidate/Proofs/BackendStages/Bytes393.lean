import InitECandidate.Proofs.BackendStages.Padded393
import InitECandidate.Proofs.BackendStages.BytesData393
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes393_eq : (Padded393.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes393 := by
  with_unfolding_all rfl
#print axioms sectionBytes393_eq
end InitECandidate.Proofs.BackendStages
