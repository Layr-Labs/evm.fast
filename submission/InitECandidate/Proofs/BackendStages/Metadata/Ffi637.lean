import InitECandidate.Proofs.BackendStages.Metadata.Data637
import InitECandidate.Proofs.BackendStages.Filtered637
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis637_eq : ffiLines Filtered637.lines = localFfis637 := by
  with_unfolding_all rfl
theorem ffiStep637 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis637) : LabToTarget.findFfiNames (Filtered637 :: rest) = suffixFfis637 := by
  rw [findFfiNames_section, localFfis637_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep637
end InitECandidate.Proofs.BackendStages.Metadata
