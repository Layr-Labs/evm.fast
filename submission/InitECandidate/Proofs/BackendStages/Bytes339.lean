import InitECandidate.Proofs.BackendStages.Padded339
import InitECandidate.Proofs.BackendStages.BytesData339
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes339_eq : (Padded339.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes339 := by
  with_unfolding_all rfl
#print axioms sectionBytes339_eq
end InitECandidate.Proofs.BackendStages
