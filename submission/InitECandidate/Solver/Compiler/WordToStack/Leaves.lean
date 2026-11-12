import InitECandidate.Solver.Compiler.WordToStack.Basic

/-!
# Bounded word → stack `comp_correct`: the leaf constructors

Each theorem `compCorrectXB` is Flapjack's `compCorrectX` (pinned flapjack rev
034bb5a1ed0b757082768d5406206bd2f8e31b7c, `WordToStack/Proofs/CompCorrect/X.lean`) with its proof
unchanged, except that the produced witness (`0`, or `1` for `Raise` and `ShareInst`, whose
compiled code calls the raise stub / runs a ticking `ShMemOp`) is shown to satisfy the bound
of `SimB` (`boundZero` / `boundOne`). The declarations live in Flapjack's namespaces so that
the copied proofs resolve names exactly as the originals do.
-/

set_option autoImplicit false

namespace Flapjack.WordToStackProofs.CompCorrect
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.WordToStack.Native
open InitECandidate.Solver.Compiler.WordToStack

theorem compCorrectSkipB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (k f frame : Nat)
    (source sourcePost : WordSemStateFiniteExact width (Nat × C) F)
    (target : StackSemStateFiniteExact width C F)
    (result : Option (WordSemResult width))
    (bs bsPost : AppList (BitVec width)) (n nPost : Nat)
    (compiled : HolProg width) (lens : List Nat)
    (premises : WordSemStateFiniteExact.evaluate .skip source = (result, sourcePost) ∧
      result ≠ some .error ∧ stateRel ac k f frame source target lens 0 ∧
      postAllocConventionsHOL k (.skip : WordLangProgHOL (BitVec width)) = true ∧ flatExpConventions (.skip : WordLangProgHOL (BitVec width)) = true ∧
      compNative ac false .skip (bs, n) (k, f, frame) = (compiled, (bsPost, nPost)) ∧
      (appListAppend bs).length ≤ n ∧
      n - (appListAppend bs).length ≤ target.bitmaps.length ∧
      List.IsPrefix (appListAppend bsPost) (target.bitmaps.drop (n - (appListAppend bs).length)) ∧
      (∀ loc, StackSem.getLabelsExact compiled loc → StackSem.locCheckExact target.code loc) ∧
      maxVarHOL (.skip : WordLangProgHOL (BitVec width)) < 2 * frame + 2 * k) :
    ∃ (extraClock : Nat) (targetPost : StackSemStateFiniteExact width C F)
      (targetResult : Option (StackSemResult width)),
      StackSemEvaluate.evaluate (compiled, {target with clock := target.clock + extraClock}) =
        (targetResult, targetPost) ∧
      compCorrectResult ac k f frame source sourcePost targetPost result targetResult lens ∧
      extraClock + (S + 1) * sourcePost.clock ≤ (S + 1) * source.clock + wsize (.skip : WordLangProgHOL (BitVec width)) := by
  have hbound := boundZero S premises.1
  have execution := premises.1
  simp only [WordSemStateFiniteExact.evaluate] at execution
  obtain ⟨resultEq, postEq⟩ := Prod.mk.inj execution
  have compilation := premises.2.2.2.2.2.1
  have programEq := congrArg Prod.fst compilation
  simp only [compNative] at programEq
  subst compiled
  subst result
  subst sourcePost
  refine ⟨0, target, none, ?_, ?_, hbound⟩
  · simp only [Nat.add_zero, StackSemEvaluate.evaluate_skip]
  · simpa only [compCorrectResult, compileResult, Option.map_some, Option.map_none,
      ne_eq, not_true_eq_false, ↓reduceIte] using premises.2.2.1

end Flapjack.WordToStackProofs.CompCorrect

namespace Flapjack.WordToStackProofs.CompCorrect
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.WordToStack.Native
open InitECandidate.Solver.Compiler.WordToStack

theorem compCorrectBreakB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (label : Nat) (k f frame : Nat)
    (source sourcePost : WordSemStateFiniteExact width (Nat × C) F)
    (target : StackSemStateFiniteExact width C F)
    (result : Option (WordSemResult width))
    (bs bsPost : AppList (BitVec width)) (n nPost : Nat)
    (compiled : HolProg width) (lens : List Nat)
    (premises : WordSemStateFiniteExact.evaluate (.break label) source = (result, sourcePost) ∧
      result ≠ some .error ∧ stateRel ac k f frame source target lens 0 ∧
      postAllocConventionsHOL k ((.break label) : WordLangProgHOL (BitVec width)) = true ∧ flatExpConventions ((.break label) : WordLangProgHOL (BitVec width)) = true ∧
      compNative ac false (.break label) (bs, n) (k, f, frame) = (compiled, (bsPost, nPost)) ∧
      (appListAppend bs).length ≤ n ∧
      n - (appListAppend bs).length ≤ target.bitmaps.length ∧
      List.IsPrefix (appListAppend bsPost) (target.bitmaps.drop (n - (appListAppend bs).length)) ∧
      (∀ loc, StackSem.getLabelsExact compiled loc → StackSem.locCheckExact target.code loc) ∧
      maxVarHOL ((.break label) : WordLangProgHOL (BitVec width)) < 2 * frame + 2 * k) :
    ∃ (extraClock : Nat) (targetPost : StackSemStateFiniteExact width C F)
      (targetResult : Option (StackSemResult width)),
      StackSemEvaluate.evaluate (compiled, {target with clock := target.clock + extraClock}) =
        (targetResult, targetPost) ∧
      compCorrectResult ac k f frame source sourcePost targetPost result targetResult lens ∧
      extraClock + (S + 1) * sourcePost.clock ≤ (S + 1) * source.clock + wsize (.break label : WordLangProgHOL (BitVec width)) := by
  have hbound := boundZero S premises.1
  have execution := premises.1
  simp only [WordSemStateFiniteExact.evaluate] at execution
  obtain ⟨resultEq, postEq⟩ := Prod.mk.inj execution
  have compilation := premises.2.2.2.2.2.1
  have programEq := congrArg Prod.fst compilation
  simp only [compNative] at programEq
  subst compiled
  subst result
  subst sourcePost
  refine ⟨0, target, some (.break label), ?_, ?_, hbound⟩
  · simp only [Nat.add_zero, StackSemEvaluate.evaluate_break]
  · simpa only [compCorrectResult, compileResult, Option.map_some, Option.map_none,
      ne_eq, not_true_eq_false, ↓reduceIte] using premises.2.2.1

end Flapjack.WordToStackProofs.CompCorrect

namespace Flapjack.WordToStackProofs.CompCorrect
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.WordToStack.Native
open InitECandidate.Solver.Compiler.WordToStack

theorem compCorrectContinueB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (label : Nat) (k f frame : Nat)
    (source sourcePost : WordSemStateFiniteExact width (Nat × C) F)
    (target : StackSemStateFiniteExact width C F)
    (result : Option (WordSemResult width))
    (bs bsPost : AppList (BitVec width)) (n nPost : Nat)
    (compiled : HolProg width) (lens : List Nat)
    (premises : WordSemStateFiniteExact.evaluate (.continue label) source = (result, sourcePost) ∧
      result ≠ some .error ∧ stateRel ac k f frame source target lens 0 ∧
      postAllocConventionsHOL k ((.continue label) : WordLangProgHOL (BitVec width)) = true ∧ flatExpConventions ((.continue label) : WordLangProgHOL (BitVec width)) = true ∧
      compNative ac false (.continue label) (bs, n) (k, f, frame) = (compiled, (bsPost, nPost)) ∧
      (appListAppend bs).length ≤ n ∧
      n - (appListAppend bs).length ≤ target.bitmaps.length ∧
      List.IsPrefix (appListAppend bsPost) (target.bitmaps.drop (n - (appListAppend bs).length)) ∧
      (∀ loc, StackSem.getLabelsExact compiled loc → StackSem.locCheckExact target.code loc) ∧
      maxVarHOL ((.continue label) : WordLangProgHOL (BitVec width)) < 2 * frame + 2 * k) :
    ∃ (extraClock : Nat) (targetPost : StackSemStateFiniteExact width C F)
      (targetResult : Option (StackSemResult width)),
      StackSemEvaluate.evaluate (compiled, {target with clock := target.clock + extraClock}) =
        (targetResult, targetPost) ∧
      compCorrectResult ac k f frame source sourcePost targetPost result targetResult lens ∧
      extraClock + (S + 1) * sourcePost.clock ≤ (S + 1) * source.clock + wsize (.continue label : WordLangProgHOL (BitVec width)) := by
  have hbound := boundZero S premises.1
  have execution := premises.1
  simp only [WordSemStateFiniteExact.evaluate] at execution
  obtain ⟨resultEq, postEq⟩ := Prod.mk.inj execution
  have compilation := premises.2.2.2.2.2.1
  have programEq := congrArg Prod.fst compilation
  simp only [compNative] at programEq
  subst compiled
  subst result
  subst sourcePost
  refine ⟨0, target, some (.continue label), ?_, ?_, hbound⟩
  · simp only [Nat.add_zero, StackSemEvaluate.evaluate_continue]
  · simpa only [compCorrectResult, compileResult, Option.map_some, Option.map_none,
      ne_eq, not_true_eq_false, ↓reduceIte] using premises.2.2.1

end Flapjack.WordToStackProofs.CompCorrect

namespace Flapjack.WordToStackProofs.CompCorrect.Clock
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.WordToStack.Native
open InitECandidate.Solver.Compiler.WordToStack

theorem compCorrectTickB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (k f frame : Nat)
    (source sourcePost : WordSemStateFiniteExact width (Nat × C) F)
    (target : StackSemStateFiniteExact width C F)
    (result : Option (WordSemResult width))
    (bs bsPost : AppList (BitVec width)) (n nPost : Nat)
    (compiled : HolProg width) (lens : List Nat)
    (premises : WordSemStateFiniteExact.evaluate .tick source = (result, sourcePost) ∧
      result ≠ some .error ∧ stateRel ac k f frame source target lens 0 ∧
      postAllocConventionsHOL k (.tick : WordLangProgHOL (BitVec width)) = true ∧ flatExpConventions (.tick : WordLangProgHOL (BitVec width)) = true ∧
      compNative ac false .tick (bs, n) (k, f, frame) = (compiled, (bsPost, nPost)) ∧
      (appListAppend bs).length ≤ n ∧
      n - (appListAppend bs).length ≤ target.bitmaps.length ∧
      List.IsPrefix (appListAppend bsPost) (target.bitmaps.drop (n - (appListAppend bs).length)) ∧
      (∀ loc, StackSem.getLabelsExact compiled loc → StackSem.locCheckExact target.code loc) ∧
      maxVarHOL (.tick : WordLangProgHOL (BitVec width)) < 2 * frame + 2 * k) :
    ∃ (extraClock : Nat) (targetPost : StackSemStateFiniteExact width C F)
      (targetResult : Option (StackSemResult width)),
      StackSemEvaluate.evaluate (compiled, {target with clock := target.clock + extraClock}) =
        (targetResult, targetPost) ∧
      compCorrectResult ac k f frame source sourcePost targetPost result targetResult lens ∧
      extraClock + (S + 1) * sourcePost.clock ≤ (S + 1) * source.clock + wsize (.tick : WordLangProgHOL (BitVec width)) := by
  have hbound := boundZero S premises.1
  have related := premises.2.2.1
  have clocks : source.clock = target.clock := by
    unfold stateRel at related
    exact related.1
  have programEq := congrArg Prod.fst premises.2.2.2.2.2.1
  simp only [compNative] at programEq
  subst compiled
  have execution := premises.1
  rw [WordSemStateFiniteExact.evaluate] at execution
  by_cases zero : source.clock = 0
  · simp only [zero, ↓reduceIte] at execution
    obtain ⟨resultEq, postEq⟩ := Prod.mk.inj execution
    subst result
    subst sourcePost
    refine ⟨0, StackSemStateOps.emptyEnv target, some .timeOut, ?_, ?_, hbound⟩
    · change StackSemEvaluate.evaluate (.tick, target) =
        (some .timeOut, StackSemStateOps.emptyEnv target)
      rw [StackSemEvaluate.evaluate_tick, if_pos (clocks.symm.trans zero)]
    · simp only [compCorrectResult, Option.map_some, compileResult, ne_eq,
        not_true_eq_false, ↓reduceIte]
      exact ⟨related.2.2.2.1.symm, clocks⟩
  · simp only [zero, ↓reduceIte] at execution
    obtain ⟨resultEq, postEq⟩ := Prod.mk.inj execution
    subst result
    subst sourcePost
    refine ⟨0, StackSemStateOps.decClock target, none, ?_, ?_, hbound⟩
    · change StackSemEvaluate.evaluate (.tick, target) =
        (none, StackSemStateOps.decClock target)
      have targetNonzero : target.clock ≠ 0 := fun h => zero (clocks.trans h)
      rw [StackSemEvaluate.evaluate_tick, if_neg targetNonzero]
    · simp only [compCorrectResult, Option.map_none, ne_eq, not_true_eq_false, ↓reduceIte]
      exact stateRelDecClock ac k f frame source target lens 0 related

