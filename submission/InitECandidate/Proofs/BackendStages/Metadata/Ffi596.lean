import InitECandidate.Proofs.BackendStages.Metadata.Data596
import InitECandidate.Proofs.BackendStages.Filtered596
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis596_eq : ffiLines Filtered596.lines = localFfis596 := by
  with_unfolding_all rfl
theorem ffiStep596 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis596) : LabToTarget.findFfiNames (Filtered596 :: rest) = suffixFfis596 := by
  rw [findFfiNames_section, localFfis596_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep596
end InitECandidate.Proofs.BackendStages.Metadata
