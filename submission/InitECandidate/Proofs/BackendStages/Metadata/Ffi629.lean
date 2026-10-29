import InitECandidate.Proofs.BackendStages.Metadata.Data629
import InitECandidate.Proofs.BackendStages.Filtered629
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis629_eq : ffiLines Filtered629.lines = localFfis629 := by
  with_unfolding_all rfl
theorem ffiStep629 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis629) : LabToTarget.findFfiNames (Filtered629 :: rest) = suffixFfis629 := by
  rw [findFfiNames_section, localFfis629_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep629
end InitECandidate.Proofs.BackendStages.Metadata
