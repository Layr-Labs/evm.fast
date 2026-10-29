import InitECandidate.Proofs.BackendStages.Metadata.Data614
import InitECandidate.Proofs.BackendStages.Filtered614
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis614_eq : ffiLines Filtered614.lines = localFfis614 := by
  with_unfolding_all rfl
theorem ffiStep614 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis614) : LabToTarget.findFfiNames (Filtered614 :: rest) = suffixFfis614 := by
  rw [findFfiNames_section, localFfis614_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep614
end InitECandidate.Proofs.BackendStages.Metadata
