import InitECandidate.Proofs.BackendStages.Padded411
import InitECandidate.Proofs.BackendStages.BytesData411
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes411_eq : (Padded411.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes411 := by
  with_unfolding_all rfl
#print axioms sectionBytes411_eq
end InitECandidate.Proofs.BackendStages
