import InitECandidate.Proofs.BackendStages.Metadata.Data770
import InitECandidate.Proofs.BackendStages.Padded770
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep770 : walkShmemLines Padded770.lines 767916 beforeFfis770 beforeShmem770 = (774572, afterFfis770, afterShmem770) := by
  kernel_rfl
theorem shmemStep770 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded770 :: rest) 767916 beforeFfis770 beforeShmem770 = LabToTarget.getShmemInfo rest 774572 afterFfis770 afterShmem770 := by
  rw [getShmemInfo_section, walkStep770]
theorem symbolLength770 : LabToTarget.secLength Padded770.lines 0 = 6656 := by
  kernel_rfl
#print axioms shmemStep770
#print axioms symbolLength770
end InitECandidate.Proofs.BackendStages.Metadata
