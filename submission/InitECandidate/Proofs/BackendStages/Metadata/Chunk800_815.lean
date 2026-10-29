import InitECandidate.Proofs.BackendStages.Metadata.Ffi800
import InitECandidate.Proofs.BackendStages.Metadata.Shmem800
import InitECandidate.Proofs.BackendStages.Metadata.Ffi801
import InitECandidate.Proofs.BackendStages.Metadata.Shmem801
import InitECandidate.Proofs.BackendStages.Metadata.Ffi802
import InitECandidate.Proofs.BackendStages.Metadata.Shmem802
import InitECandidate.Proofs.BackendStages.Metadata.Ffi803
import InitECandidate.Proofs.BackendStages.Metadata.Shmem803
import InitECandidate.Proofs.BackendStages.Metadata.Ffi804
import InitECandidate.Proofs.BackendStages.Metadata.Shmem804
import InitECandidate.Proofs.BackendStages.Metadata.Ffi805
import InitECandidate.Proofs.BackendStages.Metadata.Shmem805
import InitECandidate.Proofs.BackendStages.Metadata.Ffi806
import InitECandidate.Proofs.BackendStages.Metadata.Shmem806
import InitECandidate.Proofs.BackendStages.Metadata.Ffi807
import InitECandidate.Proofs.BackendStages.Metadata.Shmem807
import InitECandidate.Proofs.BackendStages.Metadata.Ffi808
import InitECandidate.Proofs.BackendStages.Metadata.Shmem808
import InitECandidate.Proofs.BackendStages.Metadata.Ffi809
import InitECandidate.Proofs.BackendStages.Metadata.Shmem809
import InitECandidate.Proofs.BackendStages.Metadata.Ffi810
import InitECandidate.Proofs.BackendStages.Metadata.Shmem810
import InitECandidate.Proofs.BackendStages.Metadata.Ffi811
import InitECandidate.Proofs.BackendStages.Metadata.Shmem811
import InitECandidate.Proofs.BackendStages.Metadata.Ffi812
import InitECandidate.Proofs.BackendStages.Metadata.Shmem812
import InitECandidate.Proofs.BackendStages.Metadata.Ffi813
import InitECandidate.Proofs.BackendStages.Metadata.Shmem813
import InitECandidate.Proofs.BackendStages.Metadata.Ffi814
import InitECandidate.Proofs.BackendStages.Metadata.Shmem814
import InitECandidate.Proofs.BackendStages.Metadata.Ffi815
import InitECandidate.Proofs.BackendStages.Metadata.Shmem815
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata

theorem ffiChunk800_815 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis815) : LabToTarget.findFfiNames ([Filtered800, Filtered801, Filtered802, Filtered803, Filtered804, Filtered805, Filtered806, Filtered807, Filtered808, Filtered809, Filtered810, Filtered811, Filtered812, Filtered813, Filtered814, Filtered815] ++ rest) = suffixFfis800 := by
  exact ffiStep800 _ ( ffiStep801 _ ( ffiStep802 _ ( ffiStep803 _ ( ffiStep804 _ ( ffiStep805 _ ( ffiStep806 _ ( ffiStep807 _ ( ffiStep808 _ ( ffiStep809 _ ( ffiStep810 _ ( ffiStep811 _ ( ffiStep812 _ ( ffiStep813 _ ( ffiStep814 _ ( ffiStep815 _ (h))))))))))))))))
theorem shmemChunk800_815 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo ([Padded800, Padded801, Padded802, Padded803, Padded804, Padded805, Padded806, Padded807, Padded808, Padded809, Padded810, Padded811, Padded812, Padded813, Padded814, Padded815] ++ rest) 846584 beforeFfis800 beforeShmem800 = LabToTarget.getShmemInfo rest 881848 afterFfis815 afterShmem815 := by
  simp only [List.cons_append, List.nil_append]
  change LabToTarget.getShmemInfo _ 846584 beforeFfis800 beforeShmem800 = _
  rw [shmemStep800]
  change LabToTarget.getShmemInfo _ 849808 beforeFfis801 beforeShmem801 = _
  rw [shmemStep801]
  change LabToTarget.getShmemInfo _ 857148 beforeFfis802 beforeShmem802 = _
  rw [shmemStep802]
  change LabToTarget.getShmemInfo _ 858696 beforeFfis803 beforeShmem803 = _
  rw [shmemStep803]
  change LabToTarget.getShmemInfo _ 861184 beforeFfis804 beforeShmem804 = _
  rw [shmemStep804]
  change LabToTarget.getShmemInfo _ 861960 beforeFfis805 beforeShmem805 = _
  rw [shmemStep805]
  change LabToTarget.getShmemInfo _ 865484 beforeFfis806 beforeShmem806 = _
  rw [shmemStep806]
  change LabToTarget.getShmemInfo _ 866132 beforeFfis807 beforeShmem807 = _
  rw [shmemStep807]
  change LabToTarget.getShmemInfo _ 866760 beforeFfis808 beforeShmem808 = _
  rw [shmemStep808]
  change LabToTarget.getShmemInfo _ 870996 beforeFfis809 beforeShmem809 = _
  rw [shmemStep809]
  change LabToTarget.getShmemInfo _ 871140 beforeFfis810 beforeShmem810 = _
  rw [shmemStep810]
  change LabToTarget.getShmemInfo _ 872412 beforeFfis811 beforeShmem811 = _
  rw [shmemStep811]
  change LabToTarget.getShmemInfo _ 874652 beforeFfis812 beforeShmem812 = _
  rw [shmemStep812]
  change LabToTarget.getShmemInfo _ 875924 beforeFfis813 beforeShmem813 = _
  rw [shmemStep813]
  change LabToTarget.getShmemInfo _ 878164 beforeFfis814 beforeShmem814 = _
  rw [shmemStep814]
  change LabToTarget.getShmemInfo _ 880788 beforeFfis815 beforeShmem815 = _
  rw [shmemStep815]
theorem symbolsChunk800_815 (rest : LabSem.LabProgHOL 64) : LabToTarget.getSymbols 846584 ([Padded800, Padded801, Padded802, Padded803, Padded804, Padded805, Padded806, Padded807, Padded808, Padded809, Padded810, Padded811, Padded812, Padded813, Padded814, Padded815] ++ rest) = [(800, 846584, 3224), (801, 849808, 7340), (802, 857148, 1548), (803, 858696, 2488), (804, 861184, 776), (805, 861960, 3524), (806, 865484, 648), (807, 866132, 628), (808, 866760, 4236), (809, 870996, 144), (810, 871140, 1272), (811, 872412, 2240), (812, 874652, 1272), (813, 875924, 2240), (814, 878164, 2624), (815, 880788, 1060)] ++ LabToTarget.getSymbols 881848 rest := by
  simp only [List.cons_append, List.nil_append, LabToTarget.getSymbols, symbolLength800, symbolLength801, symbolLength802, symbolLength803, symbolLength804, symbolLength805, symbolLength806, symbolLength807, symbolLength808, symbolLength809, symbolLength810, symbolLength811, symbolLength812, symbolLength813, symbolLength814, symbolLength815]
  rfl
#print axioms ffiChunk800_815
#print axioms shmemChunk800_815
#print axioms symbolsChunk800_815
end InitECandidate.Proofs.BackendStages.Metadata
