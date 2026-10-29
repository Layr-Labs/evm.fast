import InitECandidate.Proofs.BackendStages.Metadata.Data283
import InitECandidate.Proofs.BackendStages.Filtered283
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis283_eq : ffiLines Filtered283.lines = localFfis283 := by
  with_unfolding_all rfl
theorem ffiStep283 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis283) : LabToTarget.findFfiNames (Filtered283 :: rest) = suffixFfis283 := by
  rw [findFfiNames_section, localFfis283_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep283
end InitECandidate.Proofs.BackendStages.Metadata
