import InitECandidate.Proofs.BackendStages.Metadata.Data478
import InitECandidate.Proofs.BackendStages.Filtered478
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis478_eq : ffiLines Filtered478.lines = localFfis478 := by
  with_unfolding_all rfl
theorem ffiStep478 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis478) : LabToTarget.findFfiNames (Filtered478 :: rest) = suffixFfis478 := by
  rw [findFfiNames_section, localFfis478_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep478
end InitECandidate.Proofs.BackendStages.Metadata
