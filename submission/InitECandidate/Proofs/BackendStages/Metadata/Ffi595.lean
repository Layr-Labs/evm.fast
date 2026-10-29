import InitECandidate.Proofs.BackendStages.Metadata.Data595
import InitECandidate.Proofs.BackendStages.Filtered595
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis595_eq : ffiLines Filtered595.lines = localFfis595 := by
  with_unfolding_all rfl
theorem ffiStep595 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis595) : LabToTarget.findFfiNames (Filtered595 :: rest) = suffixFfis595 := by
  rw [findFfiNames_section, localFfis595_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep595
end InitECandidate.Proofs.BackendStages.Metadata
