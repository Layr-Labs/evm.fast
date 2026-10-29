import InitECandidate.Proofs.BackendStages.Metadata.Data765
import InitECandidate.Proofs.BackendStages.Filtered765
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis765_eq : ffiLines Filtered765.lines = localFfis765 := by
  with_unfolding_all rfl
theorem ffiStep765 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis765) : LabToTarget.findFfiNames (Filtered765 :: rest) = suffixFfis765 := by
  rw [findFfiNames_section, localFfis765_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep765
end InitECandidate.Proofs.BackendStages.Metadata
