import InitECandidate.Solver.Compiler.StackPasses.Remove.Calls
import Flapjack.Compiler.Backend.StackRemove.Proofs.InitSemantics
import Flapjack.Compiler.Backend.StackRemove.Proofs.InitAny

/-!
# Bounded `stack_remove`

* `compCorrect_bounded`: Flapjack's `StackRemove.CompCorrect.Assembly.compCorrect` (same
  premises plus `okP X p`, `CodeOk X s`) with the extra clock bounded by `extraR result`:
  `1` for a `Halt` result (a stack-overflow `JumpLower` to the halting stub), `0` otherwise.
* `entrySimulation_bounded`: Flapjack's `CompileSemantics.entrySimulation` with
  `extra ≤ extraR result`.
* `makeInit_entry_bounded`: from the `make_init_semantics` premises
  (`dischargeThese ∧ propagateThese`), `okP X` on the reachable source code and oracle, a run of the
  entry call to `start` from the `stack_remove` input state (`makeInitAny … s2`) at clock `k`
  is matched by the run of procedure `0` (initialiser, clock neutral, then the call to
  `start`) from the output state `s2` at clock `extra + k + 1`, `extra ≤ extraR result`, with
  the same result and FFI state.
-/

namespace InitECandidate.Solver.Compiler.StackPasses.Remove

open Flapjack Flapjack.Compiler.Backend.StackLang Flapjack.StackSemEvaluate
open Flapjack.StackSemStateOps Flapjack.StackSemControl Flapjack.StackSemMeasure
open Flapjack.Compiler.Backend.StackProps Flapjack.Compiler.Backend.StackProps.EvaluateAddClock
open Flapjack.Compiler.Backend.StackRemove
open Flapjack.Compiler.Backend.StackRemove.CompCorrect

set_option autoImplicit false

section
variable {width : Nat} [NeZero width] {C F : Type}

/-- Flapjack's simulation, in `PostR` form. -/
theorem flapR (L : HolProg width) (s : StackSemStateFiniteExact width C F) :
    ∀ (r : Option (StackSemResult width)) (post t : StackSemStateFiniteExact width C F)
      (k : Nat) (off : BitVec width × BitVec width) (j : Bool),
      evaluate (L, s) = (r, post) ∧ r ≠ some .error ∧ stateRelHOL j off k s t ∧
        Flapjack.Compiler.Backend.StackProps.regBound L k →
      ∃ clock postTarget,
        evaluate (comp j off k L, {t with clock := clock + t.clock}) = (r, postTarget) ∧
        PostR j off k r post postTarget := by
  intro r post t k off j hyp
  obtain ⟨c, T, run, rel⟩ := Assembly.compCorrect L s r post t k off j hyp
  exact ⟨c, T, run, by rcases r with _ | ⟨v | v | n | n | w | _ | e | _⟩ <;> exact rel⟩

theorem leafR_id {X : List Nat} {L : HolProg width} {s : StackSemStateFiniteExact width C F}
    (hL : ClockFree (C := C) (F := F) L)
    (hc : ∀ (j : Bool) (off : BitVec width × BitVec width) (k : Nat), comp j off k L = L) :
    PropR X L s :=
  leafR hL (fun j off k => by rw [hc]; exact hL) (flapR L s)

theorem leafR_neutral {X : List Nat} {L : HolProg width} {s : StackSemStateFiniteExact width C F}
    (hL : ClockFree (C := C) (F := F) L)
    (hc : ∀ (j : Bool) (off : BitVec width × BitVec width) (k : Nat),
      clockNeutralHOL (comp j off k L)) :
    PropR X L s :=
  leafR hL (fun j off k => clockFree_of_neutral (hc j off k)) (flapR L s)

