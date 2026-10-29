import InitECandidate.Proofs.BackendStages.Metadata.Data768
import InitECandidate.Proofs.BackendStages.Filtered768
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis768_eq : ffiLines Filtered768.lines = localFfis768 := by
  with_unfolding_all rfl
theorem ffiStep768 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis768) : LabToTarget.findFfiNames (Filtered768 :: rest) = suffixFfis768 := by
  rw [findFfiNames_section, localFfis768_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep768
end InitECandidate.Proofs.BackendStages.Metadata
