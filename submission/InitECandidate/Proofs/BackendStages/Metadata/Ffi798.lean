import InitECandidate.Proofs.BackendStages.Metadata.Data798
import InitECandidate.Proofs.BackendStages.Filtered798
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis798_eq : ffiLines Filtered798.lines = localFfis798 := by
  with_unfolding_all rfl
theorem ffiStep798 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis798) : LabToTarget.findFfiNames (Filtered798 :: rest) = suffixFfis798 := by
  rw [findFfiNames_section, localFfis798_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep798
end InitECandidate.Proofs.BackendStages.Metadata
