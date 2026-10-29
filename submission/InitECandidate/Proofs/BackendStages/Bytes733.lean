import InitECandidate.Proofs.BackendStages.Padded733
import InitECandidate.Proofs.BackendStages.BytesData733
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes733_eq : (Padded733.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes733 := by
  with_unfolding_all rfl
#print axioms sectionBytes733_eq
end InitECandidate.Proofs.BackendStages
