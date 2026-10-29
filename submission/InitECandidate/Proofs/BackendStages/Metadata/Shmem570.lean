import InitECandidate.Proofs.BackendStages.Metadata.Data570
import InitECandidate.Proofs.BackendStages.Padded570
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep570 : walkShmemLines Padded570.lines 427356 beforeFfis570 beforeShmem570 = (428636, afterFfis570, afterShmem570) := by
  kernel_rfl
theorem shmemStep570 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded570 :: rest) 427356 beforeFfis570 beforeShmem570 = LabToTarget.getShmemInfo rest 428636 afterFfis570 afterShmem570 := by
  rw [getShmemInfo_section, walkStep570]
theorem symbolLength570 : LabToTarget.secLength Padded570.lines 0 = 1280 := by
  kernel_rfl
#print axioms shmemStep570
#print axioms symbolLength570
end InitECandidate.Proofs.BackendStages.Metadata