theorem compCorrectMustTerminateB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (body : WordLangProgHOL (BitVec width)) (k f frame : Nat)
    (source sourcePost : WordSemStateFiniteExact width (Nat × C) F)
    (target : StackSemStateFiniteExact width C F)
    (result : Option (WordSemResult width))
    (bs bsPost : AppList (BitVec width)) (n nPost : Nat)
    (compiled : HolProg width) (lens : List Nat)
    (premises : WordSemStateFiniteExact.evaluate (.mustTerminate body) source = (result, sourcePost) ∧
      result ≠ some .error ∧ stateRel ac k f frame source target lens 0 ∧
      postAllocConventionsHOL k ((.mustTerminate body) : WordLangProgHOL (BitVec width)) = true ∧ flatExpConventions ((.mustTerminate body) : WordLangProgHOL (BitVec width)) = true ∧
      compNative ac false (.mustTerminate body) (bs, n) (k, f, frame) = (compiled, (bsPost, nPost)) ∧
      (appListAppend bs).length ≤ n ∧
      n - (appListAppend bs).length ≤ target.bitmaps.length ∧
      List.IsPrefix (appListAppend bsPost) (target.bitmaps.drop (n - (appListAppend bs).length)) ∧
      (∀ loc, StackSem.getLabelsExact compiled loc → StackSem.locCheckExact target.code loc) ∧
      maxVarHOL ((.mustTerminate body) : WordLangProgHOL (BitVec width)) < 2 * frame + 2 * k) :
    ∃ (extraClock : Nat) (targetPost : StackSemStateFiniteExact width C F)
      (targetResult : Option (StackSemResult width)),
      StackSemEvaluate.evaluate (compiled, {target with clock := target.clock + extraClock}) =
        (targetResult, targetPost) ∧
      compCorrectResult ac k f frame source sourcePost targetPost result targetResult lens ∧
      extraClock + (S + 1) * sourcePost.clock ≤ (S + 1) * source.clock + wsize (.mustTerminate body : WordLangProgHOL (BitVec width)) := by
  have hbound := boundZero S premises.1
  have related := premises.2.2.1
  unfold stateRel at related
  rcases related with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, termDepth, _⟩
  have execution := premises.1
  rw [WordSemStateFiniteExact.evaluate] at execution
  simp only [termDepth, ↓reduceDIte] at execution
  have resultEq := (Prod.mk.inj execution).1
  exact False.elim (premises.2.1 resultEq.symm)

end Flapjack.WordToStackProofs.CompCorrect.Clock

namespace Flapjack.WordToStackProofs.CompCorrect.Flat
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.WordToStack.Native
open InitECandidate.Solver.Compiler.WordToStack

theorem compCorrectAssignB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (name : Nat) (expression : WordLangExpHOL (BitVec width)) (k f frame : Nat)
    (source sourcePost : WordSemStateFiniteExact width (Nat × C) F)
    (target : StackSemStateFiniteExact width C F)
    (result : Option (WordSemResult width))
    (bs bsPost : AppList (BitVec width)) (n nPost : Nat)
    (compiled : HolProg width) (lens : List Nat)
    (premises : WordSemStateFiniteExact.evaluate (.assign name expression) source = (result, sourcePost) ∧
      result ≠ some .error ∧ stateRel ac k f frame source target lens 0 ∧
      postAllocConventionsHOL k ((.assign name expression) : WordLangProgHOL (BitVec width)) = true ∧ flatExpConventions ((.assign name expression) : WordLangProgHOL (BitVec width)) = true ∧
      compNative ac false (.assign name expression) (bs, n) (k, f, frame) = (compiled, (bsPost, nPost)) ∧
      (appListAppend bs).length ≤ n ∧
      n - (appListAppend bs).length ≤ target.bitmaps.length ∧
      List.IsPrefix (appListAppend bsPost) (target.bitmaps.drop (n - (appListAppend bs).length)) ∧
      (∀ loc, StackSem.getLabelsExact compiled loc → StackSem.locCheckExact target.code loc) ∧
      maxVarHOL ((.assign name expression) : WordLangProgHOL (BitVec width)) < 2 * frame + 2 * k) :
    ∃ (extraClock : Nat) (targetPost : StackSemStateFiniteExact width C F)
      (targetResult : Option (StackSemResult width)),
      StackSemEvaluate.evaluate (compiled, {target with clock := target.clock + extraClock}) =
        (targetResult, targetPost) ∧
      compCorrectResult ac k f frame source sourcePost targetPost result targetResult lens ∧
      extraClock + (S + 1) * sourcePost.clock ≤ (S + 1) * source.clock + wsize (.assign name expression : WordLangProgHOL (BitVec width)) := by
  have hbound := boundZero S premises.1
  have flat := premises.2.2.2.2.1
  simp only [flatExpConventions, Bool.false_eq_true] at flat

theorem compCorrectStoreB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (address : WordLangExpHOL (BitVec width)) (value : Nat) (k f frame : Nat)
    (source sourcePost : WordSemStateFiniteExact width (Nat × C) F)
    (target : StackSemStateFiniteExact width C F)
    (result : Option (WordSemResult width))
    (bs bsPost : AppList (BitVec width)) (n nPost : Nat)
    (compiled : HolProg width) (lens : List Nat)
    (premises : WordSemStateFiniteExact.evaluate (.store address value) source = (result, sourcePost) ∧
      result ≠ some .error ∧ stateRel ac k f frame source target lens 0 ∧
      postAllocConventionsHOL k ((.store address value) : WordLangProgHOL (BitVec width)) = true ∧ flatExpConventions ((.store address value) : WordLangProgHOL (BitVec width)) = true ∧
      compNative ac false (.store address value) (bs, n) (k, f, frame) = (compiled, (bsPost, nPost)) ∧
      (appListAppend bs).length ≤ n ∧
      n - (appListAppend bs).length ≤ target.bitmaps.length ∧
      List.IsPrefix (appListAppend bsPost) (target.bitmaps.drop (n - (appListAppend bs).length)) ∧
      (∀ loc, StackSem.getLabelsExact compiled loc → StackSem.locCheckExact target.code loc) ∧
      maxVarHOL ((.store address value) : WordLangProgHOL (BitVec width)) < 2 * frame + 2 * k) :
    ∃ (extraClock : Nat) (targetPost : StackSemStateFiniteExact width C F)
      (targetResult : Option (StackSemResult width)),
      StackSemEvaluate.evaluate (compiled, {target with clock := target.clock + extraClock}) =
        (targetResult, targetPost) ∧
      compCorrectResult ac k f frame source sourcePost targetPost result targetResult lens ∧
      extraClock + (S + 1) * sourcePost.clock ≤ (S + 1) * source.clock + wsize (.store address value : WordLangProgHOL (BitVec width)) := by
  have hbound := boundZero S premises.1
  have flat := premises.2.2.2.2.1
  simp only [flatExpConventions, Bool.false_eq_true] at flat

end Flapjack.WordToStackProofs.CompCorrect.Flat

namespace Flapjack.WordToStackProofs.CompCorrect.FFI
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.WordToStack.Native
open InitECandidate.Solver.Compiler.WordToStack

theorem compCorrectFFIB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (index : Basis.Pure.MlString.MlString)
    (ptr1 len1 ptr2 len2 : Nat) (names : WordLangCutsetsHOL) (k f frame : Nat)
    (source sourcePost : WordSemStateFiniteExact width (Nat × C) F)
    (target : StackSemStateFiniteExact width C F)
    (result : Option (WordSemResult width))
    (bs bsPost : AppList (BitVec width)) (n nPost : Nat)
    (compiled : HolProg width) (lens : List Nat)
    (premises : WordSemStateFiniteExact.evaluate (.ffi index ptr1 len1 ptr2 len2 names) source =
        (result, sourcePost) ∧
      result ≠ some .error ∧ stateRel ac k f frame source target lens 0 ∧
      postAllocConventionsHOL k
        ((.ffi index ptr1 len1 ptr2 len2 names) : WordLangProgHOL (BitVec width)) = true ∧
      flatExpConventions
        ((.ffi index ptr1 len1 ptr2 len2 names) : WordLangProgHOL (BitVec width)) = true ∧
      compNative ac false (.ffi index ptr1 len1 ptr2 len2 names) (bs, n) (k, f, frame) =
        (compiled, (bsPost, nPost)) ∧
      (appListAppend bs).length ≤ n ∧
      n - (appListAppend bs).length ≤ target.bitmaps.length ∧
      List.IsPrefix (appListAppend bsPost) (target.bitmaps.drop (n - (appListAppend bs).length)) ∧
      (∀ loc, StackSem.getLabelsExact compiled loc → StackSem.locCheckExact target.code loc) ∧
      maxVarHOL ((.ffi index ptr1 len1 ptr2 len2 names) : WordLangProgHOL (BitVec width)) <
        2 * frame + 2 * k) :
    ∃ (extraClock : Nat) (targetPost : StackSemStateFiniteExact width C F)
      (targetResult : Option (StackSemResult width)),
      StackSemEvaluate.evaluate (compiled, {target with clock := target.clock + extraClock}) =
        (targetResult, targetPost) ∧
      compCorrectResult ac k f frame source sourcePost targetPost result targetResult lens ∧
      extraClock + (S + 1) * sourcePost.clock ≤ (S + 1) * source.clock + wsize (.ffi index ptr1 len1 ptr2 len2 names : WordLangProgHOL (BitVec width)) := by
  have hbound := boundZero S premises.1
  obtain ⟨execution, notError, related, conventions, -, compilation, -, -, -, -, -⟩ := premises
  obtain ⟨rfl, rfl, rfl, rfl, hc1, hc2⟩ :=
    ffiConventions k index ptr1 len1 ptr2 len2 names conventions
  simp only [compNative, Prod.mk.injEq] at compilation
  obtain ⟨rfl, -⟩ := compilation
  have htarget : {target with clock := target.clock + 0} = target := by simp
  refine ⟨0, ?_⟩
  rw [htarget]
  have related' := related
  unfold stateRel at related'
  obtain ⟨r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18,
    r19, r20, r21, r22, r23, r24, r25, r26, r27, r28, r29, r30, r31, r32, r33, r34, r35, r36,
    r37, r38, rloc⟩ := related'
  have hvar : ∀ m v, WordSemStateFiniteExact.getVar (2 * m) source = some v → m < k →
      StackSemStateOps.getVar m target = some v := by
    intro m v hm hlt
    have := StateRelGetVar.stateRelGetVarImp' ac k f frame source target lens 0 (2 * m) v
      ⟨related, hm, by omega, by omega⟩
    rwa [show 2 * m / 2 = m by omega] at this
  rw [WordSemStateFiniteExact.evaluate] at execution
  rw [StackSemEvaluate.evaluate_ffi]
  simp only [show (2 : Nat) / 2 = 1 by rfl, show (4 : Nat) / 2 = 2 by rfl,
    show (6 : Nat) / 2 = 3 by rfl, show (8 : Nat) / 2 = 4 by rfl]
  rcases h4 : WordSemStateFiniteExact.getVar 4 source with _ | (w | ⟨_, _⟩) <;>
    rcases h2 : WordSemStateFiniteExact.getVar 2 source with _ | (w2 | ⟨_, _⟩) <;>
    rcases h8 : WordSemStateFiniteExact.getVar 8 source with _ | (w3 | ⟨_, _⟩) <;>
    rcases h6 : WordSemStateFiniteExact.getVar 6 source with _ | (w4 | ⟨_, _⟩) <;>
    simp only [h4, h2, h8, h6, Prod.mk.injEq] at execution <;>
    try exact absurd execution.1.symm notError
  rw [hvar 2 _ h4 (by omega), hvar 1 _ h2 (by omega), hvar 4 _ h8 (by omega),
    hvar 3 _ h6 (by omega)]
  simp only [r8, r9, r15, r4]
  rcases hce : wordSemCutEnv names source.locals with _ | env
  · simp only [hce, Prod.mk.injEq] at execution
    exact absurd execution.1.symm notError
  simp only [hce] at execution
  rcases hr1 : readBytearrayWordHOL w2 w.toNat
      (memLoadByteAuxExact source.memory source.mdomain source.be) with _ | bytes <;>
    rcases hr2 : readBytearrayWordHOL w4 w3.toNat
      (memLoadByteAuxExact source.memory source.mdomain source.be) with _ | bytes2 <;>
    simp only [hr1, hr2, Prod.mk.injEq] at execution ⊢ <;>
    try exact absurd execution.1.symm notError
  rcases hcall : callFFIHOL source.ffi (.extCall index) bytes bytes2 with ⟨newFfi, newBytes⟩ | outcome <;>
    simp only [hcall, Prod.mk.injEq] at execution ⊢ <;> obtain ⟨rfl, rfl⟩ := execution
  · refine ⟨_, _, ⟨rfl, rfl⟩, ?_, hbound⟩
    unfold compCorrectResult
    simp only [Option.map_none, ne_eq, not_true_eq_false, if_false]
    have henv : env = sptUnion (sptInter source.locals names.2) (sptInter source.locals names.1) := by
      unfold wordSemCutEnv at hce
      rcases hcs : wordSemCutEnvs names source.locals with _ | ⟨e1, e2⟩
      · rw [hcs] at hce; cases hce
      rw [hcs] at hce
      obtain ⟨he1, he2⟩ := AllocStateRel.cutEnvs_eq hcs
      simp only [Option.some.injEq] at hce he1 he2
      rw [← hce, ← he1, ← he2]
    unfold stateRel
    refine ⟨r1, r2, r3, rfl, r5, r6, r7, rfl, rfl, r10, r11, r12, r13, r14, rfl, rfl, r17, rfl,
      r19, r20, r21, r22, r23, r24, r25, r26, r27, r28, r29, r30, r31, r32, r33, r34, r35,
      ?_, r37, r38, ?_⟩
    · show sptWf env = true
      rw [henv]
      exact sptWfUnion _ _ ⟨sptWfInter _ _, sptWfInter _ _⟩
    · intro m v hm
      change sptLookup m env = some v at hm
      rw [henv, sptLookup_sptUnion, sptLookup_sptInterCases, sptLookup_sptInterCases] at hm
      have hlook : sptLookup m source.locals = some v ∧
          (sptDomain names.1 m ∨ sptDomain names.2 m) := by
        unfold sptDomain
        revert hm
        cases sptLookup m source.locals <;> cases sptLookup m names.2 <;>
          cases sptLookup m names.1 <;> simp
      obtain ⟨hl, hd⟩ := hlook
      have hev : m % 2 = 0 ∧ 2 * k ≤ m := hd.elim (hc1 m) (hc2 m)
      obtain ⟨he, hif⟩ := rloc m v hl
      refine ⟨he, ?_⟩
      rw [if_neg (by omega)] at hif ⊢
      exact hif
  · refine ⟨_, _, ⟨rfl, rfl⟩, ?_, hbound⟩
    unfold compCorrectResult
    simp only [Option.map_some, compileResult, ne_eq, not_true_eq_false, if_false]
    exact ⟨r4.symm, r1⟩

