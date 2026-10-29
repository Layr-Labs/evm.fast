import InitECandidate.Proofs.BackendStages.Metadata.Data556
import InitECandidate.Proofs.BackendStages.Filtered556
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis556_eq : ffiLines Filtered556.lines = localFfis556 := by
  with_unfolding_all rfl
theorem ffiStep556 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis556) : LabToTarget.findFfiNames (Filtered556 :: rest) = suffixFfis556 := by
  rw [findFfiNames_section, localFfis556_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep556
end InitECandidate.Proofs.BackendStages.Metadata