theorem propR_all (X : List Nat) :
    ∀ (mm : Nat × Nat) (p : HolProg width) (s : StackSemStateFiniteExact width C F),
      stackSemMeasure p s = mm → PropR X p s := by
  intro mm
  induction mm using lexNat_wf.induction with
  | _ mm ih =>
  intro p s hm
  subst hm
  have ihp : IHR X p s := fun q u hlt => ih _ hlt q u rfl
  cases p with
  | seq c1 c2 => exact seqR c1 c2 s ihp
  | ite cmp r ri c1 c2 => exact iteR cmp r ri c1 c2 s ihp
  | loop b => exact loopR b s ihp
  | jumpLower r1 r2 dest => exact jumpLowerR r1 r2 dest s ihp
  | rawCall dest => exact rawCallR dest s ihp
  | call ret dest handler =>
    rcases ret with _ | ⟨body, link, l1, l2⟩
    · exact tailR dest handler s ihp
    · rcases handler with _ | ⟨h, hl1, hl2⟩
      · exact returnNoneR body link l1 l2 dest s ihp
      · exact returnHandlerR body h link l1 l2 hl1 hl2 dest s ihp
  | stackAlloc n => exact stackAllocR n s
  | alloc n =>
    intro r post t k off j _ hno
    exact absurd hno (by simp)
  | storeConsts a b o =>
    intro r post t k off j _ hno
    exact absurd hno (by simp)
  | tick =>
    exact leafR_tick tickLike_tick tickShift_tick (fun _ _ _ => by simp only [comp]) (flapR _ s)
  | shMemOp op r a =>
    exact leafR_tick (tickLike_shMemOp op r a) (tickShift_shMemOp op r a) (fun _ _ _ => by simp only [comp])
      (flapR _ s)
  | inst i => exact leafR_id (clockFree_inst i) (fun _ _ _ => by simp only [comp])
  | get v n => exact leafR_neutral (clockFree_of_ctor _ rfl) (fun j off k => neutral_get j off k v n)
  | set n v => exact leafR_neutral (clockFree_of_ctor _ rfl) (fun j off k => neutral_set j off k v n)
  | opCurrHeap b d e =>
    exact leafR_neutral (clockFree_of_ctor _ rfl) (fun j off k => (neutral_simple j off k).1 b d e)
  | dataBufferWrite a b =>
    exact leafR_neutral (clockFree_of_ctor _ rfl)
      (fun j off k => (neutral_simple j off k).2.1 a b)
  | stackLoadAny a b =>
    exact leafR_neutral (clockFree_of_ctor _ rfl)
      (fun j off k => (neutral_simple j off k).2.2.1 a b)
  | stackStoreAny a b =>
    exact leafR_neutral (clockFree_of_ctor _ rfl)
      (fun j off k => (neutral_simple j off k).2.2.2.1 a b)
  | stackGetSize a =>
    exact leafR_neutral (clockFree_of_ctor _ rfl)
      (fun j off k => (neutral_simple j off k).2.2.2.2.1 a)
  | stackSetSize a =>
    exact leafR_neutral (clockFree_of_ctor _ rfl)
      (fun j off k => (neutral_simple j off k).2.2.2.2.2.1 a)
  | bitmapLoad a b =>
    exact leafR_neutral (clockFree_of_ctor _ rfl)
      (fun j off k => (neutral_simple j off k).2.2.2.2.2.2.1 a b)
  | stackFree n =>
    exact leafR_neutral (clockFree_of_ctor _ rfl)
      (fun j off k => (neutral_simple j off k).2.2.2.2.2.2.2 n)
  | stackStore a b =>
    exact leafR_neutral (clockFree_of_ctor _ rfl) (fun j off k => neutral_stackStore j off k a b)
  | stackLoad a b =>
    exact leafR_neutral (clockFree_of_ctor _ rfl) (fun j off k => neutral_stackLoad j off k a b)
  | skip => exact leafR_id (clockFree_of_ctor _ rfl) (fun _ _ _ => by simp only [comp])
  | halt v => exact leafR_id (clockFree_of_ctor _ rfl) (fun _ _ _ => by simp only [comp])
  | ret v => exact leafR_id (clockFree_of_ctor _ rfl) (fun _ _ _ => by simp only [comp])
  | raise v => exact leafR_id (clockFree_of_ctor _ rfl) (fun _ _ _ => by simp only [comp])
  | «break» v => exact leafR_id (clockFree_of_ctor _ rfl) (fun _ _ _ => by simp only [comp])
  | «continue» v => exact leafR_id (clockFree_of_ctor _ rfl) (fun _ _ _ => by simp only [comp])
  | ffi n a b c d e => exact leafR_id (clockFree_of_ctor _ rfl) (fun _ _ _ => by simp only [comp])
  | locValue a b c => exact leafR_id (clockFree_of_ctor _ rfl) (fun _ _ _ => by simp only [comp])
  | install a b c d e => exact leafR_id (clockFree_of_ctor _ rfl) (fun _ _ _ => by simp only [comp])
  | codeBufferWrite a b => exact leafR_id (clockFree_of_ctor _ rfl) (fun _ _ _ => by simp only [comp])

