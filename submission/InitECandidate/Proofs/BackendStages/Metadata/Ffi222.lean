import InitECandidate.Proofs.BackendStages.Metadata.Data222
import InitECandidate.Proofs.BackendStages.Filtered222
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis222_eq : ffiLines Filtered222.lines = localFfis222 := by
  with_unfolding_all rfl
theorem ffiStep222 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis222) : LabToTarget.findFfiNames (Filtered222 :: rest) = suffixFfis222 := by
  rw [findFfiNames_section, localFfis222_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep222
end InitECandidate.Proofs.BackendStages.Metadata
