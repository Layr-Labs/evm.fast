import InitECandidate.Solver.Compiler.StackPasses.Alloc.Calls

/-!
# Lock-step `stack_alloc` for `noA` programs (no `Alloc`, no stubbed `StoreConsts`)

* `comp_correct_noA`: Flapjack's `StackAlloc.comp_correct` (same premises plus `noA p` and
  `CodeNoA s`) with the extra clock `ck = 0`: the compiled program runs from the source clock
  and ends at the source's final clock.
* `make_init_entry_noA`: the entry call `Call NONE (INL start) NONE` from Flapjack's
  `make_init` source state at clock `k` (premises of Flapjack's `make_init_semantics`, plus
  `noA` on the source code and oracle) is matched by the same call from the `stack_alloc`
  output state at the **same** clock `k`, with the same result, FFI state and final clock.
-/

namespace InitECandidate.Solver.Compiler.StackPasses.Alloc

open Flapjack Flapjack.Compiler.Backend.StackLang Flapjack.StackSemEvaluate
open Flapjack.StackSemStateOps Flapjack.StackSemControl Flapjack.StackSemMeasure
open Flapjack.Compiler.Backend.StackProps Flapjack.Compiler.Backend.StackProps.EvaluateAddClock
open Flapjack.Compiler.Backend.DataToWord Flapjack.Compiler.Backend.WordGcFunctions
open Flapjack.Compiler.Backend.StackAlloc
open Flapjack.Compiler.Backend.StackAlloc.CompCorrect
open Flapjack.Compiler.Backend.StackAlloc.ProgCompSupport

set_option autoImplicit false

section
variable {width : Nat} [NeZero width] {C F : Type}
variable (anything : WordSemGcFun width) (cr : CompileFn width C)

