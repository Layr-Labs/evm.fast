import InitECandidate.Proofs.BackendStages.Metadata.Data148
import InitECandidate.Proofs.BackendStages.Filtered148
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis148_eq : ffiLines Filtered148.lines = localFfis148 := by
  with_unfolding_all rfl
theorem ffiStep148 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis148) : LabToTarget.findFfiNames (Filtered148 :: rest) = suffixFfis148 := by
  rw [findFfiNames_section, localFfis148_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep148
end InitECandidate.Proofs.BackendStages.Metadata
