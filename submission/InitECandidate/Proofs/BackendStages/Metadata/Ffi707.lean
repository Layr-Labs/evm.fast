import InitECandidate.Proofs.BackendStages.Metadata.Data707
import InitECandidate.Proofs.BackendStages.Filtered707
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis707_eq : ffiLines Filtered707.lines = localFfis707 := by
  with_unfolding_all rfl
theorem ffiStep707 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis707) : LabToTarget.findFfiNames (Filtered707 :: rest) = suffixFfis707 := by
  rw [findFfiNames_section, localFfis707_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep707
end InitECandidate.Proofs.BackendStages.Metadata
