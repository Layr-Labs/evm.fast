import InitECandidate.Proofs.BackendStages.Metadata.Data486
import InitECandidate.Proofs.BackendStages.Filtered486
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis486_eq : ffiLines Filtered486.lines = localFfis486 := by
  with_unfolding_all rfl
theorem ffiStep486 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis486) : LabToTarget.findFfiNames (Filtered486 :: rest) = suffixFfis486 := by
  rw [findFfiNames_section, localFfis486_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep486
end InitECandidate.Proofs.BackendStages.Metadata
