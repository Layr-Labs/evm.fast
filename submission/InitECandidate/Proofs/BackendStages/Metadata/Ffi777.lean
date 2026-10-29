import InitECandidate.Proofs.BackendStages.Metadata.Data777
import InitECandidate.Proofs.BackendStages.Filtered777
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis777_eq : ffiLines Filtered777.lines = localFfis777 := by
  with_unfolding_all rfl
theorem ffiStep777 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis777) : LabToTarget.findFfiNames (Filtered777 :: rest) = suffixFfis777 := by
  rw [findFfiNames_section, localFfis777_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep777
end InitECandidate.Proofs.BackendStages.Metadata
