import InitECandidate.Proofs.BackendStages.Metadata.Data288
import InitECandidate.Proofs.BackendStages.Filtered288
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis288_eq : ffiLines Filtered288.lines = localFfis288 := by
  with_unfolding_all rfl
theorem ffiStep288 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis288) : LabToTarget.findFfiNames (Filtered288 :: rest) = suffixFfis288 := by
  rw [findFfiNames_section, localFfis288_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep288
end InitECandidate.Proofs.BackendStages.Metadata
