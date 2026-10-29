import InitECandidate.Proofs.BackendStages.Padded816
import InitECandidate.Proofs.BackendStages.BytesData816
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes816_eq : (Padded816.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes816 := by
  with_unfolding_all rfl
#print axioms sectionBytes816_eq
end InitECandidate.Proofs.BackendStages
