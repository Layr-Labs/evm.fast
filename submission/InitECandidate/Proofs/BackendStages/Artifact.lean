import InitECandidate.Proofs.BackendStages.ArtifactConfig
import InitECandidate.Proofs.BackendStages.Native
import InitECandidate.Proofs.BackendStages.Bitmaps
import InitECandidate.Proofs.BackendStages.Sections
import InitECandidate.Proofs.BackendStages.Filtered
import InitECandidate.Proofs.BackendStages.Encoded
import InitECandidate.Proofs.BackendStages.Final
import InitECandidate.Proofs.BackendStages.Bytes
import InitECandidate.Proofs.BackendStages.ByteAgreement
import InitECandidate.Proofs.BackendStages.ZeroLabels
import InitECandidate.Proofs.BackendStages.Metadata.Facts
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialOrigin
import InitECandidate.Proofs.BackendStages.TargetChecks.Phase1
import InitECandidate.Proofs.BackendStages.TargetChecks.LabelEndpoints
import InitECandidate.Proofs.BackendStages.TargetChecks.FinalLabelComposition
import InitECandidate.Proofs.BackendStages.TargetChecks.FinalLabels
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Artifact
open TargetChecks
private theorem aligned_eq :
    LabToTarget.updLabLen 0 Phase1.program = Final.aligned0 := by
  exact Final.alignment0_eq
private theorem stable_eq :
    LabToTarget.removeLabelsLoop 4 riscvConfig 0 .ln Target.ffis Phase0.program =
      some (Final.padded0, Target.labelsFinal) :=
  InitECandidate.Proofs.BackendComputation.removeLabelsLoop_of_stages
    4 0 riscvConfig .ln Target.labels1 Target.labelsFinal Target.ffis
    Phase0.program Phase1.program Final.aligned0 Final.final0 Final.padded0
    Phase1.labels_eq Phase1.encode_eq aligned_eq FinalLabels.compute_eq
    Final.rewrite0_eq Final.padding0_eq Final.valid0 ZeroLabels.valid
private theorem retry_eq :
    LabToTarget.removeLabelsLoop 5 riscvConfig 0 .ln Target.ffis Initial.program =
      some (Final.padded0, Target.labelsFinal) :=
  InitECandidate.Proofs.BackendComputation.removeLabelsLoop_of_retry
    4 0 riscvConfig .ln Target.labels0 Target.ffis Initial.program Phase0.program
    (some (Final.padded0, Target.labelsFinal)) Phase0.labels_eq Phase0.encode_eq stable_eq
private theorem removeLabels_eq :
    LabToTarget.removeLabels RiscVConfig.pancakeRiscVBackendConfig.labConf.initClock
      riscvConfig RiscVConfig.pancakeRiscVBackendConfig.labConf.pos
      RiscVConfig.pancakeRiscVBackendConfig.labConf.labels Target.ffis Filtered.program =
      some (Final.padded0, Target.labelsFinal) := by
  change LabToTarget.removeLabels 5 riscvConfig 0 .ln Target.ffis Filtered.program = _
  unfold LabToTarget.removeLabels
  rw [Encoded.compile_eq, Initial.origin_eq]
  exact retry_eq
private theorem target_eq :
    LabToTarget.compile riscvConfig RiscVConfig.pancakeRiscVBackendConfig.labConf
      Sections.program = some (InitECandidate.nativeCode, InitE.baselineLabConfig) := by
  have bytes : LabToTarget.progToBytes Final.padded0 = InitECandidate.nativeCode :=
    Bytes.compile_eq.trans BytePieces.nativeCode_eq
  have compiled := InitECandidate.Proofs.BackendComputation.compileLab_of_stages
    riscvConfig RiscVConfig.pancakeRiscVBackendConfig.labConf Filtered.program Final.padded0
    Target.labelsFinal Target.ffis Metadata.shmemFfis InitE.baselineLabConfig.shmemExtra
    InitECandidate.nativeCode InitE.baselineLabConfig.secPosLen
    rfl Metadata.ffi_eq removeLabels_eq bytes Metadata.shmem_eq Metadata.symbols_eq
  have config := ArtifactConfig.lab_eq Target.labelsFinal Target.ffis Metadata.shmemFfis
    InitE.baselineLabConfig.shmemExtra InitE.baselineLabConfig.secPosLen
    labelsFinal_eq_baseline Metadata.ffiNames_eq rfl rfl
  dsimp only at config
  have position : RiscVConfig.pancakeRiscVBackendConfig.labConf.pos = 0 := rfl
  rw [position] at compiled
  rw [config] at compiled
  unfold LabToTarget.compile
  rw [Filtered.compile_eq]
  exact compiled
theorem fromStack_default_eq :
    Backend.fromStack riscvConfig RiscVConfig.pancakeRiscVBackendConfig .ln
      Native.stack Native.bitmaps =
    some (InitECandidate.nativeCode, InitECandidate.bitmaps, InitE.baselineConfigLiteral) := by
  apply InitECandidate.Proofs.BackendComputation.fromStack_of_stages riscvConfig
    RiscVConfig.pancakeRiscVBackendConfig .ln Native.stack Sections.program Native.bitmaps
    (some (InitECandidate.nativeCode, InitECandidate.bitmaps, InitE.baselineConfigLiteral))
    Sections.compile_eq
  have lab := InitECandidate.Proofs.BackendComputation.fromLab_of_target riscvConfig
    RiscVConfig.pancakeRiscVBackendConfig .ln Sections.program Native.bitmaps
    InitECandidate.nativeCode InitE.baselineLabConfig target_eq
  rw [Native.bitmaps_eq, ArtifactConfig.config_eq] at lab
  exact lab
theorem fromStack_eq (w : WordToWord.Config) :
    Backend.fromStack riscvConfig
      { RiscVConfig.pancakeRiscVBackendConfig with wordToWordConf := w } .ln
      Native.stack Native.bitmaps =
    some (InitECandidate.nativeCode, InitECandidate.bitmaps,
      { InitE.baselineConfigLiteral with wordToWordConf := w }) := by
  rw [InitECandidate.Proofs.BackendComputation.fromStack_wordConfig_update, fromStack_default_eq]
  rfl
#print axioms fromStack_default_eq
#print axioms fromStack_eq
end InitECandidate.Proofs.BackendStages.Artifact
