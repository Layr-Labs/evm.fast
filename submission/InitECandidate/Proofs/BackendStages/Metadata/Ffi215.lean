import InitECandidate.Proofs.BackendStages.Metadata.Data215
import InitECandidate.Proofs.BackendStages.Filtered215
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis215_eq : ffiLines Filtered215.lines = localFfis215 := by
  with_unfolding_all rfl
theorem ffiStep215 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis215) : LabToTarget.findFfiNames (Filtered215 :: rest) = suffixFfis215 := by
  rw [findFfiNames_section, localFfis215_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep215
end InitECandidate.Proofs.BackendStages.Metadata
