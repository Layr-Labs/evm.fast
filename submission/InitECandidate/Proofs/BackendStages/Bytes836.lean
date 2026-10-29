import InitECandidate.Proofs.BackendStages.Padded836
import InitECandidate.Proofs.BackendStages.BytesData836
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes836_eq : (Padded836.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes836 := by
  with_unfolding_all rfl
#print axioms sectionBytes836_eq
end InitECandidate.Proofs.BackendStages