theorem goalZ_all :
    ∀ (mm : Nat × Nat) (p : HolProg width) (s : StackSemStateFiniteExact width C F),
      stackSemMeasure p s = mm → GoalZ anything cr p s := by
  intro mm
  induction mm using lexNat_wf.induction with
  | _ mm ih =>
  intro p s hm
  subst hm
  have ihp : IHZ anything cr p s := fun q u hlt => ih _ hlt q u rfl
  cases p with
  | seq c1 c2 => exact seqZ anything cr s c1 c2 ihp
  | ite cmp r1 ri c1 c2 => exact iteZ anything cr s cmp r1 ri c1 c2 ihp
  | loop c1 => exact loopZ anything cr s c1 ihp
  | jumpLower r1 r2 dest => exact jumpLowerZ anything cr s r1 r2 dest ihp
  | rawCall dest => exact rawCallZ anything cr s dest ihp
  | call ret dest handler =>
      rcases ret with _ | ⟨retH, link, l1, l2⟩
      · exact callNoneZ anything cr s dest handler ihp
      · exact callSomeZ anything cr s retH link l1 l2 dest handler ihp
  | alloc k =>
      intro r t m n c regs _ _ _ hno
      exact absurd hno (by simp)
  | storeConsts t1 t2 stub =>
      rcases stub with _ | loc
      · exact leafZ_clockFree anything cr (clockFree_storeConsts t1 t2 none) (fun _ _ => rfl)
          (goal_storeConsts anything cr s t1 t2 none)
      · intro r t m n c regs _ _ _ hno
        exact absurd hno (by simp)
  | tick => exact leafZ_tickLike anything cr tickLike_tick (fun _ _ => rfl) (goal_tick anything cr s)
  | shMemOp op v addr =>
      exact leafZ_tickLike anything cr (tickLike_shMemOp op v addr) (fun _ _ => rfl)
        (goal_shMemOp anything cr s op v addr)
  | inst i =>
      exact leafZ_clockFree anything cr (clockFree_inst i) (fun _ _ => rfl)
        (goal_inst anything cr s i)
  | skip =>
      exact leafZ_clockFree anything cr (clockFree_of_ctor _ rfl) (fun _ _ => rfl)
        (goal_skip anything cr s)
  | halt v =>
      exact leafZ_clockFree anything cr (clockFree_of_ctor _ rfl) (fun _ _ => rfl)
        (goal_halt anything cr s v)
  | ret v =>
      exact leafZ_clockFree anything cr (clockFree_of_ctor _ rfl) (fun _ _ => rfl)
        (goal_ret anything cr s v)
  | raise v =>
      exact leafZ_clockFree anything cr (clockFree_of_ctor _ rfl) (fun _ _ => rfl)
        (goal_raise anything cr s v)
  | «break» v =>
      exact leafZ_clockFree anything cr (clockFree_of_ctor _ rfl) (fun _ _ => rfl)
        (goal_break anything cr s v)
  | «continue» v =>
      exact leafZ_clockFree anything cr (clockFree_of_ctor _ rfl) (fun _ _ => rfl)
        (goal_continue anything cr s v)
  | get v name =>
      exact leafZ_clockFree anything cr (clockFree_of_ctor _ rfl) (fun _ _ => rfl)
        (goal_get anything cr s v name)
  | set name v =>
      exact leafZ_clockFree anything cr (clockFree_of_ctor _ rfl) (fun _ _ => rfl)
        (goal_set anything cr s name v)
  | opCurrHeap b v src =>
      exact leafZ_clockFree anything cr (clockFree_of_ctor _ rfl) (fun _ _ => rfl)
        (goal_opCurrHeap anything cr s b v src)
  | install a b c d e =>
      exact leafZ_clockFree anything cr (clockFree_of_ctor _ rfl) (fun _ _ => rfl)
        (goal_install anything cr s a b c d e)
  | codeBufferWrite a b =>
      exact leafZ_clockFree anything cr (clockFree_of_ctor _ rfl) (fun _ _ => rfl)
        (goal_codeBufferWrite anything cr s a b)
  | dataBufferWrite a b =>
      exact leafZ_clockFree anything cr (clockFree_of_ctor _ rfl) (fun _ _ => rfl)
        (goal_dataBufferWrite anything cr s a b)
  | ffi fi p1 p2 p3 p4 p5 =>
      exact leafZ_clockFree anything cr (clockFree_of_ctor _ rfl) (fun _ _ => rfl)
        (goal_ffi anything cr s fi p1 p2 p3 p4 p5)
  | locValue v l1 l2 =>
      exact leafZ_clockFree anything cr (clockFree_of_ctor _ rfl) (fun _ _ => rfl)
        (goal_locValue anything cr s v l1 l2)
  | stackAlloc k =>
      exact leafZ_clockFree anything cr (clockFree_of_ctor _ rfl) (fun _ _ => rfl)
        (goal_stackAlloc anything cr s k)
  | stackFree k =>
      exact leafZ_clockFree anything cr (clockFree_of_ctor _ rfl) (fun _ _ => rfl)
        (goal_stackFree anything cr s k)
  | stackLoad a k =>
      exact leafZ_clockFree anything cr (clockFree_of_ctor _ rfl) (fun _ _ => rfl)
        (goal_stackLoad anything cr s a k)
  | stackLoadAny a rn =>
      exact leafZ_clockFree anything cr (clockFree_of_ctor _ rfl) (fun _ _ => rfl)
        (goal_stackLoadAny anything cr s a rn)
  | stackStore a k =>
      exact leafZ_clockFree anything cr (clockFree_of_ctor _ rfl) (fun _ _ => rfl)
        (goal_stackStore anything cr s a k)
  | stackStoreAny a rn =>
      exact leafZ_clockFree anything cr (clockFree_of_ctor _ rfl) (fun _ _ => rfl)
        (goal_stackStoreAny anything cr s a rn)
  | stackGetSize a =>
      exact leafZ_clockFree anything cr (clockFree_of_ctor _ rfl) (fun _ _ => rfl)
        (goal_stackGetSize anything cr s a)
  | stackSetSize a =>
      exact leafZ_clockFree anything cr (clockFree_of_ctor _ rfl) (fun _ _ => rfl)
        (goal_stackSetSize anything cr s a)
  | bitmapLoad a v =>
      exact leafZ_clockFree anything cr (clockFree_of_ctor _ rfl) (fun _ _ => rfl)
        (goal_bitmapLoad anything cr s a v)

end

