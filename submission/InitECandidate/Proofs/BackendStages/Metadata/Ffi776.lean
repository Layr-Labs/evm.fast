import InitECandidate.Proofs.BackendStages.Metadata.Data776
import InitECandidate.Proofs.BackendStages.Filtered776
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis776_eq : ffiLines Filtered776.lines = localFfis776 := by
  with_unfolding_all rfl
theorem ffiStep776 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis776) : LabToTarget.findFfiNames (Filtered776 :: rest) = suffixFfis776 := by
  rw [findFfiNames_section, localFfis776_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep776
end InitECandidate.Proofs.BackendStages.Metadata