end Flapjack.WordToStackProofs.CompCorrect.FFI

namespace Flapjack.WordToStackProofs.CompCorrect.Alloc
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.WordToStack.Native
open InitECandidate.Solver.Compiler.WordToStack

theorem compCorrectAllocB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (dest : Nat) (names : WordLangCutsetsHOL) (k f frame : Nat)
    (source sourcePost : WordSemStateFiniteExact width (Nat × C) F)
    (target : StackSemStateFiniteExact width C F)
    (result : Option (WordSemResult width))
    (bs bsPost : AppList (BitVec width)) (n nPost : Nat)
    (compiled : HolProg width) (lens : List Nat)
    (premises : WordSemStateFiniteExact.evaluate (.alloc dest names) source = (result, sourcePost) ∧
      result ≠ some .error ∧ stateRel ac k f frame source target lens 0 ∧
      postAllocConventionsHOL k ((.alloc dest names) : WordLangProgHOL (BitVec width)) = true ∧
      flatExpConventions ((.alloc dest names) : WordLangProgHOL (BitVec width)) = true ∧
      compNative ac false (.alloc dest names) (bs, n) (k, f, frame) = (compiled, (bsPost, nPost)) ∧
      (appListAppend bs).length ≤ n ∧
      n - (appListAppend bs).length ≤ target.bitmaps.length ∧
      List.IsPrefix (appListAppend bsPost) (target.bitmaps.drop (n - (appListAppend bs).length)) ∧
      (∀ loc, StackSem.getLabelsExact compiled loc → StackSem.locCheckExact target.code loc) ∧
      maxVarHOL ((.alloc dest names) : WordLangProgHOL (BitVec width)) < 2 * frame + 2 * k) :
    ∃ (extraClock : Nat) (targetPost : StackSemStateFiniteExact width C F)
      (targetResult : Option (StackSemResult width)),
      StackSemEvaluate.evaluate (compiled, {target with clock := target.clock + extraClock}) =
        (targetResult, targetPost) ∧
      compCorrectResult ac k f frame source sourcePost targetPost result targetResult lens ∧
      extraClock + (S + 1) * sourcePost.clock ≤ (S + 1) * source.clock + wsize (.alloc dest names : WordLangProgHOL (BitVec width)) := by
  have hbound := boundZero S premises.1
  obtain ⟨execution, notError, related, conventions, -, compilation, hbsn, hbsl, hpre, -,
    maxVar⟩ := premises
  obtain ⟨rfl, hc1, hc2⟩ := allocConventions k dest names conventions
  have hn1 : ∀ x, sptDomain names.1 x → x % 2 = 0 ∧ k ≤ x / 2 :=
    fun x hx => ⟨(hc1 x hx).1, by have := (hc1 x hx).2; omega⟩
  have hn2 : ∀ x, sptDomain names.2 x → x % 2 = 0 ∧ k ≤ x / 2 :=
    fun x hx => ⟨(hc2 x hx).1, by have := (hc2 x hx).2; omega⟩
  have related' := related
  unfold stateRel at related'
  obtain ⟨r1, -, -, -, -, -, r7, -, -, r10, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -,
    -, -, -, -, -, -, r35, -, -, -, -⟩ := related'
  -- the allocation request comes from source variable 2, i.e. target register 1
  rw [WordSemStateFiniteExact.evaluate] at execution
  rcases hg : WordSemStateFiniteExact.getVar 2 source with _ | (w | ⟨_, _⟩)
  · simp only [hg, Prod.mk.injEq] at execution; exact absurd execution.1.symm notError
  rotate_left
  · simp only [hg, Prod.mk.injEq] at execution; exact absurd execution.1.symm notError
  simp only [hg] at execution
  have hg1 : StackSemStateOps.getVar 1 target = some (.word w) :=
    StateRelGetVar.stateRelGetVarImp' ac k f frame source target lens 0 2 _
      ⟨related, hg, rfl, by omega⟩
  rcases hcut : wordSemCutEnvs names source.locals with _ | envs
  · simp only [WordSemStateFiniteExact.alloc, hcut, Prod.mk.injEq] at execution
    exact absurd execution.1.symm notError
  simp only [compNative] at compilation
  rcases hwl : wLiveNative names (bs, n) (k, f, frame) with ⟨q1, bsw⟩
  rw [hwl] at compilation
  simp only [Prod.mk.injEq] at compilation
  obtain ⟨rfl, rfl⟩ := compilation
  have htarget : {target with clock := target.clock + 0} = target := by simp
  -- the result relation for a simulated allocation
  have finish : ∀ (t1 : StackSemStateFiniteExact width C F) (res1 : Option (StackSemResult width)),
      (result = none → res1 = none ∧ stateRel ac k f frame sourcePost t1 lens 0) →
      (result ≠ none → result = some .notEnoughSpace ∧ res1 = some (.halt (.word 1)) ∧
          sourcePost.clock = t1.clock ∧ sourcePost.ffi = t1.ffi) →
      compCorrectResult ac k f frame source sourcePost t1 result res1 lens := by
    intro t1 res1 hnone hsome
    unfold compCorrectResult
    by_cases hres : result = none
    · obtain ⟨rfl, hrel1⟩ := hnone hres
      subst hres
      simp only [Option.map_none, ne_eq, not_true_eq_false, if_false]
      exact hrel1
    · obtain ⟨rfl, rfl, hcl, hff⟩ := hsome hres
      simp only [Option.map_some, compileResult, ne_eq, not_true_eq_false, if_false]
      exact ⟨hff, hcl⟩
  by_cases hf : 1 ≤ f
  · obtain ⟨t5, hev5, hpush5, hrel5, -, -, hget5⟩ :=
      EvaluateWLive.evaluateWLive ac k f frame names bs n q1 bsPost nPost source target lens envs
        ⟨by rw [hwl], hn1, hn2, related, hf, hcut, hbsn, hbsl, hpre⟩
    have hrel5' := hrel5
    unfold stateRel at hrel5'
    have hclock5 : t5.clock = target.clock := hrel5'.1.symm.trans r1
    have huse5 : t5.useAlloc = true := hrel5'.2.2.2.2.2.2.1
    have hg5 : StackSemStateOps.getVar 1 t5 = some (.word w) :=
      (hget5 1 (by omega)).trans hg1
    obtain ⟨t1, res1, halloc1, hif⟩ :=
      AllocStateRel.allocImpAlloc ac k f frame w names source sourcePost result t5 lens envs
        ⟨execution, hn1, hn2, hf, hrel5, hpush5, hcut, notError⟩
    refine ⟨0, t1, res1, ?_, finish t1 res1
      (fun hr => by rw [if_pos hr] at hif; exact ⟨hif.1, hif.2.1⟩)
      (fun hr => by rw [if_neg hr] at hif; exact hif), hbound⟩
    rw [htarget, StackSemEvaluate.evaluate_seq, hev5]
    simp only [StackSemControl.fixClock]
    rw [show min target.clock t5.clock = t5.clock by omega]
    show StackSemEvaluate.evaluate (Prog.alloc 1, t5) = (res1, t1)
    rw [StackSemEvaluate.evaluate_alloc]
    simp only [huse5, Bool.not_true, Bool.false_eq_true, if_false, hg5]
    exact halloc1
  · have hf0 : f = 0 := by omega
    have hfr0 : frame = 0 := by
      by_cases h : frame = 0
      · exact h
      · rw [if_neg h] at r35; omega
    subst hf0 hfr0
    simp only [wLiveNative, if_true, Prod.mk.injEq] at hwl
    obtain ⟨rfl, -⟩ := hwl
    -- with no frame, the stack-placed cutset names cannot exist
    have hempty : ∀ t : Spt Unit, (∀ x, sptDomain t x → 2 * k ≤ x) →
        maxList ((sptToAList t).map Prod.fst) < 2 * k → sptDomain t = fun _ => False := by
      intro t hge hlt
      funext x
      apply propext
      constructor
      · intro hx
        obtain ⟨u, hu⟩ := Option.isSome_iff_exists.mp hx
        have hm := maxList_ge_of_mem ((sptToAList t).map Prod.fst) x
          (List.mem_map.mpr ⟨(x, u), (sptToAList_mem_iff_lookup t x u).mpr hu, rfl⟩)
        have := hge x hx
        omega
      · exact False.elim
    simp only [maxVarHOL, cutsetsMaxHOL, max_lt_iff] at maxVar
    have hd1 := hempty names.1 (fun x hx => (hc1 x hx).2) (by omega)
    have hd2 := hempty names.2 (fun x hx => (hc2 x hx).2) (by omega)
    obtain ⟨t1, res1, halloc1, hif⟩ :=
      AllocStateRel.allocImpAlloc2 ac k w names source sourcePost result target lens
        ⟨execution, related, hd1, hd2, notError⟩
    refine ⟨0, t1, res1, ?_, finish t1 res1
      (fun hr => by rw [if_pos hr] at hif; exact ⟨hif.1, hif.2.1⟩)
      (fun hr => by rw [if_neg hr] at hif; exact hif), hbound⟩
    rw [htarget, StackSemEvaluate.evaluate_seq, StackSemEvaluate.evaluate_skip]
    simp only [StackSemControl.fixClock, Nat.min_self]
    show StackSemEvaluate.evaluate (Prog.alloc 1, target) = (res1, t1)
    rw [StackSemEvaluate.evaluate_alloc]
    simp only [r7, Bool.not_true, Bool.false_eq_true, if_false, hg1]
    exact halloc1

end Flapjack.WordToStackProofs.CompCorrect.Alloc

namespace Flapjack.WordToStackProofs.CompCorrect.Get
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.WordToStack.Native
open InitECandidate.Solver.Compiler.WordToStack

