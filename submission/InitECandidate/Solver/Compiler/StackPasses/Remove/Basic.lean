import InitECandidate.Solver.Compiler.StackPasses.Common
import Flapjack.Compiler.Backend.StackRemove.Proofs.CompileSemantics

/-!
# Bounded `stack_remove` `comp_correct`: statement, leaves, `Seq`, `If`, `Loop`

Bounded counterpart of Flapjack's `StackRemove.CompCorrect.Assembly.compCorrect`
(`StackRemove/Proofs/CompCorrect.lean`). For code whose reachable part is `StoreConsts`-free
(`okP X`, `CodeOk X`: no `StoreConsts`, direct calls only, no call into the labels `X`) the
only clock-adding construct is the overflow branch of a compiled `StackAlloc` (with
`jump = true`, a taken `JumpLower` to the halting stub `stackErrLab`), which ends the run with
`Halt`. Hence the extra clock is at most `extraR r` — `1` for a `Halt` result, `0` otherwise —
for every program. (The `Halt`, `TimeOut` and `FinalFFI` results do not tie the final target
clock in Flapjack's relation, so the witness itself is bounded.)

Leaves whose compiled form is clock free (Flapjack's `clockNeutralHOL`, or `ClockFree`
constructors) reuse Flapjack's simulation and move the target run back to the source clock;
`Tick` and `ShMemOp` tick once on both sides.
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

/-- The extra clock allowed for a result: one tick for a `Halt` (the stack-overflow stub
call), none otherwise. -/
def extraR : Option (StackSemResult width) → Nat
  | some (.halt _) => 1
  | _ => 0

/-- Flapjack's result-dispatch postcondition. -/
def PostR (j : Bool) (off : BitVec width × BitVec width) (k : Nat)
    (r : Option (StackSemResult width)) (post postTarget : StackSemStateFiniteExact width C F) :
    Prop :=
  match r with
  | some (.halt _) | some .timeOut | some (.finalFFI _) => postTarget.ffi = post.ffi
  | _ => stateRelHOL j off k post postTarget

/-- The bounded conclusion. -/
def ConclR (j : Bool) (off : BitVec width × BitVec width) (k : Nat) (q : HolProg width)
    (t : StackSemStateFiniteExact width C F) (r : Option (StackSemResult width))
    (post : StackSemStateFiniteExact width C F) : Prop :=
  ∃ clock postTarget, clock ≤ extraR r ∧
    evaluate (comp j off k q, {t with clock := clock + t.clock}) = (r, postTarget) ∧
    PostR j off k r post postTarget ∧ postTarget.clock = post.clock

/-- Bounded `comp_correct` for one program and source state. -/
def PropR (X : List Nat) (p : HolProg width) (s : StackSemStateFiniteExact width C F) : Prop :=
  ∀ (r : Option (StackSemResult width)) (post t : StackSemStateFiniteExact width C F)
    (k : Nat) (off : BitVec width × BitVec width) (j : Bool),
    evaluate (p, s) = (r, post) ∧ r ≠ some .error ∧ stateRelHOL j off k s t ∧
      Flapjack.Compiler.Backend.StackProps.regBound p k →
    okP X p = true → CodeOk X s → ConclR j off k p t r post

/-- The induction hypothesis: `PropR` at every smaller evaluation measure. -/
def IHR (X : List Nat) (p : HolProg width) (s : StackSemStateFiniteExact width C F) : Prop :=
  ∀ (q : HolProg width) (u : StackSemStateFiniteExact width C F),
    LexNat (stackSemMeasure q u) (stackSemMeasure p s) → PropR X q u

theorem stateRelHOL_clock {j : Bool} {off : BitVec width × BitVec width} {k : Nat}
    {s t : StackSemStateFiniteExact width C F} (h : stateRelHOL j off k s t) :
    t.clock = s.clock := h.2.2.2.2.2.2.2.2.1

theorem stateRelHOL_ffi {j : Bool} {off : BitVec width × BitVec width} {k : Nat}
    {s t : StackSemStateFiniteExact width C F} (h : stateRelHOL j off k s t) :
    t.ffi = s.ffi := h.2.2.2.2.2.2.2.2.2.1

/-- Flapjack's inline dispatch is `PostR`. -/
theorem postR_of {j : Bool} {off : BitVec width × BitVec width} {k : Nat}
    {r : Option (StackSemResult width)} {post T : StackSemStateFiniteExact width C F}
    (h : match r with
      | some (.halt _) | some .timeOut | some (.finalFFI _) => T.ffi = post.ffi
      | _ => stateRelHOL j off k post T) : PostR j off k r post T := by
  rcases r with _ | ⟨v | v | n | n | w | _ | e | _⟩ <;> exact h

/-- `PostR` gives the FFI state in every case. -/
theorem postR_ffi {j : Bool} {off : BitVec width × BitVec width} {k : Nat}
    {r : Option (StackSemResult width)} {post T : StackSemStateFiniteExact width C F}
    (h : PostR j off k r post T) : T.ffi = post.ffi := by
  rcases r with _ | ⟨v | v | n | n | w | _ | e | _⟩ <;>
    first | exact h | exact stateRelHOL_ffi h

/-- Re-setting the target clock to the source's final clock preserves `PostR`. -/
theorem postR_setClock {j : Bool} {off : BitVec width × BitVec width} {k : Nat}
    {r : Option (StackSemResult width)} {post T : StackSemStateFiniteExact width C F} {c : Nat}
    (h : PostR j off k r post T) (hc : post.clock = c) :
    PostR j off k r post { T with clock := c } := by
  rcases r with _ | ⟨v | v | n | n | w | _ | e | _⟩
  all_goals first
    | exact h
    | (have hT : T.clock = c := (stateRelHOL_clock h).trans hc
       have hE : ({ T with clock := c } : StackSemStateFiniteExact width C F) = T := by
         rw [← hT]
       rw [hE]; exact h)

theorem extraR_exitLoop (r : Option (StackSemResult width)) :
    extraR (StackSemControl.exitLoop r) = extraR r := by
  rcases r with _ | ⟨v | v | n | n | w | _ | e | _⟩ <;> try rfl
  cases n <;> rfl

/-! ## Leaves -/

/-- A clock-free leaf whose compiled form is clock free: witness `0`. -/
theorem leafR {X : List Nat} {L : HolProg width} {s : StackSemStateFiniteExact width C F}
    (hL : ClockFree (C := C) (F := F) L)
    (hcL : ∀ (j : Bool) (off : BitVec width × BitVec width) (k : Nat),
      ClockFree (C := C) (F := F) (comp j off k L))
    (hflap : ∀ (r : Option (StackSemResult width)) (post t : StackSemStateFiniteExact width C F)
      (k : Nat) (off : BitVec width × BitVec width) (j : Bool),
      evaluate (L, s) = (r, post) ∧ r ≠ some .error ∧ stateRelHOL j off k s t ∧
        Flapjack.Compiler.Backend.StackProps.regBound L k →
      ∃ clock postTarget,
        evaluate (comp j off k L, {t with clock := clock + t.clock}) = (r, postTarget) ∧
        PostR j off k r post postTarget) :
    PropR X L s := by
  intro r post t k off j hyp _ _
  obtain ⟨clock, T, run, rel⟩ := hflap r post t k off j hyp
  have hpc : post.clock = s.clock := clockFree_clock hL hyp.1
  have htc : t.clock = s.clock := stateRelHOL_clock hyp.2.2.1
  have run0 := clockFree_run (hcL j off k) run t.clock
  refine ⟨0, { T with clock := t.clock }, Nat.zero_le _, ?_, postR_setClock rel (by omega),
    by simp only; omega⟩
  rw [Nat.zero_add]
  exact run0

/-- One-tick leaf shape: a nonzero clock can be moved, ending one tick lower. -/
def TickShift (p : HolProg width) : Prop :=
  ∀ (x : StackSemStateFiniteExact width C F) (c : Nat), x.clock ≠ 0 → c ≠ 0 →
    (evaluate (p, x)).1 ≠ some .error →
    evaluate (p, { x with clock := c }) =
      ((evaluate (p, x)).1, { (evaluate (p, x)).2 with clock := c - 1 })

theorem tickShift_tick : TickShift (C := C) (F := F) (.tick : HolProg width) := by
  intro x c hx hc _
  simp only [evaluate_tick, hx, hc, if_false, decClock]

theorem tickShift_shMemOp (op : Compiler.Encoders.Asm.HolMemop) (reg : Nat)
    (addr : Compiler.Encoders.Asm.HolAddr width) :
    TickShift (C := C) (F := F) (.shMemOp op reg addr : HolProg width) := by
  intro x c hx hc hne
  rcases addr with ⟨a, w⟩
  simp only [evaluate_shMemOp, StackPropsExpressionClock.wordExpWithClock] at hne ⊢
  split
  · rename_i a' _
    simp only [hx, hc, if_false]
    have e : decClock ({ x with clock := c } : StackSemStateFiniteExact width C F) =
        { decClock x with clock := c - 1 } := rfl
    rw [e, StackPropsSharedMemoryClock.shMemOpWithClock]
    rfl
  · rename_i h
    rw [h] at hne
    exact absurd rfl hne

/-- A ticking leaf left unchanged by `comp`: witness `0`. -/
theorem leafR_tick {X : List Nat} {L : HolProg width} {s : StackSemStateFiniteExact width C F}
    (hT : TickLike (C := C) (F := F) L) (hS : TickShift (C := C) (F := F) L)
    (hc : ∀ (j : Bool) (off : BitVec width × BitVec width) (k : Nat), comp j off k L = L)
    (hflap : ∀ (r : Option (StackSemResult width)) (post t : StackSemStateFiniteExact width C F)
      (k : Nat) (off : BitVec width × BitVec width) (j : Bool),
      evaluate (L, s) = (r, post) ∧ r ≠ some .error ∧ stateRelHOL j off k s t ∧
        Flapjack.Compiler.Backend.StackProps.regBound L k →
      ∃ clock postTarget,
        evaluate (comp j off k L, {t with clock := clock + t.clock}) = (r, postTarget) ∧
        PostR j off k r post postTarget) :
    PropR X L s := by
  intro r post t k off j hyp _ _
  obtain ⟨clock, T, run, rel⟩ := hflap r post t k off j hyp
  have run' := run
  rw [hc] at run'
  have htc : t.clock = s.clock := stateRelHOL_clock hyp.2.2.1
  rcases hT _ _ _ hyp.1 hyp.2.1 with ⟨h0, rfl, h1⟩ | ⟨h0, hto, h1⟩
  · rcases hT _ _ _ run' (by simp) with ⟨h2, -, h3⟩ | ⟨-, hto, -⟩
    · simp only at h2
      exact ⟨clock, T, by simp only [extraR]; omega, run, rel, by omega⟩
    · exact absurd rfl hto
  · rcases hT _ _ _ run' hyp.2.1 with ⟨-, rfl, -⟩ | ⟨h2, -, -⟩
    · exact absurd rfl hto
    · simp only at h2
      have hs := hS { t with clock := clock + t.clock } t.clock h2 (by omega)
        (by rw [run']; exact hyp.2.1)
      rw [run'] at hs
      refine ⟨0, { T with clock := t.clock - 1 }, Nat.zero_le _, ?_, postR_setClock rel (by omega),
        by simp only; omega⟩
      rw [Nat.zero_add, hc]
      exact hs

/-! ## Clock-free compiled leaves -/

theorem neutral_upshift (register count : Nat) :
    clockNeutralHOL (upshift (width := width) register count) := by
  induction count using Nat.strongRecOn with
  | ind count ih =>
    rw [upshift]
    split
    · simp [clockNeutralHOL]
    · rename_i h
      simp only [clockNeutralHOL, true_and]
      exact ih _ (by simp only [maxStackAlloc] at *; omega)

theorem neutral_downshift (register count : Nat) :
    clockNeutralHOL (downshift (width := width) register count) := by
  induction count using Nat.strongRecOn with
  | ind count ih =>
    rw [downshift]
    split
    · simp [clockNeutralHOL]
    · rename_i h
      simp only [clockNeutralHOL, true_and]
      exact ih _ (by simp only [maxStackAlloc] at *; omega)

theorem neutral_stackFree (pointer count : Nat) :
    clockNeutralHOL (Flapjack.Compiler.Backend.StackRemove.stackFree (width := width) pointer count) := by
  induction count using Nat.strongRecOn with
  | ind count ih =>
    rw [Flapjack.Compiler.Backend.StackRemove.stackFree]
    split
    · simp [clockNeutralHOL]
    · split
      · simp [singleStackFree, clockNeutralHOL]
      · rename_i h1 h2
        simp only [clockNeutralHOL, singleStackFree, true_and]
        exact ih _ (by simp only [maxStackAlloc] at *; omega)

theorem neutral_get (j : Bool) (off : BitVec width × BitVec width) (k v : Nat) (n : StoreName) :
    clockNeutralHOL (comp j off k (.get v n : HolProg width)) := by
  simp only [comp]; split <;> simp [clockNeutralHOL, moveHOL]

theorem neutral_set (j : Bool) (off : BitVec width × BitVec width) (k v : Nat) (n : StoreName) :
    clockNeutralHOL (comp j off k (.set n v : HolProg width)) := by
  simp only [comp]; split <;> simp [clockNeutralHOL, moveHOL]

theorem neutral_stackStore (j : Bool) (off : BitVec width × BitVec width) (k a b : Nat) :
    clockNeutralHOL (comp j off k (.stackStore a b : HolProg width)) := by
  simp only [comp]
  split
  · simp [clockNeutralHOL]
  · simp only [Flapjack.Compiler.Backend.StackRemove.stackStore, clockNeutralHOL, true_and]
    exact ⟨neutral_upshift _ _, neutral_downshift _ _⟩

theorem neutral_stackLoad (j : Bool) (off : BitVec width × BitVec width) (k a b : Nat) :
    clockNeutralHOL (comp j off k (.stackLoad a b : HolProg width)) := by
  simp only [comp]
  split
  · simp [clockNeutralHOL]
  · simp only [Flapjack.Compiler.Backend.StackRemove.stackLoad, clockNeutralHOL, moveHOL, true_and, and_true]
    exact neutral_upshift _ _

theorem neutral_simple (j : Bool) (off : BitVec width × BitVec width) (k : Nat) :
    (∀ (b : Compiler.Encoders.Asm.HolBinop) (d e : Nat),
      clockNeutralHOL (comp j off k (.opCurrHeap b d e : HolProg width))) ∧
    (∀ a b : Nat, clockNeutralHOL (comp j off k (.dataBufferWrite a b : HolProg width))) ∧
    (∀ a b : Nat, clockNeutralHOL (comp j off k (.stackLoadAny a b : HolProg width))) ∧
    (∀ a b : Nat, clockNeutralHOL (comp j off k (.stackStoreAny a b : HolProg width))) ∧
    (∀ a : Nat, clockNeutralHOL (comp j off k (.stackGetSize a : HolProg width))) ∧
    (∀ a : Nat, clockNeutralHOL (comp j off k (.stackSetSize a : HolProg width))) ∧
    (∀ a b : Nat, clockNeutralHOL (comp j off k (.bitmapLoad a b : HolProg width))) ∧
    (∀ a : Nat, clockNeutralHOL (comp j off k (.stackFree a : HolProg width))) := by
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, fun a => ?_⟩ <;> intros <;>
    first
      | (simp [comp, clockNeutralHOL, moveHOL, addInst, subInst, leftShiftInst, rightShiftInst,
          listSeqHOL]; done)
      | (simp only [comp]; exact neutral_stackFree _ _)

/-! ## `Seq`, `If`, `Loop` -/

theorem seqR {X : List Nat} (first second : HolProg width) (s : StackSemStateFiniteExact width C F)
    (ih : IHR X (.seq first second) s) : PropR X (.seq first second) s := by
  intro result postSource target pointer bounds jump hyp hno hcode
  rcases hyp with ⟨sourceRun, notError, relation, lower⟩
  simp only [okP_seq, Bool.and_eq_true] at hno
  change Flapjack.Compiler.Backend.StackProps.regBound first pointer ∧ Flapjack.Compiler.Backend.StackProps.regBound second pointer at lower
  rcases firstRun : evaluate (first, s) with ⟨firstResult, middle⟩
  cases firstResult with
  | none =>
    rw [Seq.evaluateSeqNone first second s middle firstRun] at sourceRun
    obtain ⟨firstClock, middleTarget, hb1, firstTargetRun, middleRelation, -⟩ :=
      ih first s (seq_first_measure_lt first second s) none middle target pointer bounds jump
        ⟨firstRun, by simp, relation, lower.1⟩ hno.1 hcode
    change stateRelHOL jump bounds pointer middle middleTarget at middleRelation
    have hm := seq_second_measure_lt first second s (evaluate (first, s))
    rw [StackSemEvaluateClock.fixClockEvaluate, firstRun] at hm
    obtain ⟨secondClock, postTarget, hb2, secondTargetRun, postRelation, hc2⟩ :=
      ih second middle hm result postSource middleTarget pointer bounds jump
        ⟨sourceRun, notError, middleRelation, lower.2⟩ hno.2 (codeOk_evaluate firstRun hcode)
    have extraRun := evaluateAddClock secondClock
      (comp jump bounds pointer first) {target with clock := firstClock + target.clock}
      none middleTarget ⟨firstTargetRun, by simp⟩
    have combinedRun :
        evaluate (comp jump bounds pointer first,
          {target with clock := (firstClock + secondClock) + target.clock}) =
          (none, {middleTarget with clock := secondClock + middleTarget.clock}) := by
      simpa only [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using extraRun
    have hb1' : firstClock = 0 := by simpa [extraR] using hb1
    refine ⟨firstClock + secondClock, postTarget, by omega, ?_, postRelation, hc2⟩
    rw [comp, Seq.evaluateSeqNone _ _ _ _ combinedRun]
    exact secondTargetRun
  | some firstResult =>
    rw [Seq.evaluateSeqSome first second s middle firstResult firstRun] at sourceRun
    rcases Prod.mk.inj sourceRun with ⟨resultEq, stateEq⟩
    subst result
    subst postSource
    obtain ⟨clock, postTarget, hb, targetRun, postRelation, hc⟩ :=
      ih first s (seq_first_measure_lt first second s) (some firstResult) middle target pointer
        bounds jump ⟨firstRun, notError, relation, lower.1⟩ hno.1 hcode
    refine ⟨clock, postTarget, hb, ?_, postRelation, hc⟩
    rw [comp, Seq.evaluateSeqSome _ _ _ _ _ targetRun]

theorem iteR {X : List Nat} (comparison : Compiler.Encoders.Asm.HolCmp) (register : Nat)
    (operand : Compiler.Encoders.Asm.HolRegImm width) (first second : HolProg width)
    (s : StackSemStateFiniteExact width C F)
    (ih : IHR X (.ite comparison register operand first second) s) :
    PropR X (.ite comparison register operand first second) s := by
  intro result postSource target pointer bounds jump hyp hno hcode
  rcases hyp with ⟨sourceRun, notError, relation, lower⟩
  simp only [okP_ite, Bool.and_eq_true] at hno
  simp only [Flapjack.Compiler.Backend.StackProps.regBound] at lower
  have leftEq := RelationLaws.stateRelGetVar jump bounds pointer register s target
    ⟨relation, lower.1⟩
  have rightEq := If.operandLookup jump bounds pointer s target operand relation lower.2.1
  rw [evaluate_ite] at sourceRun
  cases leftLookup : getVar register s with
  | none =>
    rw [leftLookup] at sourceRun
    exact (notError (Prod.mk.inj sourceRun).1.symm).elim
  | some left =>
    rw [leftLookup] at sourceRun
    cases rightLookup : StackSemStateOps.getVarImm
        (Compiler.Encoders.Asm.HolRegImm.toWordRegImm operand) s with
    | none =>
      rw [rightLookup] at sourceRun
      exact (notError (Prod.mk.inj sourceRun).1.symm).elim
    | some right =>
      rw [rightLookup] at sourceRun
      simp only [] at sourceRun
      cases compared : wordSemWordCmp comparison left right with
      | none =>
        rw [compared] at sourceRun
        exact (notError (Prod.mk.inj sourceRun).1.symm).elim
      | some truth =>
        rw [compared] at sourceRun
        obtain ⟨clock, postTarget, hb, targetRun, postRelation, hc⟩ :
            ConclR jump bounds pointer (if truth then first else second) target result
              postSource := by
          cases truth with
          | false =>
            exact ih second s (if_second_measure_lt comparison register operand first second s)
              result postSource target pointer bounds jump
              ⟨sourceRun, notError, relation, lower.2.2.2⟩ hno.2 hcode
          | true =>
            exact ih first s (if_first_measure_lt comparison register operand first second s)
              result postSource target pointer bounds jump
              ⟨sourceRun, notError, relation, lower.2.2.1⟩ hno.1 hcode
        have targetLeft : getVar register {target with clock := clock + target.clock} =
            some left := leftEq.symm.trans leftLookup
        have targetRight : StackSemStateOps.getVarImm
            (Compiler.Encoders.Asm.HolRegImm.toWordRegImm operand)
            {target with clock := clock + target.clock} = some right := by
          have same : StackSemStateOps.getVarImm
              (Compiler.Encoders.Asm.HolRegImm.toWordRegImm operand)
              {target with clock := clock + target.clock} =
              StackSemStateOps.getVarImm (Compiler.Encoders.Asm.HolRegImm.toWordRegImm operand)
                target := by
            cases operand <;> rfl
          exact same.trans (rightEq.symm.trans rightLookup)
        refine ⟨clock, postTarget, hb, ?_, postRelation, hc⟩
        rw [comp, evaluate_ite, targetLeft, targetRight]
        cases truth <;> simpa only [compared, Bool.false_eq_true, if_false, if_true] using targetRun

theorem loopR {X : List Nat} (body : HolProg width) (s : StackSemStateFiniteExact width C F)
    (ih : IHR X (.loop body) s) : PropR X (.loop body) s := by
  intro result postSource target pointer bounds jump hyp hno hcode
  rcases hyp with ⟨sourceRun, notError, relation, lower⟩
  have hnoB : okP X body = true := by simpa only [okP_loop] using hno
  rcases bodyRun : evaluate (body, s) with ⟨bodyResult, middle⟩
  have bodyNotError := Loop.loopBodyNotError body s middle postSource bodyResult result bodyRun
    sourceRun notError
  obtain ⟨firstClock, middleTarget, hb1, firstTargetRun, bodyPost, hc1⟩ :=
    ih body s (loop_body_measure_lt body s) bodyResult middle target pointer bounds jump
      ⟨bodyRun, bodyNotError, relation, by simpa only [Flapjack.Compiler.Backend.StackProps.regBound] using lower⟩
      hnoB hcode
  by_cases continues : StackSemControl.contLoop bodyResult = true
  · have middleRelation : stateRelHOL jump bounds pointer middle middleTarget := by
      rcases contLoopImp bodyResult continues with same | same
      · rw [same] at bodyPost; exact bodyPost
      · rw [same] at bodyPost; exact bodyPost
    have hb1' : firstClock = 0 := by
      rcases contLoopImp bodyResult continues with same | same <;>
        · rw [same] at hb1; simpa [extraR] using hb1
    have middleClocks : middleTarget.clock = middle.clock := stateRelHOL_clock middleRelation
    by_cases zero : middle.clock = 0
    · rw [Loop.evaluateLoopTimeOut body s middle bodyResult bodyRun continues zero] at sourceRun
      rcases Prod.mk.inj sourceRun with ⟨resultEq, stateEq⟩
      subst result
      subst postSource
      refine ⟨firstClock, emptyEnv middleTarget, by simp [extraR, hb1'], ?_, ?_,
        by simp only [emptyEnv]; exact middleClocks⟩
      · simpa only [comp] using
          Loop.evaluateLoopTimeOut (comp jump bounds pointer body)
            {target with clock := firstClock + target.clock} middleTarget bodyResult
            firstTargetRun continues (middleClocks.trans zero)
      · change middleTarget.ffi = middle.ffi
        exact stateRelHOL_ffi middleRelation
    · rw [Loop.evaluateLoopReentry body s middle bodyResult bodyRun continues zero] at sourceRun
      have decRelation := RelationLaws.stateRelDecClock jump bounds pointer middle middleTarget
        middleRelation
      have hm := loop_reentry_measure_lt body s (evaluate (body, s))
      rw [StackSemEvaluateClock.fixClockEvaluate, bodyRun] at hm
      have hc1 : CodeOk X middle := codeOk_evaluate bodyRun hcode
      obtain ⟨secondClock, postTarget, hb2, secondTargetRun, postRelation, hc2⟩ :=
        ih (.loop body) (decClock middle) (hm zero) result postSource
          (decClock middleTarget) pointer bounds jump ⟨sourceRun, notError, decRelation, lower⟩
          hno hc1
      have notTimeout : bodyResult ≠ some .timeOut := by
        rcases contLoopImp bodyResult continues with same | same <;> simp [same]
      have extraRun := evaluateAddClock secondClock
        (comp jump bounds pointer body) {target with clock := firstClock + target.clock}
        bodyResult middleTarget ⟨firstTargetRun, notTimeout⟩
      have combinedRun :
          evaluate (comp jump bounds pointer body,
            {target with clock := (firstClock + secondClock) + target.clock}) =
            (bodyResult, {middleTarget with clock := secondClock + middleTarget.clock}) := by
        simpa only [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using extraRun
      have boostedNonzero :
          ({middleTarget with clock := secondClock + middleTarget.clock} :
            StackSemStateFiniteExact width C F).clock ≠ 0 := by
        change secondClock + middleTarget.clock ≠ 0
        omega
      have decState : decClock {middleTarget with clock := secondClock + middleTarget.clock} =
          {decClock middleTarget with clock := secondClock + (decClock middleTarget).clock} := by
        change {middleTarget with clock := secondClock + middleTarget.clock - 1} =
          {middleTarget with clock := secondClock + (middleTarget.clock - 1)}
        have arithmetic : secondClock + middleTarget.clock - 1 =
            secondClock + (middleTarget.clock - 1) := by omega
        rw [arithmetic]
      refine ⟨firstClock + secondClock, postTarget, by omega, ?_, postRelation, hc2⟩
      rw [comp, Loop.evaluateLoopReentry _ _ _ _ combinedRun continues boostedNonzero, decState]
      simpa only [comp] using secondTargetRun
  · have exits : StackSemControl.contLoop bodyResult = false := by
      cases equality : StackSemControl.contLoop bodyResult <;> simp_all
    rw [Loop.evaluateLoopExit body s middle bodyResult bodyRun exits] at sourceRun
    rcases Prod.mk.inj sourceRun with ⟨resultEq, stateEq⟩
    subst result
    subst postSource
    refine ⟨firstClock, middleTarget, by rw [extraR_exitLoop]; exact hb1, ?_, ?_, hc1⟩
    · simpa only [comp] using
        Loop.evaluateLoopExit (comp jump bounds pointer body)
          {target with clock := firstClock + target.clock} middleTarget bodyResult
          firstTargetRun exits
    · cases bodyResult with
      | none => simp [StackSemControl.contLoop] at continues
      | some value =>
        cases value with
        | «break» label => cases label <;> exact bodyPost
        | _ => exact bodyPost

end

end InitECandidate.Solver.Compiler.StackPasses.Remove
