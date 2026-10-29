import InitECandidate.Proofs.BackendStages.Metadata.Data835
import InitECandidate.Proofs.BackendStages.Filtered835
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis835_eq : ffiLines Filtered835.lines = localFfis835 := by
  with_unfolding_all rfl
theorem ffiStep835 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis835) : LabToTarget.findFfiNames (Filtered835 :: rest) = suffixFfis835 := by
  rw [findFfiNames_section, localFfis835_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep835
end InitECandidate.Proofs.BackendStages.Metadata
