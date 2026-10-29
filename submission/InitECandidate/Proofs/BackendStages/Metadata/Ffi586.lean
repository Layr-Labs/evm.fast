import InitECandidate.Proofs.BackendStages.Metadata.Data586
import InitECandidate.Proofs.BackendStages.Filtered586
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis586_eq : ffiLines Filtered586.lines = localFfis586 := by
  with_unfolding_all rfl
theorem ffiStep586 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis586) : LabToTarget.findFfiNames (Filtered586 :: rest) = suffixFfis586 := by
  rw [findFfiNames_section, localFfis586_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep586
end InitECandidate.Proofs.BackendStages.Metadata
