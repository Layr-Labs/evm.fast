import InitECandidate.Proofs.BackendStages.Padded400
import InitECandidate.Proofs.BackendStages.BytesData400
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes400_eq : (Padded400.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes400 := by
  with_unfolding_all rfl
#print axioms sectionBytes400_eq
end InitECandidate.Proofs.BackendStages
