import InitECandidate.Proofs.BackendStages.Metadata.Data847
import InitECandidate.Proofs.BackendStages.Padded847
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep847 : walkShmemLines Padded847.lines 916292 beforeFfis847 beforeShmem847 = (917144, afterFfis847, afterShmem847) := by
  kernel_rfl
theorem shmemStep847 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded847 :: rest) 916292 beforeFfis847 beforeShmem847 = LabToTarget.getShmemInfo rest 917144 afterFfis847 afterShmem847 := by
  rw [getShmemInfo_section, walkStep847]
theorem symbolLength847 : LabToTarget.secLength Padded847.lines 0 = 852 := by
  kernel_rfl
#print axioms shmemStep847
#print axioms symbolLength847
end InitECandidate.Proofs.BackendStages.Metadata
