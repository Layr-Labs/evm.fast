import InitECandidate.Proofs.BackendStages.Metadata.Data820
import InitECandidate.Proofs.BackendStages.Filtered820
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis820_eq : ffiLines Filtered820.lines = localFfis820 := by
  with_unfolding_all rfl
theorem ffiStep820 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis820) : LabToTarget.findFfiNames (Filtered820 :: rest) = suffixFfis820 := by
  rw [findFfiNames_section, localFfis820_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep820
end InitECandidate.Proofs.BackendStages.Metadata
