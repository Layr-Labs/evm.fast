import InitECandidate.Proofs.BackendStages.Metadata.Data696
import InitECandidate.Proofs.BackendStages.Filtered696
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis696_eq : ffiLines Filtered696.lines = localFfis696 := by
  with_unfolding_all rfl
theorem ffiStep696 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis696) : LabToTarget.findFfiNames (Filtered696 :: rest) = suffixFfis696 := by
  rw [findFfiNames_section, localFfis696_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep696
end InitECandidate.Proofs.BackendStages.Metadata
