import InitECandidate.Proofs.BackendStages.Padded179
import InitECandidate.Proofs.BackendStages.BytesData179
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes179_eq : (Padded179.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes179 := by
  with_unfolding_all rfl
#print axioms sectionBytes179_eq
end InitECandidate.Proofs.BackendStages
