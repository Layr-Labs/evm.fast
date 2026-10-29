import InitECandidate.Proofs.BackendStages.Metadata.Data83
import InitECandidate.Proofs.BackendStages.Filtered83
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis83_eq : ffiLines Filtered83.lines = localFfis83 := by
  with_unfolding_all rfl
theorem ffiStep83 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis83) : LabToTarget.findFfiNames (Filtered83 :: rest) = suffixFfis83 := by
  rw [findFfiNames_section, localFfis83_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep83
end InitECandidate.Proofs.BackendStages.Metadata