/-- **Lock-step `stack_alloc` `comp_correct`.** Flapjack's `StackAlloc.comp_correct` with two
extra premises — the program has no `Alloc` and no `StoreConsts _ _ (some _)` (`noA p`), and
neither have the procedure bodies and oracle programs (`CodeNoA s`) — and the extra clock `ck`
replaced by `0`. -/
theorem comp_correct_noA {width : Nat} [NeZero width] {C F : Type}
    {anything : WordSemGcFun width}
    {compile_rest : C → List (Nat × HolProg width) → Option (List (BitVec 8) × C)} :
    ∀ (p : HolProg width) (s : StackSemStateFiniteExact width C F)
      (r : Option (StackSemResult width)) (t : StackSemStateFiniteExact width C F) (m n : Nat)
      (c : Flapjack.Compiler.Backend.DataToWord.Config)
      (regs : HolFiniteMapExact Nat (WordLocW width)),
      evaluate (p, s) = (r, t) ∧ r ≠ some .error ∧ Flapjack.Compiler.Backend.StackProps.allocArg p ∧
      (∀ k prog, sptLookup k s.code = some prog →
        k ≠ gcStubLocation ∧ Flapjack.Compiler.Backend.StackProps.allocArg prog) ∧
      (∀ (i k : Nat) (q : HolProg width), (k, q) ∈ (s.compileOracle i).2.1 →
        k ≠ gcStubLocation ∧ Flapjack.Compiler.Backend.StackProps.allocArg q) ∧
      s.gcFun = wordGcFun c ∧ s.useAlloc = true ∧
      s.stack.length * (width / 8) < 2 ^ width ∧
      s.regs.submap regs ∧
      s.useStack = true ∧
      s.bitmaps.length + s.dataBuffer.buffer.length + s.dataBuffer.spaceLeft < 2 ^ width - 1 ∧
      s.compile = (fun cfg => compile_rest cfg ∘ List.map progComp) →
      noA p = true → CodeNoA s →
      ∃ regs1,
        evaluate ((comp n m p).1, { s with
            useStore := true, useStack := true, useAlloc := false
            clock := s.clock, regs := regs, gcFun := anything
            compileOracle := Prod.map id (Prod.map (List.map progComp) id) ∘ s.compileOracle
            compile := compile_rest
            code := sptFromAList (compile c (sptToAList s.code)) }) =
          (r, { t with
            useStore := true, useStack := true, useAlloc := false
            regs := regs1, gcFun := anything
            compileOracle := Prod.map id (Prod.map (List.map progComp) id) ∘ t.compileOracle
            compile := compile_rest
            code := sptFromAList (compile c (sptToAList t.code)) }) ∧
        t.regs.submap regs1 ∧
        t.bitmaps.length + t.dataBuffer.buffer.length + t.dataBuffer.spaceLeft < 2 ^ width - 1 ∧
        ((∀ w, r ≠ some (.halt w)) → t.stack.length * (width / 8) < 2 ^ width) := by
  rintro p s r t m n c regs ⟨h, hr, ha, hcode, horacle, hgc, hA, hst, hsub, hK, hbuf, hC⟩ hno hc
  exact goalZ_all anything compile_rest _ p s rfl r t m n c regs h hr ha hno hc
    ⟨hcode, horacle, hgc, hA, hst, hsub, hK, hbuf, hC⟩

