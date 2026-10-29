import InitECandidate.Proofs.BackendStages.Metadata.Data608
import InitECandidate.Proofs.BackendStages.Filtered608
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis608_eq : ffiLines Filtered608.lines = localFfis608 := by
  with_unfolding_all rfl
theorem ffiStep608 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis608) : LabToTarget.findFfiNames (Filtered608 :: rest) = suffixFfis608 := by
  rw [findFfiNames_section, localFfis608_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep608
end InitECandidate.Proofs.BackendStages.Metadata
