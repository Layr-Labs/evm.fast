import InitECandidate.Proofs.BackendStages.Metadata.Data760
import InitECandidate.Proofs.BackendStages.Filtered760
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis760_eq : ffiLines Filtered760.lines = localFfis760 := by
  with_unfolding_all rfl
theorem ffiStep760 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis760) : LabToTarget.findFfiNames (Filtered760 :: rest) = suffixFfis760 := by
  rw [findFfiNames_section, localFfis760_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep760
end InitECandidate.Proofs.BackendStages.Metadata
