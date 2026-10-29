import InitECandidate.Proofs.BackendStages.Metadata.Data866
import InitECandidate.Proofs.BackendStages.Filtered866
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis866_eq : ffiLines Filtered866.lines = localFfis866 := by
  with_unfolding_all rfl
theorem ffiStep866 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis866) : LabToTarget.findFfiNames (Filtered866 :: rest) = suffixFfis866 := by
  rw [findFfiNames_section, localFfis866_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep866
end InitECandidate.Proofs.BackendStages.Metadata
