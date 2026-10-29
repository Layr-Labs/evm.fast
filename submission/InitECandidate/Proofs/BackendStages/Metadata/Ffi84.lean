import InitECandidate.Proofs.BackendStages.Metadata.Data84
import InitECandidate.Proofs.BackendStages.Filtered84
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis84_eq : ffiLines Filtered84.lines = localFfis84 := by
  with_unfolding_all rfl
theorem ffiStep84 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis84) : LabToTarget.findFfiNames (Filtered84 :: rest) = suffixFfis84 := by
  rw [findFfiNames_section, localFfis84_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep84
end InitECandidate.Proofs.BackendStages.Metadata
