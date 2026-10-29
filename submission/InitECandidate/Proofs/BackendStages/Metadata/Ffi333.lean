import InitECandidate.Proofs.BackendStages.Metadata.Data333
import InitECandidate.Proofs.BackendStages.Filtered333
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis333_eq : ffiLines Filtered333.lines = localFfis333 := by
  with_unfolding_all rfl
theorem ffiStep333 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis333) : LabToTarget.findFfiNames (Filtered333 :: rest) = suffixFfis333 := by
  rw [findFfiNames_section, localFfis333_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep333
end InitECandidate.Proofs.BackendStages.Metadata
