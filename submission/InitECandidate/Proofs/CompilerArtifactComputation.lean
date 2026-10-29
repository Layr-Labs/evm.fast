import Flapjack.Pancake.Proofs.PanToTarget.ExecutableCompileDefinitions
set_option autoImplicit false
namespace InitECandidate.Proofs.CompilerArtifactComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.Asm
open Flapjack.Pancake.PanLang Flapjack.Pancake.Proofs.PanToTarget

/-- Connect checked frontend, optimizer and native stages to the artifact-only API.
The executable API passes the original backend configuration to fromStack. -/
theorem artifact_of_stages {width : Nat} [NeZero width]
    (ra : WordToWord.RegAllocFn) (config : Backend.Config) (target : AsmConfigExact width)
    (declarations : List (DeclHOL width))
    (frontend optimized : List (Nat × Nat × WordLangProgHOL (BitVec width)))
    (remaining : List (Option (Spt Nat)))
    (bitmaps : List (BitVec width)) (wordConfig : WordToStack.Native.Config)
    (frames : List Nat) (stack : List (Nat × StackLang.HolProg width))
    (artifact : Option (List (BitVec 8) × List (BitVec width) × Backend.Config))
    (frontend_eq : panToWordCompileProgHOL target.isa declarations = frontend)
    (optimizer_eq : WordToWord.compileWith ra config.wordToWordConf target frontend =
      (remaining, optimized))
    (native_eq : WordToStack.Native.compileNative target false optimized =
      (bitmaps, wordConfig, frames, stack))
    (stack_eq : Backend.fromStack target config .ln stack bitmaps = artifact) :
    compileProgAsmWith ra config target declarations = artifact := by
  unfold compileProgAsmWith
  rw [frontend_eq]
  dsimp only
  rw [optimizer_eq]
  dsimp only
  rw [native_eq]
  exact stack_eq

#print axioms artifact_of_stages
end InitECandidate.Proofs.CompilerArtifactComputation
