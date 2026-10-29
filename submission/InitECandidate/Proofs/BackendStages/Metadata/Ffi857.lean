import InitECandidate.Proofs.BackendStages.Metadata.Data857
import InitECandidate.Proofs.BackendStages.Filtered857
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis857_eq : ffiLines Filtered857.lines = localFfis857 := by
  with_unfolding_all rfl
theorem ffiStep857 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis857) : LabToTarget.findFfiNames (Filtered857 :: rest) = suffixFfis857 := by
  rw [findFfiNames_section, localFfis857_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep857
end InitECandidate.Proofs.BackendStages.Metadata
