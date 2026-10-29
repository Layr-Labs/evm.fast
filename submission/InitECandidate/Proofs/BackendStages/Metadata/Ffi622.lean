import InitECandidate.Proofs.BackendStages.Metadata.Data622
import InitECandidate.Proofs.BackendStages.Filtered622
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis622_eq : ffiLines Filtered622.lines = localFfis622 := by
  with_unfolding_all rfl
theorem ffiStep622 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis622) : LabToTarget.findFfiNames (Filtered622 :: rest) = suffixFfis622 := by
  rw [findFfiNames_section, localFfis622_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep622
end InitECandidate.Proofs.BackendStages.Metadata
