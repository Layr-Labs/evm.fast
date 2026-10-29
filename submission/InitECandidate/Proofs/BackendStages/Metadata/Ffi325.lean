import InitECandidate.Proofs.BackendStages.Metadata.Data325
import InitECandidate.Proofs.BackendStages.Filtered325
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis325_eq : ffiLines Filtered325.lines = localFfis325 := by
  with_unfolding_all rfl
theorem ffiStep325 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis325) : LabToTarget.findFfiNames (Filtered325 :: rest) = suffixFfis325 := by
  rw [findFfiNames_section, localFfis325_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep325
end InitECandidate.Proofs.BackendStages.Metadata