/-- **Lock-step `stack_alloc` entry run.** Under the premises of Flapjack's
`StackAlloc.make_init_semantics` (other than distinctness and non-failure) and `noA` on the
source code and the oracle's programs, a run of the entry call from the `make_init` source
state at clock `k` is matched by the run from the `stack_alloc` output state `s` at the same
clock `k`: same result, FFI state and final clock. -/
theorem make_init_entry_noA {width : Nat} [NeZero width] {C F : Type}
    {code : List (Nat × HolProg width)}
    {oracle : Nat → C × List (Nat × HolProg width) × List (BitVec width)}
    {s : StackSemStateFiniteExact width C F} {c : Flapjack.Compiler.Backend.DataToWord.Config}
    (hcode : ∀ k prog, sptAListLookup k code = some prog →
      k ≠ gcStubLocation ∧ Flapjack.Compiler.Backend.StackProps.allocArg prog)
    (horacle : ∀ (i k : Nat) (q : HolProg width), (k, q) ∈ (oracle i).2.1 →
      k ≠ gcStubLocation ∧ Flapjack.Compiler.Backend.StackProps.allocArg q)
    (hK : s.useStack = true) (hS : s.useStore = true) (hA : ¬ s.useAlloc = true)
    (hc : s.code = sptFromAList (compile c code))
    (hor : s.compileOracle = Prod.map id (Prod.map (List.map progComp) id) ∘ oracle)
    (hbuf : s.bitmaps.length + s.dataBuffer.buffer.length + s.dataBuffer.spaceLeft <
      2 ^ width - 1)
    (hst : s.stack.length * (width / 8) < 2 ^ width)
    (hnoCode : ∀ np ∈ code, noA np.2 = true)
    (hnoOracle : ∀ i, ∀ np ∈ (oracle i).2.1, noA np.2 = true)
    (start k : Nat) (res : Option (StackSemResult width))
    (post : StackSemStateFiniteExact width C F)
    (run : evaluate ((.call none (.inl start) none : HolProg width),
      { makeInit c (sptFromAList code) oracle s with clock := k }) = (res, post))
    (hne : res ≠ some .error) :
    ∃ post', evaluate ((.call none (.inl start) none : HolProg width), { s with clock := k }) =
      (res, post') ∧ post'.ffi = post.ffi ∧ post'.clock = post.clock := by
  have hcodeS : CodeNoA ({ makeInit c (sptFromAList code) oracle s with clock := k } :
      StackSemStateFiniteExact width C F) := by
    refine ⟨fun k' p hk => ?_, fun i np hnp => hnoOracle i np hnp⟩
    change sptLookup k' (sptFromAList code) = some p at hk
    rw [sptLookup_sptFromAList] at hk
    exact hnoCode (k', p) (sptAListLookup_mem' hk)
  obtain ⟨regs1, he, -⟩ := comp_correct_noA (anything := s.gcFun) (compile_rest := s.compile)
    (.call none (.inl start) none) { makeInit c (sptFromAList code) oracle s with clock := k }
    res post 0 0 c s.regs
    ⟨run, hne, ⟨trivial, trivial⟩, fun k' prog hk => hcode k' prog (by
      change sptLookup k' (sptFromAList code) = some prog at hk
      rwa [sptLookup_sptFromAList] at hk), horacle, rfl, rfl, hst, fun _ _ h => h, rfl, hbuf,
      rfl⟩ rfl hcodeS
  have hcc : sptFromAList (compile c (sptToAList (sptFromAList code))) = s.code := by
    rw [hc]
    refine (sptEqThm _ _ ⟨sptWfFromAList _, sptWfFromAList _⟩).mpr fun n => ?_
    rw [CompCorrect.sptLookup_compile, CompCorrect.sptLookup_compile,
      sptAListLookup_sptToAList, sptLookup_sptFromAList]
  have heq : ({ ({ makeInit c (sptFromAList code) oracle s with clock := k } :
      StackSemStateFiniteExact width C F) with
        useStore := true, useStack := true, useAlloc := false
        clock := ({ makeInit c (sptFromAList code) oracle s with clock := k } :
          StackSemStateFiniteExact width C F).clock
        regs := s.regs, gcFun := s.gcFun
        compileOracle := Prod.map id (Prod.map (List.map progComp) id) ∘
          ({ makeInit c (sptFromAList code) oracle s with clock := k } :
            StackSemStateFiniteExact width C F).compileOracle
        compile := s.compile
        code := sptFromAList (compile c (sptToAList
          ({ makeInit c (sptFromAList code) oracle s with clock := k } :
            StackSemStateFiniteExact width C F).code)) } :
      StackSemStateFiniteExact width C F) = { s with clock := k } := by
    cases s
    simp only [makeInit] at hcc hor hS hK hA ⊢
    simp only [Bool.not_eq_true] at hA
    subst hS hK hA
    rw [hcc, hor]
  rw [heq] at he
  exact ⟨_, he, rfl, rfl⟩

end InitECandidate.Solver.Compiler.StackPasses.Alloc
