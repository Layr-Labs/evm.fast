import InitECandidate.Proofs.BackendStages.Metadata.Data547
import InitECandidate.Proofs.BackendStages.Filtered547
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis547_eq : ffiLines Filtered547.lines = localFfis547 := by
  with_unfolding_all rfl
theorem ffiStep547 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis547) : LabToTarget.findFfiNames (Filtered547 :: rest) = suffixFfis547 := by
  rw [findFfiNames_section, localFfis547_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep547
end InitECandidate.Proofs.BackendStages.Metadata
