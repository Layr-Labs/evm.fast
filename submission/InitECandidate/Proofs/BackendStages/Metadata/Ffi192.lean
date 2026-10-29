import InitECandidate.Proofs.BackendStages.Metadata.Data192
import InitECandidate.Proofs.BackendStages.Filtered192
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis192_eq : ffiLines Filtered192.lines = localFfis192 := by
  with_unfolding_all rfl
theorem ffiStep192 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis192) : LabToTarget.findFfiNames (Filtered192 :: rest) = suffixFfis192 := by
  rw [findFfiNames_section, localFfis192_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep192
end InitECandidate.Proofs.BackendStages.Metadata
