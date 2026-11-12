import InitECandidate.Solver.Compiler.StackPasses.RawCall.Call

/-!
# Bounded `stack_rawcall`

* `compCorrect_bounded`: Flapjack's `StackRawCall.FullCompCorrect.compCorrect` (same
  hypotheses, same conclusions) with the target clock witness bounded by the source clock
  consumed, `clock ≤ s.clock - post.clock`. No program hypothesis is needed: the only extra
  tick is the `Tick` of an optimised greater-frame tail call, paid for by the replaced `Call`.
* `entrySimulation_bounded`: Flapjack's `CompileSemantics.entrySimulation` with
  `extra ≤ clock - post.clock` and the target run ending at the source's final clock.
-/

namespace InitECandidate.Solver.Compiler.StackPasses.RawCall

open Flapjack Flapjack.Compiler.Backend.StackLang Flapjack.StackSemEvaluate
open Flapjack.StackSemStateOps Flapjack.StackSemControl Flapjack.StackSemMeasure
open Flapjack.Compiler.Backend.StackProps Flapjack.Compiler.Backend.StackProps.EvaluateAddClock
open Flapjack.Compiler.Backend.StackRawCall
open Flapjack.Compiler.Backend.StackRawCall.IfCase

set_option autoImplicit false

section
variable {width : Nat} [NeZero width] {C F : Type}

theorem propB_all :
    ∀ (mm : Nat × Nat) (p : HolProg width) (s : StackSemStateFiniteExact width C F),
      stackSemMeasure p s = mm → PropB p s := by
  intro mm
  induction mm using lexNat_wf.induction with
  | _ mm ih =>
  intro p s hm
  subst hm
  have ihp : IHB p s := fun q u hlt => ih _ hlt q u rfl
  cases p with
  | seq c1 c2 => exact seqB c1 c2 s ihp
  | ite cmp r ri c1 c2 => exact iteB cmp r ri c1 c2 s ihp
  | loop b => exact loopB b s ihp
  | jumpLower r1 r2 dest => exact jumpLowerB r1 r2 dest s ihp
  | rawCall dest => exact rawCallB dest s ihp
  | call ret dest handler =>
    rcases ret with _ | ⟨body, link, l1, l2⟩
    · intro info t post r hyp
      have hs := (tailB dest handler info s t post r
        (fun prog _ nz => ihp prog _ (callee_measure_lt prog _ s nz)) hyp).1.mono
        (Nat.le_trans (Nat.sub_le_sub_right (Nat.sub_le _ _) _) (Nat.le_refl _))
      exact ⟨hs, hs⟩
    · exact returnB body link l1 l2 dest handler s ihp
  | tick => exact leafB_tickLike tickLike_tick (fun _ => rfl) (fun _ => rfl)
  | shMemOp op r a =>
    exact leafB_tickLike (tickLike_shMemOp op r a) (fun _ => rfl) (fun _ => rfl)
  | inst i => exact leafB_clockFree (clockFree_inst i) (fun _ => rfl) (fun _ => rfl)
  | alloc n => exact leafB_clockFree (clockFree_alloc n) (fun _ => rfl) (fun _ => rfl)
  | storeConsts a b o =>
    exact leafB_clockFree (clockFree_storeConsts a b o) (fun _ => rfl) (fun _ => rfl)
  | skip => exact leafB_clockFree (clockFree_of_ctor _ rfl) (fun _ => rfl) (fun _ => rfl)
  | get v n => exact leafB_clockFree (clockFree_of_ctor _ rfl) (fun _ => rfl) (fun _ => rfl)
  | set n v => exact leafB_clockFree (clockFree_of_ctor _ rfl) (fun _ => rfl) (fun _ => rfl)
  | opCurrHeap b d e =>
    exact leafB_clockFree (clockFree_of_ctor _ rfl) (fun _ => rfl) (fun _ => rfl)
  | raise v => exact leafB_clockFree (clockFree_of_ctor _ rfl) (fun _ => rfl) (fun _ => rfl)
  | ret v => exact leafB_clockFree (clockFree_of_ctor _ rfl) (fun _ => rfl) (fun _ => rfl)
  | «break» v => exact leafB_clockFree (clockFree_of_ctor _ rfl) (fun _ => rfl) (fun _ => rfl)
  | «continue» v =>
    exact leafB_clockFree (clockFree_of_ctor _ rfl) (fun _ => rfl) (fun _ => rfl)
  | ffi n a b c d e =>
    exact leafB_clockFree (clockFree_of_ctor _ rfl) (fun _ => rfl) (fun _ => rfl)
  | locValue a b c =>
    exact leafB_clockFree (clockFree_of_ctor _ rfl) (fun _ => rfl) (fun _ => rfl)
  | install a b c d e =>
    exact leafB_clockFree (clockFree_of_ctor _ rfl) (fun _ => rfl) (fun _ => rfl)
  | codeBufferWrite a b =>
    exact leafB_clockFree (clockFree_of_ctor _ rfl) (fun _ => rfl) (fun _ => rfl)
  | dataBufferWrite a b =>
    exact leafB_clockFree (clockFree_of_ctor _ rfl) (fun _ => rfl) (fun _ => rfl)
  | stackAlloc n => exact leafB_clockFree (clockFree_of_ctor _ rfl) (fun _ => rfl) (fun _ => rfl)
  | stackFree n => exact leafB_clockFree (clockFree_of_ctor _ rfl) (fun _ => rfl) (fun _ => rfl)
  | stackStore a b =>
    exact leafB_clockFree (clockFree_of_ctor _ rfl) (fun _ => rfl) (fun _ => rfl)
  | stackStoreAny a b =>
    exact leafB_clockFree (clockFree_of_ctor _ rfl) (fun _ => rfl) (fun _ => rfl)
  | stackLoad a b =>
    exact leafB_clockFree (clockFree_of_ctor _ rfl) (fun _ => rfl) (fun _ => rfl)
  | stackLoadAny a b =>
    exact leafB_clockFree (clockFree_of_ctor _ rfl) (fun _ => rfl) (fun _ => rfl)
  | stackGetSize a =>
    exact leafB_clockFree (clockFree_of_ctor _ rfl) (fun _ => rfl) (fun _ => rfl)
  | stackSetSize a =>
    exact leafB_clockFree (clockFree_of_ctor _ rfl) (fun _ => rfl) (fun _ => rfl)
  | bitmapLoad a b =>
    exact leafB_clockFree (clockFree_of_ctor _ rfl) (fun _ => rfl) (fun _ => rfl)
  | halt v => exact leafB_clockFree (clockFree_of_ctor _ rfl) (fun _ => rfl) (fun _ => rfl)