theorem compCorrectGetB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (register : Nat) (name : WordStoreHOL)
    (source : WordSemStateFiniteExact width (Nat × C) F) :
    SimB ac S (.get register name) source := by
  intro k f frame sourcePost target result bs bsPost n nPost compiled lens premises _hsize _hcode
  have hbound := boundZero S premises.1
  rcases premises with ⟨execution,notError,related,conventions,flat,compilation,
    lengthBound,bitmapBound,bitmapPrefix,labels,maxBound⟩
  simp only [WordSemStateFiniteExact.evaluate] at execution
  cases read : WordSemStateFiniteExact.getStore name source with
  | none => simp [read] at execution; obtain ⟨rfl,rfl⟩ := execution; contradiction
  | some value =>
    simp only [read,Prod.mk.injEq] at execution
    obtain ⟨rfl,rfl⟩ := execution
    have even : register % 2 = 0 := by
      simpa [postAllocConventionsHOL,everyVarHOL,everyStackVarHOL,
        callArgConventionHOL,isPhyVar] using conventions
    have twice : register = 2*(register/2) := by omega
    have bound : register/2 < frame+k := by
      simp only [maxVarHOL] at maxBound
      omega
    have storeRel : source.store = target.store.eraseEq .handler :=
      related.2.2.2.2.2.2.2.2.2.2.2.1
    have targetRead : target.store.lookup (StackSemRegisterTransfers.storeOfSyntax (storeNameOfWord name)) = some value := by
      unfold WordSemStateFiniteExact.getStore at read
      rw [storeRel] at read
      cases name <;>
        simp only [storeNameOfWord,StackSemRegisterTransfers.storeOfSyntax,
          HolFiniteMapExact.eraseEq,FDOMSUB_HOL] at read ⊢ <;>
        simp only [reduceCtorEq,ite_false,ite_true] at read <;>
        exact read
    have useStore : target.useStore = true := related.2.2.2.2.2.1
    have run : ∀ r, r ≤ k → StackSemEvaluate.evaluate (.get r (storeNameOfWord name),target) =
        (none,StackSemStateOps.setVar r value target) := by
      intro r _
      simp [StackSemEvaluate.evaluate_get,useStore,targetRead]
    obtain ⟨post,actual,postRel,_,_⟩ := RegisterWrite.wRegWrite1Thm1 ac k f frame
      (register/2) source target lens value (fun r => .get r (storeNameOfWord name))
      related bound run
    have programEq := congrArg Prod.fst compilation
    simp only [compNative] at programEq
    subst compiled
    refine ⟨0,post,none,?_,?_, hbound⟩
    · simpa only [Nat.add_zero,← twice] using actual
    · simpa only [compCorrectResult,Option.map_none,ne_eq,not_true_eq_false,
        ↓reduceIte,← twice] using postRel

end Flapjack.WordToStackProofs.CompCorrect.Get

namespace Flapjack.WordToStackProofs.CompCorrect.Set
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.WordToStack.Native
open InitECandidate.Solver.Compiler.WordToStack

theorem compCorrectSetB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (name : WordStoreHOL)
    (expression : WordLangExpHOL (BitVec width))
    (source : WordSemStateFiniteExact width (Nat × C) F) :
    SimB ac S (.set name expression) source := by
  intro k f frame sourcePost target result bs bsPost n nPost compiled lens premises _hsize _hcode
  have hbound := boundZero S premises.1
  rcases premises with ⟨execution,notError,related,conventions,flat,compilation,
    lengthBound,bitmapBound,bitmapPrefix,labels,maxBound⟩
  cases expression <;> simp [flatExpConventions] at flat
  rename_i register
  simp only [WordSemStateFiniteExact.evaluate] at execution
  have notHandler : name ≠ .handler := by
    intro eq; subst name; simp only [true_or,if_true,Prod.mk.injEq] at execution
    obtain ⟨rfl,rfl⟩ := execution; contradiction
  have notBitmap : name ≠ .bitmapBase := by
    intro eq; subst name; simp only [or_true,if_true,Prod.mk.injEq] at execution
    obtain ⟨rfl,rfl⟩ := execution; contradiction
  simp only [notHandler,notBitmap,false_or,if_false,WordSemStateFiniteExact.wordExp] at execution
  cases read : WordSemStateFiniteExact.getVar register source with
  | none => simp [read] at execution; obtain ⟨rfl,rfl⟩ := execution; contradiction
  | some value =>
    simp only [read,Prod.mk.injEq] at execution
    obtain ⟨rfl,rfl⟩ := execution
    have even : register % 2 = 0 := by
      simpa [postAllocConventionsHOL,everyVarHOL,everyStackVarHOL,
        callArgConventionHOL,everyVarExpHOL,isPhyVar] using conventions
    rcases format : Compiler.Backend.WordToStackRegFormat.wReg1 register (k,f,frame) with ⟨loads,reg⟩
    obtain ⟨loaded,loadRun,clockEq,loadRel,_,_,_,_,_,loadedRead⟩ :=
      LoadRegister.evaluateWStackLoadWReg1 ac k f frame register reg loads
        source target lens value format even read related
    have useStore : loaded.useStore = true := loadRel.2.2.2.2.2.1
    have codec : StackSemRegisterTransfers.storeOfSyntax (storeNameOfWord name) = name := by
      cases name <;> rfl
    have programEq := congrArg Prod.fst compilation
    have compiledEq : compiled = wStackLoadNative loads (.set (storeNameOfWord name) reg) := by
      cases name <;> simp only [compNative,format] at programEq <;>
        first | exact programEq.symm | contradiction
    subst compiled
    refine ⟨0,StackSemStateOps.setStore name value loaded,none,?_,?_, hbound⟩
    · simp only [Nat.add_zero,LoadRegister.evaluateWStackLoadSeq,
        StackSemEvaluate.evaluate_seq,loadRun]
      have fix : StackSemControl.fixClock target ((none : Option (StackSemResult width)),loaded) = (none,loaded) := by
        have le : loaded.clock ≤ target.clock := by omega
        simp only [StackSemControl.fixClock,Nat.min_eq_right le]
      rw [fix]
      simp only [StackSemEvaluate.evaluate_set,useStore,not_true_eq_false,if_false,
        loadedRead,codec]
    · simpa only [compCorrectResult,Option.map_none,ne_eq,not_true_eq_false,
        ↓reduceIte] using StateRelStoreUpdate.stateRelSetStore ac k f frame source
          loaded lens 0 name value notHandler loadRel

end Flapjack.WordToStackProofs.CompCorrect.Set

namespace Flapjack.WordToStackProofs.CompCorrect.LocValue
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.WordToStack.Native
open InitECandidate.Solver.Compiler.WordToStack

theorem compCorrectLocValueB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (register location : Nat)
    (source : WordSemStateFiniteExact width (Nat × C) F) :
    SimB ac S (.locValue register location) source := by
  intro k f frame sourcePost target result bs bsPost n nPost compiled lens premises _hsize _hcode
  have hbound := boundZero S premises.1
  rcases premises with ⟨execution,notError,related,conventions,flat,compilation,
    lengthBound,bitmapBound,bitmapPrefix,labels,maxBound⟩
  simp only [WordSemStateFiniteExact.evaluate] at execution
  by_cases present : sptMem location source.code
  swap
  · simp [present] at execution
    obtain ⟨rfl,rfl⟩ := execution
    contradiction
  · simp only [present,if_true,Prod.mk.injEq] at execution
    obtain ⟨rfl,rfl⟩ := execution
    have even : register % 2 = 0 := by
      simpa [postAllocConventionsHOL,everyVarHOL,everyStackVarHOL,
        callArgConventionHOL,isPhyVar] using conventions
    have twice : register = 2*(register/2) := by omega
    have bound : register/2 < frame+k := by
      simp only [maxVarHOL] at maxBound
      omega
    have codeDomain : sptDomain target.code =
        (fun n => n=raiseStubLocation ∨ n=storeConstsStubLocation ∨ sptDomain source.code n) :=
      related.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
    have valid : StackSem.locCheckExact target.code (location,0) := by
      apply Or.inl
      refine ⟨rfl, ?_⟩
      change sptDomain target.code location
      rw [codeDomain]
      exact Or.inr (Or.inr present)
    have run : ∀ r, r ≤ k → StackSemEvaluate.evaluate (.locValue r location 0,target) =
        (none,StackSemStateOps.setVar r (.loc location 0) target) := by
      intro r _
      simp [StackSemEvaluate.evaluate_locValue,valid]
    obtain ⟨post,actual,postRel,_,_⟩ := RegisterWrite.wRegWrite1Thm1 ac k f frame
      (register/2) source target lens (.loc location 0) (fun r => .locValue r location 0)
      related bound run
    have programEq := congrArg Prod.fst compilation
    simp only [compNative] at programEq
    subst compiled
    refine ⟨0,post,none,?_,?_, hbound⟩
    · simpa only [Nat.add_zero,← twice] using actual
    · simpa only [compCorrectResult,Option.map_none,ne_eq,not_true_eq_false,
        ↓reduceIte,← twice] using postRel

end Flapjack.WordToStackProofs.CompCorrect.LocValue

namespace Flapjack.WordToStackProofs.CompCorrect.OpCurrHeap
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.WordToStack.Native
open InitECandidate.Solver.Compiler.WordToStack
open private sourceSuccess from Flapjack.Compiler.Backend.WordToStack.Proofs.CompCorrect.OpCurrHeap

theorem compCorrectOpCurrHeapB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (operator : HolBinop) (dst src : Nat)
    (source : WordSemStateFiniteExact width (Nat × C) F) :
    SimB ac S (.opCurrHeap operator dst src) source := by
  intro k f frame sourcePost target result bs bsPost n nPost compiled lens premises _hsize _hcode
  have hbound := boundZero S premises.1
  rcases premises with ⟨execution,notError,related,conventions,flat,compilation,
    lengthBound,bitmapBound,bitmapPrefix,labels,maxBound⟩
  obtain ⟨operand,heap,value,read,heapRead,operation,rfl,rfl⟩ :=
    sourceSuccess source sourcePost operator dst src result execution notError
  have evens : dst % 2 = 0 ∧ src % 2 = 0 := by
    simpa [postAllocConventionsHOL,everyVarHOL,everyStackVarHOL,
      callArgConventionHOL,isPhyVar] using conventions
  have dstEq : dst = 2*(dst/2) := by omega
  have bound : dst/2 < frame+k := by
    simp only [maxVarHOL] at maxBound
    omega
  rcases format : Compiler.Backend.WordToStackRegFormat.wReg1 src (k,f,frame) with ⟨loads,reg⟩
  obtain ⟨loaded,loadRun,clockEq,loadRel,_,_,_,_,_,loadedRead⟩ :=
    LoadRegister.evaluateWStackLoadWReg1 ac k f frame src reg loads
      source target lens (.word operand) format evens.2 read related
  have storeEq : source.store = loaded.store.eraseEq .handler :=
    loadRel.2.2.2.2.2.2.2.2.2.2.2.1
  have targetHeap : loaded.store.lookup .currHeap = some (.word heap) := by
    rw [storeEq] at heapRead
    simpa [HolFiniteMapExact.eraseEq,FDOMSUB_HOL] using heapRead
  have useStore : loaded.useStore = true := loadRel.2.2.2.2.2.1
  have callback : ∀ d, d ≤ k →
      StackSemEvaluate.evaluate (.opCurrHeap operator d reg,loaded) =
        (none,StackSemStateOps.setVar d (.word value) loaded) := by
    intro d _
    change loaded.regs.lookup reg = some (.word operand) at loadedRead
    simp [StackSemEvaluate.evaluate_opCurrHeap,useStore,StackSemExpressions.wordExp,
      loadedRead,targetHeap,operation]
  obtain ⟨post,actual,postRel,_,_⟩ := RegisterWrite.wRegWrite1Thm1 ac k f frame
    (dst/2) source loaded lens (.word value) (fun d => .opCurrHeap operator d reg)
    loadRel bound callback
  have programEq := congrArg Prod.fst compilation
  simp only [compNative,format] at programEq
  subst compiled
  refine ⟨0,post,none,?_,?_, hbound⟩
  · simp only [Nat.add_zero,LoadRegister.evaluateWStackLoadSeq,
      StackSemEvaluate.evaluate_seq,loadRun]
    have fix : StackSemControl.fixClock target ((none : Option (StackSemResult width)),loaded) = (none,loaded) := by
      have le : loaded.clock ≤ target.clock := by omega
      simp only [StackSemControl.fixClock,Nat.min_eq_right le]
    simp only [fix]
    simpa only [← dstEq] using actual
  · simpa only [compCorrectResult,Option.map_none,ne_eq,not_true_eq_false,
      ↓reduceIte,← dstEq] using postRel

end Flapjack.WordToStackProofs.CompCorrect.OpCurrHeap

