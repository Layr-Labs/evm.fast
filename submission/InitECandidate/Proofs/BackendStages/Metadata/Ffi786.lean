import InitECandidate.Proofs.BackendStages.Metadata.Data786
import InitECandidate.Proofs.BackendStages.Filtered786
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis786_eq : ffiLines Filtered786.lines = localFfis786 := by
  with_unfolding_all rfl
theorem ffiStep786 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis786) : LabToTarget.findFfiNames (Filtered786 :: rest) = suffixFfis786 := by
  rw [findFfiNames_section, localFfis786_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep786
end InitECandidate.Proofs.BackendStages.Metadata