end

/-- **Bounded rawcall `comp_correct`.** Flapjack's `StackRawCall.FullCompCorrect.compCorrect`
with the extra target clock bounded by the source clock consumed:
`clock ≤ source.clock - post.clock`. -/
theorem compCorrect_bounded {width : Nat} [NeZero width] {C F : Type}
    (program : HolProg width) (source target : StackSemStateFiniteExact width C F)
    (info : Spt Nat) (result : Option (StackSemResult width))
    (post : StackSemStateFiniteExact width C F)
    (hypothesis : evaluate (program, source) = (result, post) ∧
      result ≠ some .error ∧ stateRel info source target) :
    SimB (source.clock - post.clock) (compTop info program) info target post result ∧
    SimB (source.clock - post.clock) (comp info program) info target post result :=
  propB_all _ program source rfl info target post result hypothesis

/-- **Bounded rawcall entry simulation.** Flapjack's `CompileSemantics.entrySimulation` with the
extra clock bounded by the source clock consumed by the entry call, and the target run ending
at the source's final clock. -/
theorem entrySimulation_bounded {width : Nat} [NeZero width] {C F : Type}
    (code : List (Nat × HolProg width)) (source : StackSemStateFiniteExact width C F)
    (start clock : Nat) (result : Option (StackSemResult width))
    (post : StackSemStateFiniteExact width C F)
    (distinct : (code.map Prod.fst).Nodup) (sourceCode : source.code = sptFromAList code)
    (run : evaluate
      ((.call none (.inl start) none : HolProg width), {source with clock := clock}) =
      (result, post)) (nonError : result ≠ some .error) :
    ∃ extra targetPost, extra ≤ clock - post.clock ∧ evaluate
      ((.call none (.inl start) none : HolProg width),
        {source with code := sptFromAList (compile code), clock := clock + extra}) =
      (result, targetPost) ∧ targetPost.ffi = post.ffi ∧ targetPost.clock = post.clock := by
  have relation := CompileSemantics.initialRelation code {source with clock := clock} distinct
    sourceCode
  obtain ⟨extra, targetPost, space, hb, postRelation, targetRun, _⟩ :=
    (compCorrect_bounded (.call none (.inl start) none)
      {source with clock := clock}
      {source with clock := clock, code := sptFromAList (compile code)}
      (collectInfo code .ln) result post ⟨run, nonError, relation⟩).2
  refine ⟨extra, {targetPost with stackSpace := space}, hb, ?_, ?_, ?_⟩
  · simpa only [comp] using targetRun
  · obtain ⟨_, _, equality, _⟩ := postRelation
    subst targetPost
    rfl
  · obtain ⟨_, _, equality, _⟩ := postRelation
    subst targetPost
    rfl

end InitECandidate.Solver.Compiler.StackPasses.RawCall
