import InitECandidate.Proofs.BackendStages.Metadata.Data122
import InitECandidate.Proofs.BackendStages.Filtered122
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis122_eq : ffiLines Filtered122.lines = localFfis122 := by
  with_unfolding_all rfl
theorem ffiStep122 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis122) : LabToTarget.findFfiNames (Filtered122 :: rest) = suffixFfis122 := by
  rw [findFfiNames_section, localFfis122_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep122
end InitECandidate.Proofs.BackendStages.Metadata
