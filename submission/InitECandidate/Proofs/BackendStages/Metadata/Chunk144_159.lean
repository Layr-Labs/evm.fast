import InitECandidate.Proofs.BackendStages.Metadata.Ffi144
import InitECandidate.Proofs.BackendStages.Metadata.Shmem144
import InitECandidate.Proofs.BackendStages.Metadata.Ffi145
import InitECandidate.Proofs.BackendStages.Metadata.Shmem145
import InitECandidate.Proofs.BackendStages.Metadata.Ffi146
import InitECandidate.Proofs.BackendStages.Metadata.Shmem146
import InitECandidate.Proofs.BackendStages.Metadata.Ffi147
import InitECandidate.Proofs.BackendStages.Metadata.Shmem147
import InitECandidate.Proofs.BackendStages.Metadata.Ffi148
import InitECandidate.Proofs.BackendStages.Metadata.Shmem148
import InitECandidate.Proofs.BackendStages.Metadata.Ffi149
import InitECandidate.Proofs.BackendStages.Metadata.Shmem149
import InitECandidate.Proofs.BackendStages.Metadata.Ffi150
import InitECandidate.Proofs.BackendStages.Metadata.Shmem150
import InitECandidate.Proofs.BackendStages.Metadata.Ffi151
import InitECandidate.Proofs.BackendStages.Metadata.Shmem151
import InitECandidate.Proofs.BackendStages.Metadata.Ffi152
import InitECandidate.Proofs.BackendStages.Metadata.Shmem152
import InitECandidate.Proofs.BackendStages.Metadata.Ffi153
import InitECandidate.Proofs.BackendStages.Metadata.Shmem153
import InitECandidate.Proofs.BackendStages.Metadata.Ffi154
import InitECandidate.Proofs.BackendStages.Metadata.Shmem154
import InitECandidate.Proofs.BackendStages.Metadata.Ffi155
import InitECandidate.Proofs.BackendStages.Metadata.Shmem155
import InitECandidate.Proofs.BackendStages.Metadata.Ffi156
import InitECandidate.Proofs.BackendStages.Metadata.Shmem156
import InitECandidate.Proofs.BackendStages.Metadata.Ffi157
import InitECandidate.Proofs.BackendStages.Metadata.Shmem157
import InitECandidate.Proofs.BackendStages.Metadata.Ffi158
import InitECandidate.Proofs.BackendStages.Metadata.Shmem158
import InitECandidate.Proofs.BackendStages.Metadata.Ffi159
import InitECandidate.Proofs.BackendStages.Metadata.Shmem159
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata

theorem ffiChunk144_159 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis159) : LabToTarget.findFfiNames ([Filtered144, Filtered145, Filtered146, Filtered147, Filtered148, Filtered149, Filtered150, Filtered151, Filtered152, Filtered153, Filtered154, Filtered155, Filtered156, Filtered157, Filtered158, Filtered159] ++ rest) = suffixFfis144 := by
  exact ffiStep144 _ ( ffiStep145 _ ( ffiStep146 _ ( ffiStep147 _ ( ffiStep148 _ ( ffiStep149 _ ( ffiStep150 _ ( ffiStep151 _ ( ffiStep152 _ ( ffiStep153 _ ( ffiStep154 _ ( ffiStep155 _ ( ffiStep156 _ ( ffiStep157 _ ( ffiStep158 _ ( ffiStep159 _ (h))))))))))))))))
theorem shmemChunk144_159 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo ([Padded144, Padded145, Padded146, Padded147, Padded148, Padded149, Padded150, Padded151, Padded152, Padded153, Padded154, Padded155, Padded156, Padded157, Padded158, Padded159] ++ rest) 29520 beforeFfis144 beforeShmem144 = LabToTarget.getShmemInfo rest 87592 afterFfis159 afterShmem159 := by
  simp only [List.cons_append, List.nil_append]
  change LabToTarget.getShmemInfo _ 29520 beforeFfis144 beforeShmem144 = _
  rw [shmemStep144]
  change LabToTarget.getShmemInfo _ 30172 beforeFfis145 beforeShmem145 = _
  rw [shmemStep145]
  change LabToTarget.getShmemInfo _ 30392 beforeFfis146 beforeShmem146 = _
  rw [shmemStep146]
  change LabToTarget.getShmemInfo _ 31148 beforeFfis147 beforeShmem147 = _
  rw [shmemStep147]
  change LabToTarget.getShmemInfo _ 32292 beforeFfis148 beforeShmem148 = _
  rw [shmemStep148]
  change LabToTarget.getShmemInfo _ 32796 beforeFfis149 beforeShmem149 = _
  rw [shmemStep149]
  change LabToTarget.getShmemInfo _ 33092 beforeFfis150 beforeShmem150 = _
  rw [shmemStep150]
  change LabToTarget.getShmemInfo _ 33272 beforeFfis151 beforeShmem151 = _
  rw [shmemStep151]
  change LabToTarget.getShmemInfo _ 51600 beforeFfis152 beforeShmem152 = _
  rw [shmemStep152]
  change LabToTarget.getShmemInfo _ 51844 beforeFfis153 beforeShmem153 = _
  rw [shmemStep153]
  change LabToTarget.getShmemInfo _ 53120 beforeFfis154 beforeShmem154 = _
  rw [shmemStep154]
  change LabToTarget.getShmemInfo _ 83024 beforeFfis155 beforeShmem155 = _
  rw [shmemStep155]
  change LabToTarget.getShmemInfo _ 84200 beforeFfis156 beforeShmem156 = _
  rw [shmemStep156]
  change LabToTarget.getShmemInfo _ 86072 beforeFfis157 beforeShmem157 = _
  rw [shmemStep157]
  change LabToTarget.getShmemInfo _ 86444 beforeFfis158 beforeShmem158 = _
  rw [shmemStep158]
  change LabToTarget.getShmemInfo _ 87580 beforeFfis159 beforeShmem159 = _
  rw [shmemStep159]
theorem symbolsChunk144_159 (rest : LabSem.LabProgHOL 64) : LabToTarget.getSymbols 29520 ([Padded144, Padded145, Padded146, Padded147, Padded148, Padded149, Padded150, Padded151, Padded152, Padded153, Padded154, Padded155, Padded156, Padded157, Padded158, Padded159] ++ rest) = [(144, 29520, 652), (145, 30172, 220), (146, 30392, 756), (147, 31148, 1144), (148, 32292, 504), (149, 32796, 296), (150, 33092, 180), (151, 33272, 18328), (152, 51600, 244), (153, 51844, 1276), (154, 53120, 29904), (155, 83024, 1176), (156, 84200, 1872), (157, 86072, 372), (158, 86444, 1136), (159, 87580, 12)] ++ LabToTarget.getSymbols 87592 rest := by
  simp only [List.cons_append, List.nil_append, LabToTarget.getSymbols, symbolLength144, symbolLength145, symbolLength146, symbolLength147, symbolLength148, symbolLength149, symbolLength150, symbolLength151, symbolLength152, symbolLength153, symbolLength154, symbolLength155, symbolLength156, symbolLength157, symbolLength158, symbolLength159]
  rfl
#print axioms ffiChunk144_159
#print axioms shmemChunk144_159
#print axioms symbolsChunk144_159
end InitECandidate.Proofs.BackendStages.Metadata
