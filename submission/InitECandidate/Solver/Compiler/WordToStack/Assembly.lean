import InitECandidate.Solver.Compiler.WordToStack.CallHandler
import InitECandidate.Solver.Compiler.WordToStack.Control
import InitECandidate.Solver.Compiler.WordToStack.Leaves

/-!
# Bounded word → stack `comp_correct`

The `Call` dispatcher (copy of Flapjack's `CompCorrect/Call.lean` with `SimB`) and the
assembly of all 26 constructor cases by `evaluate_ind`, exactly as Flapjack's
`CompCorrect.compCorrect` (`CompCorrect/Assembly.lean`, pinned flapjack rev
034bb5a1ed0b757082768d5406206bd2f8e31b7c).
-/

set_option autoImplicit false

namespace Flapjack.WordToStackProofs.CompCorrect.Call
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.WordToStack.Native
open InitECandidate.Solver.Compiler.WordToStack

def OriginalInductionHypothesesB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat)
    (ret : Option (List Nat × WordLangCutsetsHOL × WordLangProgHOL (BitVec width) × Nat × Nat))
    (dest : Option Nat) (args : List Nat)
    (handler : Option (Nat × WordLangProgHOL (BitVec width) × Nat × Nat))
    (source : WordSemStateFiniteExact width (Nat × C) F) : Prop :=
    (∀ xs v3 args1 v10 prog ss v1 n v6 originalNames v9 retHandler v11 originalL1 originalL2 envs v5 s2 v8 x ys s1,
        WordSemStateFiniteExact.getVars args source = some xs ∧ ¬ wordSemBadDestArgs dest args = true ∧
        wordSemFindCode dest (wordSemAddRetLoc ret xs) source.code source.stackSize = some v3 ∧
        v3 = (args1, v10) ∧ v10 = (prog, ss) ∧ ret = some v1 ∧ v1 = (n, v6) ∧ v6 = (originalNames, v9) ∧
        v9 = (retHandler, v11) ∧ v11 = (originalL1, originalL2) ∧ ¬ (sptDomainEmpty originalNames.1 ∨ ¬ n.Nodup) ∧
        wordSemCutEnvs originalNames source.locals = some envs ∧ source.clock ≠ 0 ∧
        WordSemStateFiniteExact.evaluate prog (WordSemStateFiniteExact.callEnv args1 ss (WordSemStateFiniteExact.pushEnv envs handler (WordSemStateFiniteExact.decClock source))) = (v5, s2) ∧
        v5 = some v8 ∧ v8 = .result x ys ∧ ¬ (x ≠ .loc originalL1 originalL2 ∨ ys.length ≠ n.length) ∧
        WordSemStateFiniteExact.popEnv s2 = some s1 ∧ sptDomainEqUnion s1.locals envs.1 envs.2 →
      SimB ac S retHandler (WordSemStateFiniteExact.setVars n ys s1)) ∧
    (∀ xs v3 args1 v10 prog ss v1 n v6 originalNames v9 retHandler v11 originalL1 originalL2 envs v5 s2 v8 x' y v n' v2 h
        v4 originalL1' originalL2',
        WordSemStateFiniteExact.getVars args source = some xs ∧ ¬ wordSemBadDestArgs dest args = true ∧
        wordSemFindCode dest (wordSemAddRetLoc ret xs) source.code source.stackSize = some v3 ∧
        v3 = (args1, v10) ∧ v10 = (prog, ss) ∧ ret = some v1 ∧ v1 = (n, v6) ∧ v6 = (originalNames, v9) ∧
        v9 = (retHandler, v11) ∧ v11 = (originalL1, originalL2) ∧ ¬ (sptDomainEmpty originalNames.1 ∨ ¬ n.Nodup) ∧
        wordSemCutEnvs originalNames source.locals = some envs ∧ source.clock ≠ 0 ∧
        WordSemStateFiniteExact.evaluate prog (WordSemStateFiniteExact.callEnv args1 ss (WordSemStateFiniteExact.pushEnv envs handler (WordSemStateFiniteExact.decClock source))) = (v5, s2) ∧
        v5 = some v8 ∧ v8 = .exception x' y ∧ handler = some v ∧ v = (n', v2) ∧ v2 = (h, v4) ∧
        v4 = (originalL1', originalL2') ∧ x' = .loc originalL1' originalL2' ∧ sptDomainEqUnion s2.locals envs.1 envs.2 →
      SimB ac S h (WordSemStateFiniteExact.setVar n' y s2)) ∧
    (∀ xs v3 args1 v10 prog ss v1 n v6 originalNames v9 retHandler v11 originalL1 originalL2 envs,
        WordSemStateFiniteExact.getVars args source = some xs ∧ ¬ wordSemBadDestArgs dest args = true ∧
        wordSemFindCode dest (wordSemAddRetLoc ret xs) source.code source.stackSize = some v3 ∧
        v3 = (args1, v10) ∧ v10 = (prog, ss) ∧ ret = some v1 ∧ v1 = (n, v6) ∧ v6 = (originalNames, v9) ∧
        v9 = (retHandler, v11) ∧ v11 = (originalL1, originalL2) ∧ ¬ (sptDomainEmpty originalNames.1 ∨ ¬ n.Nodup) ∧
        wordSemCutEnvs originalNames source.locals = some envs ∧ source.clock ≠ 0 →
      SimB ac S prog (WordSemStateFiniteExact.callEnv args1 ss (WordSemStateFiniteExact.pushEnv envs handler (WordSemStateFiniteExact.decClock source)))) ∧
    (∀ xs v3 args1 v10 prog ss,
      WordSemStateFiniteExact.getVars args source = some xs ∧ ¬ wordSemBadDestArgs dest args = true ∧
      wordSemFindCode dest (wordSemAddRetLoc ret xs) source.code source.stackSize = some v3 ∧
      v3 = (args1,v10) ∧ v10 = (prog,ss) ∧ ret = none ∧ handler = none ∧ source.clock ≠ 0 →
      SimB ac S prog (WordSemStateFiniteExact.callEnv args1 ss (WordSemStateFiniteExact.decClock source)))

theorem returningCallCaseB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (values : List Nat) (names : WordLangCutsetsHOL)
    (retCode : WordLangProgHOL (BitVec width)) (l1 l2 : Nat) (dest : Option Nat) (args : List Nat)
    (handler : Option (Nat × WordLangProgHOL (BitVec width) × Nat × Nat))
    (source : WordSemStateFiniteExact width (Nat × C) F)
    (ih : OriginalInductionHypothesesB ac S (some (values,names,retCode,l1,l2)) dest args handler source) :
    SimB ac S (.call (some (values,names,retCode,l1,l2)) dest args handler) source := by
  cases handler with
  | none =>
    apply CallReturning.compCorrectCallReturningNoneB ac S values names retCode l1 l2 dest args source
    refine ⟨?_,?_⟩
    · intro xs args1 prog ss envs location ys calleePost popped facts
      rcases facts with ⟨⟨get,bad,find,valid,cut⟩,clock,run,checked,pop,domain⟩
      exact ih.1 xs (args1,prog,ss) args1 (prog,ss) prog ss
        (values,names,retCode,l1,l2) values (names,retCode,l1,l2) names (retCode,l1,l2)
        retCode (l1,l2) l1 l2 envs (some (.result location ys)) calleePost
        (.result location ys) location ys popped
        ⟨get,bad,find,rfl,rfl,rfl,rfl,rfl,rfl,rfl,valid,cut,clock,run,rfl,rfl,checked,pop,domain⟩
    · intro xs args1 prog ss envs facts
      rcases facts with ⟨⟨get,bad,find,valid,cut⟩,clock⟩
      exact ih.2.2.1 xs (args1,prog,ss) args1 (prog,ss) prog ss
        (values,names,retCode,l1,l2) values (names,retCode,l1,l2) names (retCode,l1,l2)
        retCode (l1,l2) l1 l2 envs
        ⟨get,bad,find,rfl,rfl,rfl,rfl,rfl,rfl,rfl,valid,cut,clock⟩
  | some descriptor =>
    rcases descriptor with ⟨handlerVar,handlerCode,h1,h2⟩
    exact CallReturningHandler.compCorrectCallReturningHandlerB ac S values names retCode l1 l2 dest args
      handlerVar h1 h2 handlerCode source ⟨ih.1,ih.2.1,ih.2.2.1⟩

theorem compCorrectCallB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat)
    (ret : Option (List Nat × WordLangCutsetsHOL × WordLangProgHOL (BitVec width) × Nat × Nat))
    (dest : Option Nat) (args : List Nat)
    (handler : Option (Nat × WordLangProgHOL (BitVec width) × Nat × Nat))
    (source : WordSemStateFiniteExact width (Nat × C) F)
    (ih : OriginalInductionHypothesesB ac S ret dest args handler source) :
    SimB ac S (.call ret dest args handler) source := by
  cases ret with
  | none =>
    intro k f frame sourcePost target result bs bsPost n nPost compiled lens facts bndSize bndCode
    apply CallTail.compCorrectCallTailB ac S dest args handler source ?_ k f frame sourcePost target
      result bs bsPost n nPost compiled lens facts bndSize bndCode
    intro xs args1 prog ss guards
    obtain ⟨get,bad,find,noHandler,clock⟩ := guards
    exact ih.2.2.2 xs (args1,prog,ss) args1 (prog,ss) prog ss
      ⟨get,bad,find,rfl,rfl,rfl,noHandler,clock⟩
  | some descriptor =>
    rcases descriptor with ⟨values,names,retCode,l1,l2⟩
    exact returningCallCaseB ac S values names retCode l1 l2 dest args handler source ih

