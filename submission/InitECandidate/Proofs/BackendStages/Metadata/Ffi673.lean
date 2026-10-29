import InitECandidate.Proofs.BackendStages.Metadata.Data673
import InitECandidate.Proofs.BackendStages.Filtered673
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis673_eq : ffiLines Filtered673.lines = localFfis673 := by
  with_unfolding_all rfl
theorem ffiStep673 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis673) : LabToTarget.findFfiNames (Filtered673 :: rest) = suffixFfis673 := by
  rw [findFfiNames_section, localFfis673_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep673
end InitECandidate.Proofs.BackendStages.Metadata