end

/-- **Bounded `stack_remove` `comp_correct`.** Flapjack's
`StackRemove.CompCorrect.Assembly.compCorrect` (same premises and conclusion) for `okP X`
programs in `CodeOk X` states (reachable code is `StoreConsts`-free), with the extra clock at
most `1` for a `Halt` result and `0` for every other result, and the target run ending at the
source's final clock. -/
theorem compCorrect_bounded {width : Nat} [NeZero width] {C F : Type} (X : List Nat)
    (program : HolProg width)
    (source : StackSemStateFiniteExact width C F) (result : Option (StackSemResult width))
    (postSource target : StackSemStateFiniteExact width C F)
    (pointer : Nat) (bounds : BitVec width × BitVec width) (jump : Bool)
    (hypothesis : evaluate (program, source) = (result, postSource) ∧
      result ≠ some .error ∧ stateRelHOL jump bounds pointer source target ∧
      Flapjack.Compiler.Backend.StackProps.regBound program pointer)
    (hno : okP X program = true) (hcode : CodeOk X source) :
    ∃ clock postTarget, clock ≤ extraR result ∧
      evaluate (comp jump bounds pointer program,
        {target with clock := clock + target.clock}) = (result, postTarget) ∧
      PostR jump bounds pointer result postSource postTarget ∧
      postTarget.clock = postSource.clock :=
  propR_all X _ program source rfl result postSource target pointer bounds jump hypothesis hno
    hcode

/-- **Bounded `stack_remove` entry simulation.** Flapjack's
`StackRemove.CompileSemantics.entrySimulation` with `extra ≤ extraR result`. -/
theorem entrySimulation_bounded {width : Nat} [NeZero width] {C F : Type} (X : List Nat)
    (jump : Bool) (bounds : BitVec width × BitVec width) (pointer start clock : Nat)
    (source target postSource : StackSemStateFiniteExact width C F)
    (result : Option (StackSemResult width))
    (relation : stateRelHOL jump bounds pointer source target)
    (run : evaluate (.call none (.inl start) none, {source with clock := clock}) =
      (result, postSource))
    (nonError : result ≠ some .error) (hcode : CodeOk X source) (hstart : start ∉ X) :
    ∃ extra postTarget, extra ≤ extraR result ∧
      evaluate (.call none (.inl start) none, {target with clock := extra + clock}) =
        (result, postTarget) ∧ postTarget.ffi = postSource.ffi ∧
      postTarget.clock = postSource.clock := by
  obtain ⟨extra, postTarget, hb, targetRun, postRelation, hclk⟩ :=
    compCorrect_bounded X (.call none (.inl start) none)
      {source with clock := clock} result postSource {target with clock := clock}
      pointer bounds jump ⟨run, nonError,
        RelationLaws.stateRelWithClock jump bounds pointer clock source target relation,
        by simp [Flapjack.Compiler.Backend.StackProps.regBound]⟩
      (by simpa [okP, destOk] using hstart) hcode
  exact ⟨extra, postTarget, hb, by simpa only [comp] using targetRun, postR_ffi postRelation,
    hclk⟩