namespace Flapjack.WordToStackProofs.CompCorrect.Inst
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.WordToStack.Native
open InitECandidate.Solver.Compiler.WordToStack
open private instArgConvention_ofWordLangInst from Flapjack.Compiler.Backend.WordToStack.Proofs.CompCorrect.Inst

theorem compCorrectInstB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (i : WordLangInst (BitVec width))
    (source : WordSemStateFiniteExact width (Nat × C) F) :
    SimB ac S (.inst i) source := by
  intro k f frame sourcePost target result bs bsPost n nPost compiled lens premises _hsize _hcode
  have hbound := boundZero S premises.1
  rcases premises with ⟨execution, notError, related, conventions, _flat,
    compilation, _lengthBound, _bitmapBound, _bitmapPrefix, _labels, maxBound⟩
  rw [WordSemStateFiniteExact.evaluate] at execution
  rcases instRun : WordSemStateFiniteExact.inst i source with _ | post
  · rw [instRun] at execution
    obtain ⟨rfl, -⟩ := Prod.mk.inj execution
    exact absurd rfl notError
  · rw [instRun] at execution
    obtain ⟨rfl, rfl⟩ := Prod.mk.inj execution
    have conventionParts := conventions
    simp only [postAllocConventionsHOL, everyVarHOL, callArgConventionHOL,
      Bool.and_eq_true] at conventionParts
    obtain ⟨physical, _, convention⟩ := conventionParts
    simp only [compNative, Prod.mk.injEq] at compilation
    obtain ⟨rfl, -⟩ := compilation
    obtain ⟨post', run, postRel, _, _⟩ :=
      InstSimulation.evaluateWInst ac (HolInst.ofWordLangInst i) k f frame source post
        target lens (by simpa only [HolInst.to_of] using instRun)
        (by simpa only [HolInst.to_of] using physical)
        (by simpa only [HolInst.to_of, maxVarHOL] using maxBound)
        (by rw [← instArgConvention_ofWordLangInst]; exact convention) related
    refine ⟨0, post', none, by simpa using run, ?_, hbound⟩
    simp only [compCorrectResult, Option.map_none, ne_eq, not_true_eq_false, if_false]
    exact postRel

end Flapjack.WordToStackProofs.CompCorrect.Inst

namespace Flapjack.WordToStackProofs.CompCorrect.MoveFull
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.WordToStack.Native
open InitECandidate.Solver.Compiler.WordToStack

theorem compCorrectMoveB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (priority : Nat) (moves : List (Nat × Nat))
    (source : WordSemStateFiniteExact width (Nat × C) F) :
    SimB ac S (.move priority moves) source := by
  intro k f frame sourcePost target result bs bsPost n nPost compiled lens premises _hsize _hcode
  have hbound := boundZero S premises.1
  rcases premises with ⟨execution,notError,related,conventions,flat,compilation,
    lengthBound,bitmapBound,bitmapPrefix,labels,maxBound⟩
  obtain ⟨values,distinct,reads,rfl,rfl⟩ :=
    Move.sourceSuccess priority moves source sourcePost result execution notError
  have evens : (∀ n ∈ moves.map Prod.fst, n % 2=0) ∧
      (∀ n ∈ moves.map Prod.snd, n % 2=0) := by
    have raw : (∀ a b, (a,b) ∈ moves → a % 2=0) ∧
        (∀ a b, (a,b) ∈ moves → b % 2=0) := by
      simpa [postAllocConventionsHOL,everyVarHOL,everyStackVarHOL,
        callArgConventionHOL,isPhyVar,List.all_eq_true] using conventions
    constructor
    · intro n member
      obtain ⟨⟨a,b⟩,input,rfl⟩ := List.mem_map.mp member
      exact raw.1 a b input
    · intro n member
      obtain ⟨⟨a,b⟩,input,rfl⟩ := List.mem_map.mp member
      exact raw.2 a b input
  have wf : sptWf source.locals=true := by
    unfold stateRel at related
    tauto
  obtain ⟨post,run,relation,_,_⟩ := Move.actualScheduledRun ac k f frame lens moves source target
    related distinct evens.1 evens.2 (by simp [reads]) (by simpa [maxVarHOL] using maxBound)
  rw [Move.scheduledSourceStateReconstruction moves source target k values distinct
    evens.1 evens.2 reads wf] at relation
  have program := congrArg Prod.fst compilation
  simp only [compNative] at program
  subst compiled
  refine ⟨0,post,none,?_,?_, hbound⟩
  · simpa only [Nat.add_zero] using run
  · simpa only [compCorrectResult,Option.map_none,ne_eq,not_true_eq_false,↓reduceIte] using relation

end Flapjack.WordToStackProofs.CompCorrect.MoveFull

namespace Flapjack.WordToStackProofs.CompCorrect.CodeBufferWrite
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.WordToStack.Native
open InitECandidate.Solver.Compiler.WordToStack

theorem compCorrectCodeBufferWriteB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (r1 r2 : Nat)
    (source : WordSemStateFiniteExact width (Nat × C) F) :
    SimB ac S (.codeBufferWrite r1 r2) source := by
  intro k f frame sourcePost target result bs bsPost n nPost compiled lens premises _hsize _hcode
  have hbound := boundZero S premises.1
  rcases premises with ⟨execution,notError,related,conventions,flat,compilation,
    lengthBound,bitmapBound,bitmapPrefix,labels,maxBound⟩
  obtain ⟨w1,w2,cb,read1,read2,writeEq,rfl,rfl⟩ :=
    sourceSuccess r1 r2 source sourcePost result execution notError
  have evens : r1%2=0 ∧ r2%2=0 := by
    simpa [postAllocConventionsHOL,everyVarHOL,everyStackVarHOL,
      callArgConventionHOL,isPhyVar] using conventions
  rcases fmt1 : Compiler.Backend.WordToStackRegFormat.wReg1 r1 (k,f,frame) with ⟨xs,reg1⟩
  rcases fmt2 : Compiler.Backend.WordToStackRegFormat.wReg2 r2 (k,f,frame) with ⟨ys,reg2⟩
  obtain ⟨t1,run1,clock1,rel1,_,_,_,_,regNe,loaded1⟩ :=
    LoadRegister.evaluateWStackLoadWReg1 ac k f frame r1 reg1 xs source target lens
      (.word w1) fmt1 evens.1 read1 related
  obtain ⟨t2,run2,clock2,_,rel2,_,_,otherReads,_,loaded2⟩ :=
    LoadRegisterTwo.evaluateWStackLoadWReg2 ac k f frame r2 reg2 ys source t1 lens
      (.word w2) fmt2 evens.2 read2 rel1
  have read1Final : StackSemStateOps.getVar reg1 t2 = some (.word w1) := by
    rw [otherReads reg1 regNe]
    exact loaded1
  have bufferEq : t2.codeBuffer = source.codeBuffer :=
    rel2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have programEq := congrArg Prod.fst compilation
  simp only [compNative,fmt1,fmt2] at programEq
  subst compiled
  refine ⟨0,{t2 with codeBuffer := cb},none,?_,?_, hbound⟩
  · simp only [Nat.add_zero,wStackLoadAppend,Function.comp_apply]
    rw [LoadRegister.evaluateWStackLoadSeq,StackSemEvaluate.evaluate_seq,run1]
    have fix1 : StackSemControl.fixClock target ((none : Option (StackSemResult width)),t1) = (none,t1) := by
      have le : t1.clock ≤ target.clock := by omega
      simp only [StackSemControl.fixClock,Nat.min_eq_right le]
    simp only [fix1]
    rw [LoadRegister.evaluateWStackLoadSeq,StackSemEvaluate.evaluate_seq,run2]
    have fix2 : StackSemControl.fixClock t1 ((none : Option (StackSemResult width)),t2) = (none,t2) := by
      have le : t2.clock ≤ t1.clock := by omega
      simp only [StackSemControl.fixClock,Nat.min_eq_right le]
    simp only [fix2]
    simp only [StackSemEvaluate.evaluate_codeBufferWrite,read1Final,loaded2,bufferEq,writeEq]
  · simpa only [compCorrectResult,Option.map_none,ne_eq,not_true_eq_false,
      ↓reduceIte] using codeBufferRelation cb rel2

end Flapjack.WordToStackProofs.CompCorrect.CodeBufferWrite

namespace Flapjack.WordToStackProofs.CompCorrect.DataBufferWrite
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.WordToStack.Native
open InitECandidate.Solver.Compiler.WordToStack

theorem compCorrectDataBufferWriteB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (r1 r2 : Nat)
    (source : WordSemStateFiniteExact width (Nat × C) F) :
    SimB ac S (.dataBufferWrite r1 r2) source := by
  intro k f frame sourcePost target result bs bsPost n nPost compiled lens premises _hsize _hcode
  have hbound := boundZero S premises.1
  rcases premises with ⟨execution,notError,related,conventions,flat,compilation,
    lengthBound,bitmapBound,bitmapPrefix,labels,maxBound⟩
  obtain ⟨w1,w2,cb,read1,read2,writeEq,rfl,rfl⟩ :=
    sourceSuccess r1 r2 source sourcePost result execution notError
  have evens : r1%2=0 ∧ r2%2=0 := by
    simpa [postAllocConventionsHOL,everyVarHOL,everyStackVarHOL,
      callArgConventionHOL,isPhyVar] using conventions
  rcases fmt1 : Compiler.Backend.WordToStackRegFormat.wReg1 r1 (k,f,frame) with ⟨xs,reg1⟩
  rcases fmt2 : Compiler.Backend.WordToStackRegFormat.wReg2 r2 (k,f,frame) with ⟨ys,reg2⟩
  obtain ⟨t1,run1,clock1,rel1,_,_,_,_,regNe,loaded1⟩ :=
    LoadRegister.evaluateWStackLoadWReg1 ac k f frame r1 reg1 xs source target lens
      (.word w1) fmt1 evens.1 read1 related
  obtain ⟨t2,run2,clock2,_,rel2,_,_,otherReads,_,loaded2⟩ :=
    LoadRegisterTwo.evaluateWStackLoadWReg2 ac k f frame r2 reg2 ys source t1 lens
      (.word w2) fmt2 evens.2 read2 rel1
  have read1Final : StackSemStateOps.getVar reg1 t2 = some (.word w1) := by
    rw [otherReads reg1 regNe]
    exact loaded1
  have bufferEq : t2.dataBuffer = source.dataBuffer :=
    rel2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have capacity : cb.buffer.length+cb.spaceLeft = source.dataBuffer.buffer.length+source.dataBuffer.spaceLeft := by
    unfold wordSemBufferWrite at writeEq
    split at writeEq
    · rename_i guard
      have equal := Option.some.inj writeEq
      subst cb
      simp only [List.length_append,List.length_singleton]
      omega
    · cases writeEq
  have programEq := congrArg Prod.fst compilation
  simp only [compNative,fmt1,fmt2] at programEq
  subst compiled
  refine ⟨0,{t2 with dataBuffer := cb},none,?_,?_, hbound⟩
  · simp only [Nat.add_zero,wStackLoadAppend,Function.comp_apply]
    rw [LoadRegister.evaluateWStackLoadSeq,StackSemEvaluate.evaluate_seq,run1]
    have fix1 : StackSemControl.fixClock target ((none : Option (StackSemResult width)),t1) = (none,t1) := by
      have le : t1.clock ≤ target.clock := by omega
      simp only [StackSemControl.fixClock,Nat.min_eq_right le]
    simp only [fix1]
    rw [LoadRegister.evaluateWStackLoadSeq,StackSemEvaluate.evaluate_seq,run2]
    have fix2 : StackSemControl.fixClock t1 ((none : Option (StackSemResult width)),t2) = (none,t2) := by
      have le : t2.clock ≤ t1.clock := by omega
      simp only [StackSemControl.fixClock,Nat.min_eq_right le]
    simp only [fix2]
    have useStack : t2.useStack = true := rel2.2.2.2.2.1
    simp only [StackSemEvaluate.evaluate_dataBufferWrite,useStack,not_true_eq_false,if_false,read1Final,loaded2,bufferEq,writeEq]
  · simpa only [compCorrectResult,Option.map_none,ne_eq,not_true_eq_false,
      ↓reduceIte] using dataBufferRelation cb capacity rel2

end Flapjack.WordToStackProofs.CompCorrect.DataBufferWrite

namespace Flapjack.WordToStackProofs.CompCorrect.StoreConsts
open Flapjack.Compiler.Backend.WordToStack.Native
open InitECandidate.Solver.Compiler.WordToStack
open private sourceSuccess sourcePost targetPost postRelated insertedBitmapSlice targetSuccess from Flapjack.Compiler.Backend.WordToStack.Proofs.CompCorrect.StoreConsts

