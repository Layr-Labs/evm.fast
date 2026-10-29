import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile

namespace InitECandidate.Proofs.StackFrameComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.Asm

def frameSize {width : Nat} [NeZero width] (registerCount argumentCount : Nat)
    (program : WordLangProgHOL (BitVec width)) : Nat :=
  let stackArguments := argumentCount - registerCount
  let stackVariables := max ((maxVarHOL program / 2 + 1) - registerCount) stackArguments
  if stackVariables = 0 then 0 else stackVariables + 1

theorem frameMapEntries_eq {width : Nat} [NeZero width]
    (conf : AsmConfigExact width) (perf : Bool) (registerCount : Nat)
    (programs : List (Nat × Nat × WordLangProgHOL (BitVec width)))
    (bitmaps : AppList (BitVec width) × Nat) :
    let compiled := WordToStack.Native.compileWordToStackNative conf perf registerCount programs bitmaps
    (compiled.1.zip compiled.2.1).map (fun ((identifier, _), frame) => (identifier, frame)) =
      programs.map (fun (identifier, arguments, body) =>
        (identifier, frameSize registerCount arguments body)) := by
  induction programs generalizing bitmaps with
  | nil => rfl
  | cons entry rest ih =>
    rcases entry with ⟨identifier, arguments, body⟩
    simp only [WordToStack.Native.compileWordToStackNative,
      WordToStack.Native.compileProgNative, frameSize]
    try dsimp only
    rw [List.zip_cons_cons, List.map_cons, ih]
    rfl

/-- Frame analysis needs only argument counts and maximum registers;
compiling stack bodies and bitmap contents cannot affect this projection. -/
theorem frameMap_eq {width : Nat} [NeZero width]
    (conf : AsmConfigExact width) (perf : Bool)
    (programs : List (Nat × Nat × WordLangProgHOL (BitVec width))) :
    (WordToStack.Native.compileNative conf perf programs).2.1.stackFrameSize =
      sptFromAList (programs.map (fun (identifier, arguments, body) =>
        (identifier, frameSize (conf.regCount - (5 + conf.avoidRegs.length)) arguments body))) := by
  unfold WordToStack.Native.compileNative
  dsimp only
  rw [frameMapEntries_eq]

#print axioms frameMapEntries_eq
#print axioms frameMap_eq
end InitECandidate.Proofs.StackFrameComputation
