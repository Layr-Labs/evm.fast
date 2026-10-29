import InitECandidate.Proofs.BackendStages.Metadata.Data616
import InitECandidate.Proofs.BackendStages.Padded616
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep616 : walkShmemLines Padded616.lines 487244 beforeFfis616 beforeShmem616 = (489904, afterFfis616, afterShmem616) := by
  kernel_rfl
theorem shmemStep616 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded616 :: rest) 487244 beforeFfis616 beforeShmem616 = LabToTarget.getShmemInfo rest 489904 afterFfis616 afterShmem616 := by
  rw [getShmemInfo_section, walkStep616]
theorem symbolLength616 : LabToTarget.secLength Padded616.lines 0 = 2660 := by
  kernel_rfl
#print axioms shmemStep616
#print axioms symbolLength616
end InitECandidate.Proofs.BackendStages.Metadata