theorem compCorrectStoreConstsB {width : Nat} [NeZero width] {C F : Type}
    (ac : Compiler.Encoders.Asm.AsmConfigExact width) (S : Nat)
    (first second addressRegister offsetRegister : Nat)
    (words : List (Bool × BitVec width))
    (source : WordSemStateFiniteExact width (Nat × C) F) :
    SimB ac S (.storeConsts first second addressRegister offsetRegister words) source := by
  intro k f frame post target result bs bsPost n nPost compiled lens premises _hsize _hcode
  have hbound := boundZero S premises.1
  rcases premises with ⟨execution,notError,related,conventions,flat,compilation,
    lengthBound,bitmapBound,bitmapPrefix,labels,maxBound⟩
  simp only [postAllocConventionsHOL,Bool.and_eq_true] at conventions
  have callArgs := conventions.2.2
  have registers : first = 0 ∧ second = 2 ∧ addressRegister = 4 ∧ offsetRegister = 6 := by
    simpa only [callArgConventionHOL,Bool.and_eq_true,beq_iff_eq,and_assoc] using callArgs
  obtain ⟨rfl,rfl,rfl,rfl⟩ := registers
  obtain ⟨address,offset,addressRead,offsetRead,addresses,rfl,postEq⟩ :=
    sourceSuccess 0 2 4 6 words source post result execution notError
  have facts : target.useStore = true ∧ target.useAlloc = true ∧ 4 < k ∧
      sptLookup storeConstsStubLocation target.code = some (storeConstsStubNative k) ∧
      goodDimindex width ∧ target.mdomain = source.mdomain ∧
      target.bitmaps.length < 2 ^ width ∧
      target.regs.lookup 2 = some (.word address) ∧ target.regs.lookup 3 = some (.word offset) := by
    unfold stateRel at related
    obtain ⟨h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12,h13,h14,h15,h16,h17,h18,
      h19,h20,h21,h22,h23,h24,h25,h26,h27,h28,h29,h30,h31,h32,h33,h34,h35,h36,
      h37,h38,hloc⟩ := related
    refine ⟨h6,h7,h10,h27,h28,h9,by omega,?_,?_⟩
    · have value := (hloc 4 (.word address) addressRead).2
      simpa only [show 4/2 < k by omega,if_true] using value
    · have value := (hloc 6 (.word offset) offsetRead).2
      simpa only [show 6/2 < k by omega,if_true] using value
  obtain ⟨storeEnabled,allocEnabled,large,stub,dimension,domains,bitmapLength,
    targetAddress,targetOffset⟩ := facts
  have compiledEq : compiled = Compiler.Backend.StackLang.Prog.seq
      (.inst (.const 1 (BitVec.ofNat width n)))
      (.storeConsts k (k+1) (some storeConstsStubLocation)) := by
    have equality := congrArg Prod.fst compilation
    simpa only [compNative,Compiler.Backend.WordToStack.insertBitmap] using equality.symm
  have outputEq : bsPost = AppList.append bs
      (.list (Compiler.Backend.WordToStack.constWordsToBitmapW words words.length)) := by
    have equality := congrArg (fun output => output.2.1) compilation
    simpa only [compNative,Compiler.Backend.WordToStack.insertBitmap] using equality.symm
  subst compiled
  subst bsPost
  obtain ⟨xs,ys,bitmapSlice,indexEq⟩ :=
    insertedBitmapSlice bs n words target.bitmaps lengthBound bitmapBound bitmapPrefix
  have indexBound : n < 2 ^ width := by
    rw [bitmapSlice] at bitmapLength
    simp only [List.length_append] at bitmapLength
    omega
  have targetAddresses : wordSemConstAddresses address words target.mdomain = true := by
    rw [domains]
    exact addresses
  subst post
  refine ⟨0,targetPost k n address offset words target,none,?_,?_, hbound⟩
  · simpa only [Nat.add_zero] using targetSuccess k n address offset words target xs ys
      large storeEnabled allocEnabled stub targetAddress targetOffset bitmapSlice indexEq
      indexBound targetAddresses dimension
  · simpa only [compCorrectResult,Option.map_none,ne_eq,not_true_eq_false,
      ↓reduceIte,sourcePost] using
      postRelated ac k f frame n address offset words source target lens related offsetRead

end Flapjack.WordToStackProofs.CompCorrect.StoreConsts

namespace Flapjack.WordToStackProofs.CompCorrect.Return
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.WordToStack.Native
open InitECandidate.Solver.Compiler.WordToStack
open private readAt from Flapjack.Compiler.Backend.WordToStack.Proofs.CompCorrect.Return

theorem compCorrectReturnB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (register : Nat) (names : List Nat)
    (source : WordSemStateFiniteExact width (Nat × C) F) :
    SimB ac S (.return register names) source := by
  intro k f frame sourcePost target result bs bsPost n nPost compiled lens premises _hsize _hcode
  have hbound := boundZero S premises.1
  rcases premises with ⟨execution, notError, related, conventions, flat,
    compilation, lengthBound, bitmapBound, bitmapPrefix, labels, maximum⟩
  rw [WordSemStateFiniteExact.evaluate] at execution
  cases sourceRead : WordSemStateFiniteExact.getVar register source with
  | none =>
    simp only [sourceRead, Prod.mk.injEq] at execution
    exact absurd execution.1.symm notError
  | some address =>
    cases address with
    | word word =>
      simp only [sourceRead, Prod.mk.injEq] at execution
      exact absurd execution.1.symm notError
    | loc first second =>
      cases sourceValues : WordSemStateFiniteExact.getVars names source with
      | none =>
        simp only [sourceRead, sourceValues, Prod.mk.injEq] at execution
        exact absurd execution.1.symm notError
      | some values =>
        simp only [sourceRead, sourceValues, Prod.mk.injEq] at execution
        obtain ⟨rfl, rfl⟩ := execution
        obtain ⟨even, canonical, nameBound, countBound⟩ := returnFacts related conventions maximum
        rcases format : Compiler.Backend.WordToStackRegFormat.wReg1 register (k, f, frame) with ⟨loads, output⟩
        simp only [compNative, format, Prod.mk.injEq] at compilation
        obtain ⟨rfl, _⟩ := compilation
        obtain ⟨loaded, loadRun, clockSame, loadRelated, stackLength, spaceSame, bitmapSame,
          preserved, outputNotScratch, outputValue⟩ :=
          LoadRegister.evaluateWStackLoadWReg1 ac k f frame register output loads
            source target lens (.loc first second) format even sourceRead related
        let count := Compiler.Backend.WordToStack.numStackRet k names
        let free := Compiler.Backend.WordToStack.skipFree k f frame names
        let post : StackSemStateFiniteExact width C F :=
          {loaded with stackSpace := loaded.stackSpace + free}
        have freeSpace : loaded.stackSpace + free = loaded.stackSpace + f - count := by
          dsimp [free, count, Compiler.Backend.WordToStack.skipFree]
          omega
        have useStack : loaded.useStack = true := loadRelated.2.2.2.2.1
        have frameBound : loaded.stackSpace + f ≤ loaded.stack.length := by
          unfold stateRel at loadRelated
          aesop (config := { enableSimp := false })
        have freeBound : loaded.stackSpace + free ≤ loaded.stack.length := by
          dsimp [free, Compiler.Backend.WordToStack.skipFree]
          omega
        refine ⟨0, post, some (.result (.loc first second)), ?_, ?_, hbound⟩
        · simp only [Nat.add_zero]
          rw [LoadRegister.evaluateWStackLoadSeq, StackSemEvaluate.evaluate_seq, loadRun]
          simp only [StackSemControl.fixClock, clockSame, Nat.min_self]
          rw [CallHelpers.evaluateSeqStackFree free (.ret output) loaded
            ⟨useStack, by omega⟩]
          rw [StackSemEvaluate.evaluate_seq, StackSemEvaluate.evaluate_stackFree,
            if_neg (by simp [useStack]), if_neg (by omega)]
          simp only [StackSemControl.fixClock, Nat.min_self]
          rw [StackSemEvaluate.evaluate_ret]
          simp only [StackSemStateOps.getVar] at outputValue ⊢
          rw [outputValue]
        · have lengths := WordSemStateFiniteExact.getVarsLengthLemma names source values sourceValues
          have kLarge : 4 < k := related.2.2.2.2.2.2.2.2.2.1
          have extraEq : values.length - (k - 1) = count := by
            dsimp [count, Compiler.Backend.WordToStack.numStackRet]
            omega
          simp only [compCorrectResult, Option.map_some, compileResult,
            ne_eq, not_true_eq_false, ↓reduceIte]
          constructor
          · rw [extraEq]
            have relation := stateRelReturnFlush loadRelated countBound
            simpa only [post, freeSpace] using relation
          · have placements := returnPlacements loadRelated canonical sourceValues countBound
            simpa only [post, freeSpace] using placements

end Flapjack.WordToStackProofs.CompCorrect.Return

namespace Flapjack.WordToStackProofs.CompCorrect.Install
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.WordToStack.Native
open InitECandidate.Solver.Compiler.WordToStack

