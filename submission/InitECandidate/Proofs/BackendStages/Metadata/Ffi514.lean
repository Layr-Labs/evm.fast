import InitECandidate.Proofs.BackendStages.Metadata.Data514
import InitECandidate.Proofs.BackendStages.Filtered514
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis514_eq : ffiLines Filtered514.lines = localFfis514 := by
  with_unfolding_all rfl
theorem ffiStep514 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis514) : LabToTarget.findFfiNames (Filtered514 :: rest) = suffixFfis514 := by
  rw [findFfiNames_section, localFfis514_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep514
end InitECandidate.Proofs.BackendStages.Metadata
