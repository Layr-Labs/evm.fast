import InitECandidate.Proofs.BackendStages.Padded187
import InitECandidate.Proofs.BackendStages.BytesData187
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes187_eq : (Padded187.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes187 := by
  with_unfolding_all rfl
#print axioms sectionBytes187_eq
end InitECandidate.Proofs.BackendStages
