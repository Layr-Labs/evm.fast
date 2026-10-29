import InitECandidate.Proofs.BackendStages.Padded492
import InitECandidate.Proofs.BackendStages.BytesData492
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes492_eq : (Padded492.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes492 := by
  with_unfolding_all rfl
#print axioms sectionBytes492_eq
end InitECandidate.Proofs.BackendStages
