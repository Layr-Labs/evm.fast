import InitECandidate.Proofs.BackendStages.Padded667
import InitECandidate.Proofs.BackendStages.BytesData667
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes667_eq : (Padded667.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes667 := by
  with_unfolding_all rfl
#print axioms sectionBytes667_eq
end InitECandidate.Proofs.BackendStages
