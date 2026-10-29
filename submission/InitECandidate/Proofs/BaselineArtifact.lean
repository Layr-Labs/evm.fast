import InitECandidate.Proofs.CompilerFacts
import InitECandidate.Proofs.ArtifactFacts

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false

namespace InitE
open Flapjack

/-- Compiler artifact using the fixed validated allocation tape; submitted
literal bytes are linked separately by the artifact certificate. -/
def baselineArtifact : RiscV.NativeSource.Artifact :=
  Pancake.Proofs.PanToTarget.compileProgAsmFast baselineCompilerConfig
    Compiler.Encoders.RiscV.Target.riscvConfig sourceDeclarations

/-- Certified literal metadata, so installation facts do not recompile the guest. -/
def baselineConfig : Compiler.Backend.Backend.Config := baselineConfigLiteralWithOracles

def baselineOutput : RiscV.NativeSource.Output :=
  { declarations := sourceDeclarations
    artifact := baselineArtifact
    warnings := [] }

theorem baseline_artifact_complete :
    baselineArtifact = some (InitECandidate.nativeCode, InitECandidate.bitmaps, baselineConfig) :=
  baseline_compiler_artifact_eq

/-- Successful AST compilation is certified by `baseline_artifact_complete`.
This output records that AST and its compiler artifact without parsing text. -/
theorem baseline_ast_compilation :
    baselineOutput.declarations = sourceDeclarations ∧
      baselineOutput.artifact = Pancake.Proofs.PanToTarget.compileProgAsmFast
        baselineCompilerConfig Compiler.Encoders.RiscV.Target.riscvConfig sourceDeclarations :=
  ⟨rfl, rfl⟩

end InitE