end Flapjack.WordToStackProofs.CompCorrect.Call

namespace Flapjack.WordToStackProofs.CompCorrect
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.WordToStack.Native
open InitECandidate.Solver.Compiler.WordToStack

/-- Every program and state satisfies the bounded motive. -/
theorem simBAll {width : Nat} [NeZero width] {C F : Type} (ac : AsmConfigExact width) (S : Nat) :
    ∀ (program : WordLangProgHOL (BitVec width)) (source : WordSemStateFiniteExact width (Nat × C) F),
      SimB ac S program source := by
  apply WordSemStateFiniteExact.evaluate_ind (fun p s => SimB ac S p s)
  refine ⟨?skip, ?alloc, ?storeConsts, ?move, ?inst, ?assign, ?get, ?set, ?opCurrHeap, ?store,
    ?tick, ?mustTerminate, ?seq, ?ret, ?raise, ?brk, ?cont, ?ite, ?loop, ?locValue, ?install,
    ?codeBufferWrite, ?dataBufferWrite, ?ffi, ?shareInst, ?call⟩
  case skip => exact fun s k f frame _ _ _ _ _ _ _ _ _ h _ _ => compCorrectSkipB ac S k f frame s _ _ _ _ _ _ _ _ _ h
  case alloc => exact fun n names s k f frame _ _ _ _ _ _ _ _ _ h _ _ =>
    Alloc.compCorrectAllocB ac S n names k f frame s _ _ _ _ _ _ _ _ _ h
  case storeConsts => exact fun t1 t2 a o w s => StoreConsts.compCorrectStoreConstsB ac S t1 t2 a o w s
  case move => exact fun pri moves s => MoveFull.compCorrectMoveB ac S pri moves s
  case inst => exact fun i s => Inst.compCorrectInstB ac S i s
  case assign => exact fun v e s k f frame _ _ _ _ _ _ _ _ _ h _ _ =>
    Flat.compCorrectAssignB ac S v e k f frame s _ _ _ _ _ _ _ _ _ h
  case get => exact fun v name s => Get.compCorrectGetB ac S v name s
  case set => exact fun v e s => Set.compCorrectSetB ac S v e s
  case opCurrHeap => exact fun b d src s => OpCurrHeap.compCorrectOpCurrHeapB ac S b d src s
  case store => exact fun e v s k f frame _ _ _ _ _ _ _ _ _ h _ _ =>
    Flat.compCorrectStoreB ac S e v k f frame s _ _ _ _ _ _ _ _ _ h
  case tick => exact fun s k f frame _ _ _ _ _ _ _ _ _ h _ _ => Clock.compCorrectTickB ac S k f frame s _ _ _ _ _ _ _ _ _ h
  case mustTerminate => exact fun p s _ k f frame _ _ _ _ _ _ _ _ _ h _ _ =>
    Clock.compCorrectMustTerminateB ac S p k f frame s _ _ _ _ _ _ _ _ _ h
  case seq => exact fun c1 c2 s ih => Seq.compCorrectSeqB ac S c1 c2 s ih
  case ret => exact fun n ms s => Return.compCorrectReturnB ac S n ms s
  case raise => exact fun n s => Raise.compCorrectRaiseB ac S n s
  case brk => exact fun l s k f frame _ _ _ _ _ _ _ _ _ h _ _ => compCorrectBreakB ac S l k f frame s _ _ _ _ _ _ _ _ _ h
  case cont => exact fun l s k f frame _ _ _ _ _ _ _ _ _ h _ _ => compCorrectContinueB ac S l k f frame s _ _ _ _ _ _ _ _ _ h
  case ite => exact fun cmp r ri c1 c2 s ih => If.compCorrectIfB ac S cmp r ri c1 c2 s ih
  case loop => exact fun names c exitNames s ih => Loop.compCorrectLoopB ac S names exitNames c s ih
  case locValue => exact fun r l s => LocValue.compCorrectLocValueB ac S r l s
  case install => exact fun p l dp dl names s => Install.compCorrectInstallB ac S p l dp dl names s
  case codeBufferWrite => exact fun r1 r2 s => CodeBufferWrite.compCorrectCodeBufferWriteB ac S r1 r2 s
  case dataBufferWrite => exact fun r1 r2 s => DataBufferWrite.compCorrectDataBufferWriteB ac S r1 r2 s
  case ffi => exact fun i p1 l1 p2 l2 names s k f frame _ _ _ _ _ _ _ _ _ h _ _ =>
    FFI.compCorrectFFIB ac S i p1 l1 p2 l2 names k f frame s _ _ _ _ _ _ _ _ _ h
  case shareInst => exact fun op v e s => ShareInst.compCorrectShareInstB ac S op v e s
  case call => exact fun ret dest args handler s ih => Call.compCorrectCallB ac S ret dest args handler s ih