/-- The initialiser prefix of procedure `0`: a call of `0` at clock `k + 1` behaves (result
and FFI state) like the call of `start` from the initialiser's post-state at clock `k`. -/
theorem init_entry_run {width : Nat} [NeZero width] {C F : Type}
    (generateGc : Bool) (maxHeap pointer start : Nat)
    (s t : StackSemStateFiniteExact width C F)
    (entry : sptLookup 0 s.code =
      some (.seq (initCode generateGc maxHeap pointer) (.call none (.inl start) none)))
    (hrun : evaluate (initCode generateGc maxHeap pointer, s) = (none, t)) (k : Nat) :
    (evaluate (.call none (.inl 0) none, {s with clock := k + 1})).1 =
        (evaluate (.call none (.inl start) none, {t with clock := k})).1 ∧
      (evaluate (.call none (.inl 0) none, {s with clock := k + 1})).2.ffi =
        (evaluate (.call none (.inl start) none, {t with clock := k})).2.ffi ∧
      (evaluate (.call none (.inl 0) none, {s with clock := k + 1})).2.clock =
        (evaluate (.call none (.inl start) none, {t with clock := k})).2.clock := by
  have clockRun := Proofs.InitClock.evaluateInitCodeClock generateGc maxHeap pointer s t none k
    hrun
  have body : evaluate (.seq (initCode generateGc maxHeap pointer)
      (.call none (.inl start) none), {s with clock := k}) =
      evaluate (.call none (.inl start) none, {t with clock := k}) := by
    rw [evaluate_seq, clockRun]
    simp [StackSemControl.fixClock]
  have notBad := Proofs.InitSemantics.callNotBad start {t with clock := k}
  rw [evaluate_call]
  simp only [StackSemControl.findCode, entry, Nat.add_one_ne_zero, if_false,
    StackSemStateOps.decClock, Nat.add_sub_cancel]
  rw [show ({ ({s with clock := k + 1} : StackSemStateFiniteExact width C F) with
      clock := k } : StackSemStateFiniteExact width C F) = {s with clock := k} from rfl, body]
  simp only [StackSemControl.fixClock, notBad]
  rcases hE : evaluate (.call none (.inl start) none, {t with clock := k}) with ⟨r, u⟩
  have hu : u.clock ≤ k := StackSemEvaluateClock.evaluateClock _ _ _ _ hE
  simp only [Bool.false_eq_true, if_false]
  exact ⟨trivial, trivial, Nat.min_eq_right hu⟩

