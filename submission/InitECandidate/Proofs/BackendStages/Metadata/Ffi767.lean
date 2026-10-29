import InitECandidate.Proofs.BackendStages.Metadata.Data767
import InitECandidate.Proofs.BackendStages.Filtered767
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis767_eq : ffiLines Filtered767.lines = localFfis767 := by
  with_unfolding_all rfl
theorem ffiStep767 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis767) : LabToTarget.findFfiNames (Filtered767 :: rest) = suffixFfis767 := by
  rw [findFfiNames_section, localFfis767_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep767
end InitECandidate.Proofs.BackendStages.Metadata
