import InitECandidate.Proofs.BackendStages.Metadata.Data617
import InitECandidate.Proofs.BackendStages.Filtered617
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis617_eq : ffiLines Filtered617.lines = localFfis617 := by
  with_unfolding_all rfl
theorem ffiStep617 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis617) : LabToTarget.findFfiNames (Filtered617 :: rest) = suffixFfis617 := by
  rw [findFfiNames_section, localFfis617_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep617
end InitECandidate.Proofs.BackendStages.Metadata