/-- **Bounded `stack_remove` initialised entry run.** Under Flapjack's `make_init_semantics`
premises (`dischargeThese ∧ propagateThese`), `okP X` on the source procedures at labels
outside `X` and on the oracle's programs, and `start ∉ X`, a run of the entry call to `start` from the `stack_remove` source state
`makeInitAny … s2` at clock `k` is matched by the run of procedure `0` from `s2` at clock
`extra + k + 1` with `extra ≤ extraR res` (the `+ 1` is the call of procedure `0`; the
initialiser is clock neutral), with the same result and FFI state. -/
theorem makeInit_entry_bounded {width : Nat} [NeZero width] {C F : Type} (X : List Nat)
    (jump : Bool) (bounds : BitVec width × BitVec width) (generateGc : Bool)
    (maxHeap pointer start : Nat)
    (oracle : Nat → C × List (Nat × HolProg width) × List (BitVec width))
    (code : List (Nat × HolProg width)) (s2 : StackSemStateFiniteExact width C F)
    (bitmaps : List (BitVec width)) (dataSpace : Nat)
    (hyp : Proofs.InitMake.dischargeThese jump bounds generateGc maxHeap pointer start oracle
        code s2 ∧
      Proofs.InitMake.propagateThese s2 bitmaps dataSpace)
    (hokCode : ∀ np ∈ code, np.1 ∉ X → okP X np.2 = true)
    (hokOracle : ∀ i, ∀ np ∈ (oracle i).2.1, okP X np.2 = true) (hstart : start ∉ X)
    (k : Nat) (res : Option (StackSemResult width)) (post : StackSemStateFiniteExact width C F)
    (run : evaluate ((.call none (.inl start) none : HolProg width),
      { Proofs.InitMake.makeInitAny generateGc maxHeap bitmaps dataSpace oracle jump bounds
          pointer (sptFromAList code) s2 with clock := k }) = (res, post))
    (hne : res ≠ some .error) :
    ∃ extra post', extra ≤ extraR res ∧
      evaluate ((.call none (.inl 0) none : HolProg width), {s2 with clock := extra + k + 1}) =
        (res, post') ∧ post'.ffi = post.ffi ∧ post'.clock = post.clock := by
  obtain ⟨⟨every, oracleBound, oracleEq, codeEq, k8, entry1, save, noStack, noStore, noAlloc,
    maxOk⟩, good, ptr2, ptr3, ptr4, bp, r2, r3, r4, m0, m1, m2, m3, m4, cbEmpty, le, al2, al4,
    albp, big, heap⟩ := hyp
  have entry0 : sptLookup 0 s2.code = some (.seq (initCode generateGc maxHeap pointer)
      (.call none (.inl start) none)) := by
    rw [codeEq, sptLookup_sptFromAList]
    simp [compileHOL, initStubs, sptAListLookup]
  have pre : Proofs.InitCodePre.initCodePre pointer bitmaps dataSpace s2 := by
    have sub : -1 * ptr2 + ptr4 = ptr4 - ptr2 := by
      rw [BitVec.neg_mul]; simp [BitVec.sub_eq_add_neg, BitVec.add_comm]
    rw [sub] at heap
    exact ⟨ptr2, ptr3, ptr4, bp, good, k8, entry1, save, noStack, noStore, noAlloc, r2, r3, r4,
      m0, m1, m2, m3, m4, le, big, al2, al4, albp, cbEmpty, heap⟩
  have errLab : sptLookup stackErrLab s2.code = some (haltInst (BitVec.ofNat width 2)) := by
    rw [codeEq, sptLookup_sptFromAList]
    simp [compileHOL, initStubs, sptAListLookup, stackErrLab]
  have codeRel := Proofs.InitCodeRelation.impCodeRel jump bounds generateGc maxHeap pointer start
    code s2.code ⟨every, codeEq⟩
  have initRun := Proofs.InitSemantics.evaluateInitCode generateGc maxHeap bitmaps dataSpace
    pointer start s2 jump bounds oracle (sptFromAList code)
    ⟨⟨entry0, pre, maxOk⟩, oracleEq, oracleBound, errLab, codeRel⟩
  rcases hrun : evaluate (initCode generateGc maxHeap pointer, s2) with ⟨result, t⟩
  rw [hrun] at initRun
  cases result with
  | some r => exact initRun.elim
  | none =>
    obtain ⟨s1, opt, rel, -⟩ := initRun
    have hs1 : Proofs.InitMake.makeInitAny generateGc maxHeap bitmaps dataSpace oracle jump
        bounds pointer (sptFromAList code) s2 = s1 := by
      unfold Proofs.InitMake.makeInitAny
      rw [opt]
    have hcd := Proofs.InitAny.makeInitAnyCode generateGc maxHeap bitmaps dataSpace oracle jump
      bounds pointer (sptFromAList code) s2
    have hco := Proofs.InitAny.makeInitAnyCompileOracle generateGc maxHeap bitmaps dataSpace
      oracle jump bounds pointer (sptFromAList code) s2
    rw [hs1] at hcd hco run
    have hcode1 : CodeOk X s1 := by
      refine ⟨fun k' p hk' hk => ?_, fun i np hnp => ?_⟩
      · rw [hcd, sptLookup_sptFromAList] at hk
        exact hokCode (k', p) (sptAListLookup_mem' hk) hk'
      · rw [hco] at hnp
        exact hokOracle i np hnp
    obtain ⟨extra, postT, hb, trun, tffi, tclk⟩ :=
      entrySimulation_bounded X jump bounds pointer start k s1 t post res rel run hne hcode1
        hstart
    have he := init_entry_run generateGc maxHeap pointer start s2 t entry0 hrun (extra + k)
    rw [trun] at he
    refine ⟨extra, (evaluate ((.call none (.inl 0) none : HolProg width),
      {s2 with clock := extra + k + 1})).2, hb, Prod.ext he.1 rfl, by rw [he.2.1, tffi],
      by rw [he.2.2, tclk]⟩

end InitECandidate.Solver.Compiler.StackPasses.Remove
