import InitECandidate.Proofs.BackendStages.Metadata.Data853
import InitECandidate.Proofs.BackendStages.Filtered853
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis853_eq : ffiLines Filtered853.lines = localFfis853 := by
  with_unfolding_all rfl
theorem ffiStep853 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis853) : LabToTarget.findFfiNames (Filtered853 :: rest) = suffixFfis853 := by
  rw [findFfiNames_section, localFfis853_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep853
end InitECandidate.Proofs.BackendStages.Metadata
