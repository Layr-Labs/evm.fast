import InitECandidate.Proofs.BackendStages.Metadata.Data328
import InitECandidate.Proofs.BackendStages.Filtered328
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis328_eq : ffiLines Filtered328.lines = localFfis328 := by
  with_unfolding_all rfl
theorem ffiStep328 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis328) : LabToTarget.findFfiNames (Filtered328 :: rest) = suffixFfis328 := by
  rw [findFfiNames_section, localFfis328_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep328
end InitECandidate.Proofs.BackendStages.Metadata