theorem compCorrectInstallB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (ptr len dptr dlen : Nat) (names : WordLangCutsetsHOL)
    (source : WordSemStateFiniteExact width (Nat × C) F) :
    SimB ac S (.install ptr len dptr dlen names) source := by
  intro k f frame sourcePost target result bs bsPost n nPost compiled lens premises _hsize _hcode
  have hbound := boundZero S premises.1
  obtain ⟨execution, notError, related, conventions, -, compilation, -, -, -, -, -⟩ := premises
  obtain ⟨rfl, rfl, hd3, hd4, hc1, hc2⟩ :=
    installConventions k ptr len dptr dlen names conventions
  rcases fmt1 : Compiler.Backend.WordToStackRegFormat.wReg1 dptr (k, f, frame) with ⟨xs, reg3⟩
  rcases fmt2 : Compiler.Backend.WordToStackRegFormat.wReg2 dlen (k, f, frame) with ⟨ys, reg4⟩
  have programEq := congrArg Prod.fst compilation
  simp only [compNative, fmt1, fmt2] at programEq
  subst compiled
  -- The source run.
  rw [WordSemStateFiniteExact.evaluate] at execution
  rcases hce : wordSemCutEnv names source.locals with _ | env
  · simp only [hce, Prod.mk.injEq] at execution
    exact absurd execution.1.symm notError
  simp only [hce] at execution
  rcases h2 : WordSemStateFiniteExact.getVar 2 source with _ | (w1 | ⟨_, _⟩) <;>
    rcases h4 : WordSemStateFiniteExact.getVar 4 source with _ | (w2 | ⟨_, _⟩) <;>
    rcases h3 : WordSemStateFiniteExact.getVar dptr source with _ | (w3 | ⟨_, _⟩) <;>
    rcases h5 : WordSemStateFiniteExact.getVar dlen source with _ | (w4 | ⟨_, _⟩) <;>
    simp only [h2, h4, h3, h5, Prod.mk.injEq] at execution <;>
    try exact absurd execution.1.symm notError
  rcases hor : source.compileOracle 0 with ⟨⟨bm0, cfg⟩, progs⟩
  simp only [hor] at execution
  rcases hcf : wordSemBufferFlush source.codeBuffer w1 w2 with _ | ⟨bytes, cb⟩ <;>
    rcases hdf : wordSemBufferFlush source.dataBuffer w3 w4 with _ | ⟨data, db⟩ <;>
    simp only [hcf, hdf, Prod.mk.injEq] at execution <;>
    try exact absurd execution.1.symm notError
  rcases hsc : source.compile (bm0, cfg) progs with _ | ⟨bytes', data', cfg'⟩ <;>
    rcases progs with _ | ⟨⟨kk, argc, prog⟩, rest⟩ <;>
    simp only [hsc, Prod.mk.injEq] at execution <;>
    try first
      | exact absurd execution.1.symm notError
      | exact absurd (congrArg Prod.fst execution).symm notError
  by_cases hcond : bytes = bytes' ∧ data = data' ∧
      (holShiftSeq 1 source.compileOracle 0).1 = cfg'
  swap
  · rw [if_neg hcond] at execution
    exact absurd (congrArg Prod.fst execution).symm notError
  rw [if_pos hcond] at execution
  simp only [Prod.mk.injEq] at execution
  obtain ⟨rfl, rfl⟩ := execution
  -- The target loads of the data pointer and length.
  obtain ⟨t1, run1, clock1, rel1, -, -, -, -, regNe, loaded1⟩ :=
    LoadRegister.evaluateWStackLoadWReg1 ac k f frame dptr reg3 xs source target lens
      (.word w3) fmt1 hd3 h3 related
  obtain ⟨t2, run2, clock2, -, rel2, -, -, otherReads, -, loaded2⟩ :=
    LoadRegisterTwo.evaluateWStackLoadWReg2 ac k f frame dlen reg4 ys source t1 lens
      (.word w4) fmt2 hd4 h5 rel1
  have r10 : 4 < k := rel2.2.2.2.2.2.2.2.2.2.1
  have read1 : StackSemStateOps.getVar 1 t2 = some (.word w1) := by
    have := StateRelGetVar.stateRelGetVarImp' ac k f frame source t2 lens 0 2 _
      ⟨rel2, h2, rfl, by omega⟩
    simpa using this
  have read2 : StackSemStateOps.getVar 2 t2 = some (.word w2) := by
    have := StateRelGetVar.stateRelGetVarImp' ac k f frame source t2 lens 0 4 _
      ⟨rel2, h4, rfl, by omega⟩
    simpa using this
  have read3 : StackSemStateOps.getVar reg3 t2 = some (.word w3) := by
    rw [otherReads reg3 regNe]; exact loaded1
  -- The target compiler and oracle on the installed programs.
  have rel2' := rel2
  unfold stateRel at rel2'
  obtain ⟨-, -, -, -, r5, -, -, -, -, -, -, -, -, -, -, -, -, -, r19, r20, r21, r22, -⟩ := rel2'
  rcases hcw : compileWordToStackNative ac false k ((kk, argc, prog) :: rest) (.nil, bm0) with
    ⟨progs2, fs, bm⟩
  have hsc' := hsc
  rw [r21] at hsc'
  simp only [hcw] at hsc'
  rcases htc : t2.compile cfg progs2 with _ | ⟨bytes2, cfg2⟩
  · simp [htc] at hsc'
  simp only [htc, Option.map_some, Option.some.injEq, Prod.mk.injEq] at hsc'
  obtain ⟨rfl, rfl, rfl⟩ := hsc'
  have hor2 : t2.compileOracle 0 = (cfg, progs2, appListAppend bm.1) := by
    rw [r22]; simp only [hor, hcw]
  have hmap := mapFstCompileWordToStack ac false k _ _ _ _ hcw
  rcases progs2 with _ | ⟨⟨kk2, prog2⟩, rest2⟩
  · simp at hmap
  simp only [List.map_cons, List.cons.injEq] at hmap
  obtain ⟨rfl, -⟩ := hmap
  have hflush : wordSemBufferFlush source.dataBuffer w3 w4 = some (data, db) := hdf
  have hdata : source.dataBuffer.buffer = appListAppend bm.1 := by
    unfold wordSemBufferFlush at hflush
    split at hflush
    · simp only [Option.some.injEq, Prod.mk.injEq] at hflush
      rw [hflush.1, hcond.2.1]
    · cases hflush
  have hdb : db.buffer = [] ∧ db.spaceLeft = source.dataBuffer.spaceLeft := by
    unfold wordSemBufferFlush at hflush
    split at hflush
    · simp only [Option.some.injEq, Prod.mk.injEq] at hflush
      rw [← hflush.2]; exact ⟨rfl, rfl⟩
    · cases hflush
  have hcfg : (source.compileOracle 1).1 = (bm.2, cfg2) := hcond.2.2
  have hnew : (holShiftSeq 1 t2.compileOracle 0).1 = cfg2 := by
    show (t2.compileOracle 1).1 = cfg2
    rcases hso : source.compileOracle 1 with ⟨⟨b1, c1⟩, ps⟩
    rw [r22]
    simp only [hso]
    rw [hso] at hcfg
    simp only [Prod.mk.injEq] at hcfg
    rcases compileWordToStackNative ac false k ps (.nil, b1) with ⟨a, b, c⟩
    exact hcfg.2
  -- The target run and the related post-states.
  refine ⟨0, { t2 with
      bitmaps := t2.bitmaps ++ appListAppend bm.1
      codeBuffer := cb
      dataBuffer := db
      code := sptUnion t2.code (sptFromAList ((kk2, prog2) :: rest2))
      regs := (StackSemStateOps.restrictIn t2.regs t2.ffiSaveRegs).updateEq (1, .loc kk2 0)
      fpRegs := HolFiniteMapExact.empty
      compileOracle := holShiftSeq 1 t2.compileOracle }, none, ?_, ?_, hbound⟩
  · simp only [Nat.add_zero, wStackLoadAppend, Function.comp_apply,
      show (2 : Nat) / 2 = 1 by rfl, show (4 : Nat) / 2 = 2 by rfl]
    rw [LoadRegister.evaluateWStackLoadSeq, StackSemEvaluate.evaluate_seq, run1]
    have fix1 : StackSemControl.fixClock target ((none : Option (StackSemResult width)), t1) =
        (none, t1) := by
      have le : t1.clock ≤ target.clock := by omega
      simp only [StackSemControl.fixClock, Nat.min_eq_right le]
    simp only [fix1]
    rw [LoadRegister.evaluateWStackLoadSeq, StackSemEvaluate.evaluate_seq, run2]
    have fix2 : StackSemControl.fixClock t1 ((none : Option (StackSemResult width)), t2) =
        (none, t2) := by
      have le : t2.clock ≤ t1.clock := by omega
      simp only [StackSemControl.fixClock, Nat.min_eq_right le]
    simp only [fix2]
    rw [StackSemEvaluate.evaluate_install]
    simp only [read1, read2, read3, loaded2, hor2, r20, r19, r5, hcf, hflush, if_true, htc]
    rw [if_pos ⟨hcond.1, hcond.2.1.trans (congrArg (fun x => x.2.2) hor2).symm, hnew⟩]
  · simp only [compCorrectResult, Option.map_none, ne_eq, not_true_eq_false, ↓reduceIte]
    exact installRelation ac k f frame source t2 lens rel2 names hc1 hc2 env hce bm0 cfg kk2 argc
      prog rest hor (_ :: rest2) fs bm hcw cfg2 hcfg cb db hdata hdb

end Flapjack.WordToStackProofs.CompCorrect.Install

namespace Flapjack.WordToStackProofs.CompCorrect.Raise
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.WordToStack.Native
open InitECandidate.Solver.Compiler.WordToStack

theorem compCorrectRaiseB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (name : Nat)
    (source : WordSemStateFiniteExact width (Nat × C) F) :
    SimB ac S (.raise name) source := by
  intro k f frame sourcePost target result bs bsPost n nPost compiled lens premises _hsize _hcode
  have hbound := boundOne S premises.1
  rcases premises with ⟨execution,notError,related,conventions,flat,compilation,
    lengthBound,bitmapBound,bitmapPrefix,labels,maxBound⟩
  have compiledEq := congrArg Prod.fst compilation
  simp only [compNative] at compiledEq
  subst compiled
  have nameEq : name = 2 := by
    simp only [postAllocConventionsHOL, Bool.and_eq_true] at conventions
    simpa [callArgConventionHOL] using conventions.2.2
  subst name
  obtain ⟨value,l1,l2,valueEq,jump,resultEq⟩ :=
    sourceRaiseSuccess 2 source sourcePost result execution notError
  obtain ⟨size,nonGc,gc,oldHandler,rest,sourceBound,suffix,postEq⟩ :=
    sourceHandlerFrame source sourcePost l1 l2 jump
  obtain ⟨offset,saved,postRelation,handler,offsetWidth,space,location,savedWord⟩ :=
    fullRaisePostRelation ac k f frame source target lens size nonGc gc oldHandler l1 l2 rest
      related sourceBound suffix
  have parts : target.useStack = true ∧ target.useStore = true ∧ 4 < k ∧
      sptLookup raiseStubLocation target.code = some (@raiseStubNative width _ false k) := by
    simp only [stateRel] at related
    tauto
  have placed : target.regs.lookup 1 = some value := by
    have placement : ∀ n v, sptLookup n source.locals = some v →
        n % 2 = 0 ∧ if n / 2 < k then target.regs.lookup (n / 2) = some v
        else ((target.stack.drop target.stackSpace).take f)[f - 1 - (n / 2 - k)]? =
          some v ∧ n / 2 < k + frame := by
      simp only [stateRel,Nat.add_zero] at related
      repeat' (rcases related with ⟨_,related⟩)
      exact related
    have observed := placement 2 value valueEq
    simpa [show 1 < k by omega] using observed.2
  refine ⟨1,unwindTarget target k offset l1 l2 saved,some (.exception (.loc l1 l2)),?_,?_,hbound⟩
  · exact evaluateRaiseCall target k offset l1 l2 saved parts.2.2.2 parts.1 parts.2.1
      handler offsetWidth space location savedWord
  · rw [resultEq]
    simp only [compCorrectResult,Option.map,compileResult,ne_eq,not_true_eq_false,if_false]
    refine ⟨nonGc,gc,?_,?_,?_⟩
    · simpa only [postEq,pushLocals,clearedSource,lastNDrop2] using postRelation
    · simp only [postEq]
    · have distinct : 1 ≠ k := by omega
      simpa [unwindTarget,HolFiniteMapExact.lookup_updateEq,FUPDATE_HOL,distinct] using placed

end Flapjack.WordToStackProofs.CompCorrect.Raise

namespace Flapjack.WordToStackProofs.CompCorrect.ShareInst
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.WordToStack.Native
open InitECandidate.Solver.Compiler.WordToStack

theorem evaluateShareInstLoadB {width : Nat} [NeZero width] {C F : Type}
    {ac : AsmConfigExact width} {k f frame : Nat} {op : WordMemOp} {v ad : Nat}
    {offset : BitVec width} {s s1 : WordSemStateFiniteExact width (Nat × C) F}
    {t : StackSemStateFiniteExact width C F} {lens : List Nat}
    {res : Option (WordSemResult width)} :
    WordSemStateFiniteExact.evaluate
        (.shareInst op (2 * v) (.op .add [.var (2 * ad), .const offset])) s = (res, s1) ∧
      res ≠ some .error ∧ stateRel ac k f frame s t lens 0 ∧ v < frame + k ∧ ad < frame + k ∧
      (op = .load ∨ op = .load8 ∨ op = .load16 ∨ op = .load32) →
    ∃ t1,
      StackSemEvaluate.evaluate
          (wShareInstNative op (2 * v) (.addr (2 * ad) offset) (k, f, frame),
            { t with clock := 1 + t.clock }) = (res.map compileResult, t1) ∧
      ((∃ fv, res = some (.finalFfi fv) ∧ s1.ffi = t1.ffi ∧ s1.clock = t1.clock) ∨
        (res = none ∧ stateRel ac k f frame s1 t1 lens 0)) := by
  rintro ⟨hrun, notError, related, hv, had, hop⟩
  obtain ⟨x, hx, hshare⟩ := shareInstSource hrun notError
  rcases fmt : Compiler.Backend.WordToStackRegFormat.wReg1 (2 * ad) (k, f, frame) with ⟨xs, reg⟩
  obtain ⟨t1, run1, clock1, rel1, len1, sp1, -, -, -, loaded⟩ :=
    LoadRegister.evaluateWStackLoadWReg1 ac k f frame (2 * ad) reg xs s t lens (.word x) fmt
      (by omega) hx related
  have hloads : StackSemEvaluate.evaluate (wStackLoadNative xs .skip,
      { t with clock := 1 + t.clock }) = (none, { t1 with clock := 1 + t.clock }) := by
    rw [LoadRegisterClock.evaluateWStackLoadClock, run1]; rfl
  have hfix : StackSemControl.fixClock { t with clock := 1 + t.clock }
      ((none : Option (StackSemResult width)), { t1 with clock := 1 + t.clock }) =
      (none, { t1 with clock := 1 + t.clock }) := by
    simp [StackSemControl.fixClock]
  have hdec : StackSemStateOps.decClock { t1 with clock := 1 + t.clock } = t1 := by
    simp only [StackSemStateOps.decClock, clock1]
    congr 1
    omega
  have haddr : StackSemExpressions.wordExp { t1 with clock := 1 + t.clock }
      (.op .add [.var reg, .const offset]) = some (x + offset) :=
    stackAddr (t := { t1 with clock := 1 + t.clock }) loaded
  rcases hop with rfl | rfl | rfl | rfl <;>
    simp only [wShareInstNative, fmt] <;>
    rw [LoadRegister.evaluateWStackLoadSeq, StackSemEvaluate.evaluate_seq, hloads, hfix] <;>
    simp only [wRegWrite1Native, show 2 * v / 2 = v by omega]
  all_goals
    split
    · rename_i hlt
      rw [StackSemEvaluate.evaluate_shMemOp, haddr]
      simp only [show ¬ (1 + t.clock = 0) by omega, if_false, hdec]
      exact shareLoadLemma2 ⟨hshare, rel1, hlt, by simp, notError⟩
    · rename_i hge
      rw [StackSemEvaluate.evaluate_seq, StackSemEvaluate.evaluate_shMemOp, haddr]
      simp only [show ¬ (1 + t.clock = 0) by omega, if_false, hdec]
      obtain ⟨t2, h2, hc⟩ := shareLoadLemma1 ⟨hshare, rel1, hv, by omega, by simp, notError⟩
      have hclk : t2.clock = t.clock := by
        have hc' := congrArg (fun p => p.2.clock) h2
        simp only [shMemOp_clock] at hc'
        omega
      have hmin : min (1 + t.clock) t2.clock = t2.clock := by omega
      rw [h2]
      have hfix2 : ∀ r : Option (StackSemResult width), StackSemControl.fixClock
          { t1 with clock := 1 + t.clock } (r, t2) = (r, t2) := by
        intro r
        show (r, { t2 with clock := min (1 + t.clock) t2.clock }) = (r, t2)
        rw [hmin]
      rw [hfix2]
      have related' := related
      unfold stateRel at related'
      obtain ⟨-, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -,
        -, -, -, -, -, r33, -, r35, -⟩ := related'
      rcases hc with ⟨fv, rfl, hffi, hcl⟩ | ⟨rfl, hrel, ⟨xv, hxv⟩, hsp, hlen⟩
      · exact ⟨t2, rfl, .inl ⟨fv, rfl, hffi, hcl⟩⟩
      · have huse : t2.useStack = true := by
          have hrel' := hrel
          unfold stateRel at hrel'
          exact hrel'.2.2.2.2.1
        have hf : f = frame + 1 := by split at r35 <;> omega
        have hidx : f - 1 - (v - k) = f + k - (v + 1) := by omega
        refine ⟨_, ?_, .inr ⟨rfl, hrel⟩⟩
        simp only [Option.map_none]
        rw [StackSemEvaluate.evaluate_stackStore]
        simp only [huse, Bool.not_true, Bool.false_eq_true, if_false,
          StackSemStateOps.getVar, hxv, hidx, Flapjack.holThe]
        rw [if_neg (by omega)]

