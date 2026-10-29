import InitECandidate.Proofs.BackendStages.Metadata.Ffi656
import InitECandidate.Proofs.BackendStages.Metadata.Shmem656
import InitECandidate.Proofs.BackendStages.Metadata.Ffi657
import InitECandidate.Proofs.BackendStages.Metadata.Shmem657
import InitECandidate.Proofs.BackendStages.Metadata.Ffi658
import InitECandidate.Proofs.BackendStages.Metadata.Shmem658
import InitECandidate.Proofs.BackendStages.Metadata.Ffi659
import InitECandidate.Proofs.BackendStages.Metadata.Shmem659
import InitECandidate.Proofs.BackendStages.Metadata.Ffi660
import InitECandidate.Proofs.BackendStages.Metadata.Shmem660
import InitECandidate.Proofs.BackendStages.Metadata.Ffi661
import InitECandidate.Proofs.BackendStages.Metadata.Shmem661
import InitECandidate.Proofs.BackendStages.Metadata.Ffi662
import InitECandidate.Proofs.BackendStages.Metadata.Shmem662
import InitECandidate.Proofs.BackendStages.Metadata.Ffi663
import InitECandidate.Proofs.BackendStages.Metadata.Shmem663
import InitECandidate.Proofs.BackendStages.Metadata.Ffi664
import InitECandidate.Proofs.BackendStages.Metadata.Shmem664
import InitECandidate.Proofs.BackendStages.Metadata.Ffi665
import InitECandidate.Proofs.BackendStages.Metadata.Shmem665
import InitECandidate.Proofs.BackendStages.Metadata.Ffi666
import InitECandidate.Proofs.BackendStages.Metadata.Shmem666
import InitECandidate.Proofs.BackendStages.Metadata.Ffi667
import InitECandidate.Proofs.BackendStages.Metadata.Shmem667
import InitECandidate.Proofs.BackendStages.Metadata.Ffi668
import InitECandidate.Proofs.BackendStages.Metadata.Shmem668
import InitECandidate.Proofs.BackendStages.Metadata.Ffi669
import InitECandidate.Proofs.BackendStages.Metadata.Shmem669
import InitECandidate.Proofs.BackendStages.Metadata.Ffi670
import InitECandidate.Proofs.BackendStages.Metadata.Shmem670
import InitECandidate.Proofs.BackendStages.Metadata.Ffi671
import InitECandidate.Proofs.BackendStages.Metadata.Shmem671
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata

theorem ffiChunk656_671 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis671) : LabToTarget.findFfiNames ([Filtered656, Filtered657, Filtered658, Filtered659, Filtered660, Filtered661, Filtered662, Filtered663, Filtered664, Filtered665, Filtered666, Filtered667, Filtered668, Filtered669, Filtered670, Filtered671] ++ rest) = suffixFfis656 := by
  exact ffiStep656 _ ( ffiStep657 _ ( ffiStep658 _ ( ffiStep659 _ ( ffiStep660 _ ( ffiStep661 _ ( ffiStep662 _ ( ffiStep663 _ ( ffiStep664 _ ( ffiStep665 _ ( ffiStep666 _ ( ffiStep667 _ ( ffiStep668 _ ( ffiStep669 _ ( ffiStep670 _ ( ffiStep671 _ (h))))))))))))))))
theorem shmemChunk656_671 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo ([Padded656, Padded657, Padded658, Padded659, Padded660, Padded661, Padded662, Padded663, Padded664, Padded665, Padded666, Padded667, Padded668, Padded669, Padded670, Padded671] ++ rest) 578596 beforeFfis656 beforeShmem656 = LabToTarget.getShmemInfo rest 602848 afterFfis671 afterShmem671 := by
  simp only [List.cons_append, List.nil_append]
  change LabToTarget.getShmemInfo _ 578596 beforeFfis656 beforeShmem656 = _
  rw [shmemStep656]
  change LabToTarget.getShmemInfo _ 580068 beforeFfis657 beforeShmem657 = _
  rw [shmemStep657]
  change LabToTarget.getShmemInfo _ 583344 beforeFfis658 beforeShmem658 = _
  rw [shmemStep658]
  change LabToTarget.getShmemInfo _ 583864 beforeFfis659 beforeShmem659 = _
  rw [shmemStep659]
  change LabToTarget.getShmemInfo _ 584456 beforeFfis660 beforeShmem660 = _
  rw [shmemStep660]
  change LabToTarget.getShmemInfo _ 584776 beforeFfis661 beforeShmem661 = _
  rw [shmemStep661]
  change LabToTarget.getShmemInfo _ 594860 beforeFfis662 beforeShmem662 = _
  rw [shmemStep662]
  change LabToTarget.getShmemInfo _ 594960 beforeFfis663 beforeShmem663 = _
  rw [shmemStep663]
  change LabToTarget.getShmemInfo _ 594980 beforeFfis664 beforeShmem664 = _
  rw [shmemStep664]
  change LabToTarget.getShmemInfo _ 595332 beforeFfis665 beforeShmem665 = _
  rw [shmemStep665]
  change LabToTarget.getShmemInfo _ 596092 beforeFfis666 beforeShmem666 = _
  rw [shmemStep666]
  change LabToTarget.getShmemInfo _ 597784 beforeFfis667 beforeShmem667 = _
  rw [shmemStep667]
  change LabToTarget.getShmemInfo _ 598696 beforeFfis668 beforeShmem668 = _
  rw [shmemStep668]
  change LabToTarget.getShmemInfo _ 600100 beforeFfis669 beforeShmem669 = _
  rw [shmemStep669]
  change LabToTarget.getShmemInfo _ 602020 beforeFfis670 beforeShmem670 = _
  rw [shmemStep670]
  change LabToTarget.getShmemInfo _ 602544 beforeFfis671 beforeShmem671 = _
  rw [shmemStep671]
theorem symbolsChunk656_671 (rest : LabSem.LabProgHOL 64) : LabToTarget.getSymbols 578596 ([Padded656, Padded657, Padded658, Padded659, Padded660, Padded661, Padded662, Padded663, Padded664, Padded665, Padded666, Padded667, Padded668, Padded669, Padded670, Padded671] ++ rest) = [(656, 578596, 1472), (657, 580068, 3276), (658, 583344, 520), (659, 583864, 592), (660, 584456, 320), (661, 584776, 10084), (662, 594860, 100), (663, 594960, 20), (664, 594980, 352), (665, 595332, 760), (666, 596092, 1692), (667, 597784, 912), (668, 598696, 1404), (669, 600100, 1920), (670, 602020, 524), (671, 602544, 304)] ++ LabToTarget.getSymbols 602848 rest := by
  simp only [List.cons_append, List.nil_append, LabToTarget.getSymbols, symbolLength656, symbolLength657, symbolLength658, symbolLength659, symbolLength660, symbolLength661, symbolLength662, symbolLength663, symbolLength664, symbolLength665, symbolLength666, symbolLength667, symbolLength668, symbolLength669, symbolLength670, symbolLength671]
  rfl
#print axioms ffiChunk656_671
#print axioms shmemChunk656_671
#print axioms symbolsChunk656_671
end InitECandidate.Proofs.BackendStages.Metadata
