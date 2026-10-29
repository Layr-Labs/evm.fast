import InitECandidate.Proofs.BackendStages.Metadata.Data726
import InitECandidate.Proofs.BackendStages.Filtered726
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis726_eq : ffiLines Filtered726.lines = localFfis726 := by
  with_unfolding_all rfl
theorem ffiStep726 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis726) : LabToTarget.findFfiNames (Filtered726 :: rest) = suffixFfis726 := by
  rw [findFfiNames_section, localFfis726_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep726
end InitECandidate.Proofs.BackendStages.Metadata
