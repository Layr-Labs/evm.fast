import InitECandidate.Proofs.BackendStages.Padded727
import InitECandidate.Proofs.BackendStages.BytesData727
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes727_eq : (Padded727.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes727 := by
  with_unfolding_all rfl
#print axioms sectionBytes727_eq
end InitECandidate.Proofs.BackendStages
