import InitECandidate.Proofs.BackendStages.Metadata.Data686
import InitECandidate.Proofs.BackendStages.Filtered686
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis686_eq : ffiLines Filtered686.lines = localFfis686 := by
  with_unfolding_all rfl
theorem ffiStep686 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis686) : LabToTarget.findFfiNames (Filtered686 :: rest) = suffixFfis686 := by
  rw [findFfiNames_section, localFfis686_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep686
end InitECandidate.Proofs.BackendStages.Metadata