end Flapjack.WordToStackProofs.CompCorrect

namespace InitECandidate.Solver.Compiler.WordToStack

open Flapjack Flapjack.WordToStackProofs Flapjack.WordToStackProofs.CompCorrect
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.WordToStack.Native

/-- **Bounded `comp_correct` (word → stack).** Flapjack's `CompCorrect.compCorrect` (same
premises, same conclusion) under two extra hypotheses — the program has node count
`wsize program ≤ S`, and every procedure body of `source.code` and every program the compile
oracle can install has `wsize ≤ S` (`CodeBoundedW S source`) — with the extra stack clock
bounded by

  `extraClock ≤ (S + 1) * (source.clock - sourcePost.clock) + wsize program`.

(The witnesses are `0` except `1` per executed `Raise` — a call to the raise stub, which
ticks — and `1` per executed `ShareInst` — the stack `ShMemOp` ticks; `Seq`, `Loop` and calls
add the witnesses of their parts, and the word tick of each loop iteration or call pays for the
size `≤ S` of the body it enters.) In potential form, without subtraction:
`extraClock + (S + 1) * sourcePost.clock ≤ (S + 1) * source.clock + wsize program`. -/
theorem compCorrect_bounded {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) :
    ∀ (program : WordLangProgHOL (BitVec width))
      (source : WordSemStateFiniteExact width (Nat × C) F),
  ∀ (k f frame : Nat)
    (sourcePost : WordSemStateFiniteExact width (Nat × C) F)
    (target : StackSemStateFiniteExact width C F)
    (result : Option (WordSemResult width))
    (bs bsPost : AppList (BitVec width)) (n nPost : Nat)
    (compiled : HolProg width) (lens : List Nat),
    (WordSemStateFiniteExact.evaluate program source = (result, sourcePost) ∧
      result ≠ some .error ∧ stateRel ac k f frame source target lens 0 ∧
      postAllocConventionsHOL k program = true ∧ flatExpConventions program = true ∧
      compNative ac false program (bs, n) (k, f, frame) = (compiled, (bsPost, nPost)) ∧
      (appListAppend bs).length ≤ n ∧
      n - (appListAppend bs).length ≤ target.bitmaps.length ∧
      List.IsPrefix (appListAppend bsPost) (target.bitmaps.drop (n - (appListAppend bs).length)) ∧
      (∀ loc, StackSem.getLabelsExact compiled loc → StackSem.locCheckExact target.code loc) ∧
      maxVarHOL program < 2 * frame + 2 * k) →
    wsize program ≤ S → CodeBoundedW S source →
    ∃ (extraClock : Nat) (targetPost : StackSemStateFiniteExact width C F)
      (targetResult : Option (StackSemResult width)),
      StackSemEvaluate.evaluate (compiled, {target with clock := target.clock + extraClock}) =
        (targetResult, targetPost) ∧
      compCorrectResult ac k f frame source sourcePost targetPost result targetResult lens ∧
      extraClock ≤ (S + 1) * (source.clock - sourcePost.clock) + wsize program := by
  intro program source k f frame sourcePost target result bs bsPost n nPost compiled lens h hs hc
  obtain ⟨e, t, r, run, rel, bound⟩ := simBAll ac S program source k f frame sourcePost target
    result bs bsPost n nPost compiled lens h hs hc
  exact ⟨e, t, r, run, rel, bound_sub bound⟩

end InitECandidate.Solver.Compiler.WordToStack