theorem evaluateShareInstStoreB {width : Nat} [NeZero width] {C F : Type}
    {ac : AsmConfigExact width} {k f frame : Nat} {op : WordMemOp} {v ad : Nat}
    {offset : BitVec width} {s s1 : WordSemStateFiniteExact width (Nat × C) F}
    {t : StackSemStateFiniteExact width C F} {lens : List Nat}
    {res : Option (WordSemResult width)} :
    WordSemStateFiniteExact.evaluate
        (.shareInst op (2 * v) (.op .add [.var (2 * ad), .const offset])) s = (res, s1) ∧
      stateRel ac k f frame s t lens 0 ∧ v < frame + k ∧ ad < frame + k ∧
      res ≠ some .error ∧ (op = .store ∨ op = .store8 ∨ op = .store16 ∨ op = .store32) →
    ∃ t1,
      StackSemEvaluate.evaluate
          (wShareInstNative op (2 * v) (.addr (2 * ad) offset) (k, f, frame),
            { t with clock := 1 + t.clock }) = (res.map compileResult, t1) ∧
      ((∃ fv, res = some (.finalFfi fv) ∧ s1.ffi = t1.ffi ∧ s1.clock = t1.clock) ∨
        (res = none ∧ stateRel ac k f frame s1 t1 lens 0)) := by
  rintro ⟨hrun, related, hv, had, notError, hop⟩
  obtain ⟨x, hx, hshare⟩ := shareInstSource hrun notError
  -- The stored source word.
  have hw : ∃ w, WordSemStateFiniteExact.getVar (2 * v) s = some (.word w) := by
    rcases hg : WordSemStateFiniteExact.getVar (2 * v) s with _ | (w | ⟨p, q⟩)
    all_goals first
      | exact ⟨w, rfl⟩
      | (rcases hop with rfl | rfl | rfl | rfl <;>
          simp only [WordSemStateFiniteExact.shareInst, hg, Prod.mk.injEq] at hshare <;>
          exact absurd hshare.1.symm notError)
  obtain ⟨w, hw⟩ := hw
  rcases fmt1 : Compiler.Backend.WordToStackRegFormat.wReg1 (2 * ad) (k, f, frame) with
    ⟨xs, reg1⟩
  rcases fmt2 : Compiler.Backend.WordToStackRegFormat.wReg2 (2 * v) (k, f, frame) with
    ⟨ys, reg2⟩
  obtain ⟨t1, run1, clock1, rel1, -, -, -, -, regNe, loaded1⟩ :=
    LoadRegister.evaluateWStackLoadWReg1 ac k f frame (2 * ad) reg1 xs s t lens (.word x) fmt1
      (by omega) hx related
  obtain ⟨t2, run2, clock2, -, rel2, -, -, otherReads, -, loaded2⟩ :=
    LoadRegisterTwo.evaluateWStackLoadWReg2 ac k f frame (2 * v) reg2 ys s t1 lens (.word w) fmt2
      (by omega) hw rel1
  have hl1 : StackSemEvaluate.evaluate (wStackLoadNative xs .skip,
      { t with clock := 1 + t.clock }) = (none, { t1 with clock := 1 + t.clock }) := by
    rw [LoadRegisterClock.evaluateWStackLoadClock, run1]; rfl
  have hl2 : StackSemEvaluate.evaluate (wStackLoadNative ys .skip,
      { t1 with clock := 1 + t.clock }) = (none, { t2 with clock := 1 + t.clock }) := by
    rw [LoadRegisterClock.evaluateWStackLoadClock, run2]; rfl
  have hfix : ∀ (u u' : StackSemStateFiniteExact width C F), StackSemControl.fixClock
      { u with clock := 1 + t.clock }
      ((none : Option (StackSemResult width)), { u' with clock := 1 + t.clock }) =
      (none, { u' with clock := 1 + t.clock }) := by
    intro u u'; simp [StackSemControl.fixClock]
  have hdec : StackSemStateOps.decClock { t2 with clock := 1 + t.clock } = t2 := by
    simp only [StackSemStateOps.decClock]
    congr 1
    omega
  have read1 : StackSemStateOps.getVar reg1 t2 = some (.word x) := by
    rw [otherReads reg1 regNe]; exact loaded1
  have haddr : StackSemExpressions.wordExp { t2 with clock := 1 + t.clock }
      (.op .add [.var reg1, .const offset]) = some (x + offset) :=
    stackAddr (t := { t2 with clock := 1 + t.clock }) read1
  rcases hop with rfl | rfl | rfl | rfl <;>
    simp only [wShareInstNative, fmt1, fmt2, wStackLoadAppend, Function.comp_apply] <;>
    rw [LoadRegister.evaluateWStackLoadSeq, StackSemEvaluate.evaluate_seq, hl1, hfix] <;>
    dsimp only <;>
    rw [LoadRegister.evaluateWStackLoadSeq, StackSemEvaluate.evaluate_seq, hl2, hfix] <;>
    dsimp only <;>
    rw [StackSemEvaluate.evaluate_shMemOp, haddr] <;>
    simp only [show ¬ (1 + t.clock = 0) by omega, if_false, hdec] <;>
    exact shareStoreGeneric hshare rel2 hw loaded2 (by simp) notError

theorem evaluateShareInstCorrectLemmaB {width : Nat} [NeZero width] {C F : Type}
    {ac : AsmConfigExact width} {k f frame : Nat} {op : WordMemOp} {v ad : Nat}
    {offset : BitVec width} {s s1 : WordSemStateFiniteExact width (Nat × C) F}
    {t : StackSemStateFiniteExact width C F} {lens : List Nat}
    {res : Option (WordSemResult width)} :
    WordSemStateFiniteExact.evaluate
        (.shareInst op (2 * v) (.op .add [.var (2 * ad), .const offset])) s = (res, s1) ∧
      res ≠ some .error ∧ stateRel ac k f frame s t lens 0 ∧ v < frame + k ∧ ad < frame + k →
    ∃ t1,
      StackSemEvaluate.evaluate
          (wShareInstNative op (2 * v) (.addr (2 * ad) offset) (k, f, frame),
            { t with clock := 1 + t.clock }) = (res.map compileResult, t1) ∧
      ((res = none ∧ stateRel ac k f frame s1 t1 lens 0) ∨
        (∃ fv, res = some (.finalFfi fv) ∧ s1.ffi = t1.ffi ∧ s1.clock = t1.clock)) := by
  rintro ⟨hrun, notError, related, hv, had⟩
  have swap : ∀ ck t1, (StackSemEvaluate.evaluate
          (wShareInstNative op (2 * v) (.addr (2 * ad) offset) (k, f, frame),
            { t with clock := ck + t.clock }) = (res.map compileResult, t1) ∧
      ((∃ fv, res = some (.finalFfi fv) ∧ s1.ffi = t1.ffi ∧ s1.clock = t1.clock) ∨
        (res = none ∧ stateRel ac k f frame s1 t1 lens 0))) →
      StackSemEvaluate.evaluate
          (wShareInstNative op (2 * v) (.addr (2 * ad) offset) (k, f, frame),
            { t with clock := ck + t.clock }) = (res.map compileResult, t1) ∧
      ((res = none ∧ stateRel ac k f frame s1 t1 lens 0) ∨
        (∃ fv, res = some (.finalFfi fv) ∧ s1.ffi = t1.ffi ∧ s1.clock = t1.clock)) :=
    fun _ _ ⟨h, hc⟩ => ⟨h, hc.symm⟩
  cases op
  case load | load8 | load16 | load32 =>
    obtain ⟨t1, h⟩ := evaluateShareInstLoadB ⟨hrun, notError, related, hv, had, by simp⟩
    exact ⟨t1, swap 1 t1 h⟩
  case store | store8 | store16 | store32 =>
    obtain ⟨t1, h⟩ := evaluateShareInstStoreB ⟨hrun, related, hv, had, notError, by simp⟩
    exact ⟨t1, swap 1 t1 h⟩

theorem compCorrectShareInstB {width : Nat} [NeZero width] {C F : Type}
    (ac : AsmConfigExact width) (S : Nat) (op : WordMemOp) (v : Nat) (exp : WordLangExpHOL (BitVec width))
    (source : WordSemStateFiniteExact width (Nat × C) F) :
    SimB ac S (.shareInst op v exp) source := by
  intro k f frame sourcePost target result bs bsPost n nPost compiled lens premises _hsize _hcode
  have hbound := boundOne S premises.1
  obtain ⟨execution, notError, related, conventions, flat, compilation, -, -, -, -,
    maxBound⟩ := premises
  rcases flatExpConventionsShareInstExpSimp flat with ⟨ad, rfl⟩ | ⟨ad, offset, rfl⟩
  all_goals
    simp [postAllocConventionsHOL, everyVarHOL, everyVarExpHOL, everyVarExpsHOL,
      everyStackVarHOL, callArgConventionHOL, isPhyVar] at conventions
    simp [maxVarHOL, maxVarExpHOL, maxList] at maxBound
    simp only [compNative, expToAddrHOL, Prod.mk.injEq] at compilation
    obtain ⟨rfl, -, -⟩ := compilation
  case inl =>
    rw [evaluateShareInstVarEqOpAdd] at execution
    obtain ⟨v', rfl⟩ : ∃ v', v = 2 * v' := ⟨v / 2, by omega⟩
    obtain ⟨a', rfl⟩ : ∃ a', ad = 2 * a' := ⟨ad / 2, by omega⟩
    obtain ⟨t1, h, hc⟩ :=
      evaluateShareInstCorrectLemmaB ⟨execution, notError, related, by omega, by omega⟩
    refine ⟨1, t1, result.map compileResult, ?_, ?_, hbound⟩
    · rw [Nat.add_comm]; simpa [HolAddr.ofWordLangAddr] using h
    · rcases hc with ⟨rfl, hr⟩ | ⟨fv, rfl, hffi, hclk⟩
      · simpa [compCorrectResult] using hr
      · simp [compCorrectResult, hffi, hclk]
  case inr =>
    obtain ⟨v', rfl⟩ : ∃ v', v = 2 * v' := ⟨v / 2, by omega⟩
    obtain ⟨a', rfl⟩ : ∃ a', ad = 2 * a' := ⟨ad / 2, by omega⟩
    obtain ⟨t1, h, hc⟩ :=
      evaluateShareInstCorrectLemmaB ⟨execution, notError, related, by omega, by omega⟩
    refine ⟨1, t1, result.map compileResult, ?_, ?_, hbound⟩
    · rw [Nat.add_comm]; simpa [HolAddr.ofWordLangAddr] using h
    · rcases hc with ⟨rfl, hr⟩ | ⟨fv, rfl, hffi, hclk⟩
      · simpa [compCorrectResult] using hr
      · simp [compCorrectResult, hffi, hclk]

end Flapjack.WordToStackProofs.CompCorrect.ShareInst
