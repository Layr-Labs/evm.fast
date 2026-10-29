import InitECandidate.Proofs.BackendStages.Padded847
import InitECandidate.Proofs.BackendStages.BytesData847
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes847_eq : (Padded847.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes847 := by
  with_unfolding_all rfl
#print axioms sectionBytes847_eq
end InitECandidate.Proofs.BackendStages
