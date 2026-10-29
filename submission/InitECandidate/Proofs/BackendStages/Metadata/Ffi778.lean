import InitECandidate.Proofs.BackendStages.Metadata.Data778
import InitECandidate.Proofs.BackendStages.Filtered778
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis778_eq : ffiLines Filtered778.lines = localFfis778 := by
  with_unfolding_all rfl
theorem ffiStep778 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis778) : LabToTarget.findFfiNames (Filtered778 :: rest) = suffixFfis778 := by
  rw [findFfiNames_section, localFfis778_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep778
end InitECandidate.Proofs.BackendStages.Metadata
