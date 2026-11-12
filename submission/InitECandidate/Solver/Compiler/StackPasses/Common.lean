import Flapjack.Compiler.Backend.StackProps.EvaluateNeutral
import Flapjack.Compiler.Backend.StackProps.EvaluateCodeBitmaps
import Flapjack.Compiler.Backend.StackProps.SharedMemoryClock
import Flapjack.Compiler.Backend.Semantics.StackSem.EvaluateClock

/-!
# Common infrastructure for the bounded stack sub-passes

Pinned flapjack rev 034bb5a1ed0b757082768d5406206bd2f8e31b7c.

`Alloc` (data-dependent GC loop, `stack_alloc`) and `StoreConsts` (data-dependent copy loop,
`stack_remove`; via its stub call, `stack_alloc`) are the only stack constructs whose extra
clock is not syntactically bounded. They are excluded by Boolean checkers (hypotheses of the
form `… = true`, kernel-checkable on a concrete program by `decide`/`rfl`):

* `noA p` — no `Alloc` and no `StoreConsts _ _ (some _)` (the `stack_alloc` hypothesis;
  `StoreConsts _ _ NONE`, as in `word_to_stack`'s constant-store stub, is a lock-step leaf of
  `stack_alloc`).
* `okP X p` — no `Alloc`, no `StoreConsts`, every call is direct (`INL`), and no
  `Call`/`JumpLower`/`RawCall` targets a label of `X` (the `stack_remove` hypothesis; with
  `X = [storeConstsStubLocation]` it lets the never-called `StoreConsts` stub of
  `word_to_stack` stay in the code).
* `CodeNoA s` / `CodeOk X s`: every procedure body (for `CodeOk`, at a label outside `X`) and
  every program the compile oracle can install satisfies `noA` / `okP X`; both are preserved
  by evaluation (`codeNoA_evaluate`, `codeOk_evaluate`).

Leaf clock facts: `clockFree_of_neutral` (Flapjack's `clockNeutralHOL` implies `ClockFree`),
`tickLike_tick`, `tickLike_shMemOp` (a ticking leaf either times out at clock `0` or consumes
exactly one tick).
-/

namespace InitECandidate.Solver.Compiler.StackPasses

open Flapjack Flapjack.Compiler.Backend.StackLang Flapjack.StackSemEvaluate
open Flapjack.StackSemStateOps Flapjack.StackSemControl
open Flapjack.Compiler.Backend.StackProps Flapjack.Compiler.Backend.StackProps.EvaluateAddClock

set_option autoImplicit false

/-- No `Alloc` and no `StoreConsts _ _ (some _)` anywhere in the program (Boolean checker). -/
def noA {width : Nat} [NeZero width] : HolProg width → Bool
  | .seq c1 c2 => noA c1 && noA c2
  | .ite _ _ _ c1 c2 => noA c1 && noA c2
  | .loop b => noA b
  | .call none _ none => true
  | .call (some (r, _, _, _)) _ none => noA r
  | .call none _ (some (h, _, _)) => noA h
  | .call (some (r, _, _, _)) _ (some (h, _, _)) => noA r && noA h
  | .alloc _ => false
  | .storeConsts _ _ (some _) => false
  | _ => true

/-- A direct call target outside `X`. -/
def destOk (X : List Nat) : Sum Nat Nat → Bool
  | .inl n => !X.contains n
  | .inr _ => false

/-- No `Alloc`, no `StoreConsts`, only direct calls, and no jump/call target in `X`
(Boolean checker). -/
def okP {width : Nat} [NeZero width] (X : List Nat) : HolProg width → Bool
  | .seq c1 c2 => okP X c1 && okP X c2
  | .ite _ _ _ c1 c2 => okP X c1 && okP X c2
  | .loop b => okP X b
  | .call none d none => destOk X d
  | .call (some (r, _, _, _)) d none => destOk X d && okP X r
  | .call none d (some (h, _, _)) => destOk X d && okP X h
  | .call (some (r, _, _, _)) d (some (h, _, _)) => destOk X d && okP X r && okP X h
  | .jumpLower _ _ n => !X.contains n
  | .rawCall n => !X.contains n
  | .alloc _ => false
  | .storeConsts _ _ _ => false
  | _ => true

section
variable {width : Nat} [NeZero width] {C F : Type}

@[simp] theorem noA_seq (c1 c2 : HolProg width) :
    noA (.seq c1 c2) = (noA c1 && noA c2) := rfl
@[simp] theorem noA_ite (cmp : Compiler.Encoders.Asm.HolCmp) (r : Nat)
    (ri : Compiler.Encoders.Asm.HolRegImm width) (c1 c2 : HolProg width) :
    noA (.ite cmp r ri c1 c2) = (noA c1 && noA c2) := rfl
@[simp] theorem noA_loop (b : HolProg width) : noA (.loop b) = noA b := rfl
@[simp] theorem noA_alloc (n : Nat) : noA (.alloc n : HolProg width) = false := rfl
@[simp] theorem noA_storeConsts_some (a b n : Nat) :
    noA (.storeConsts a b (some n) : HolProg width) = false := rfl

@[simp] theorem okP_seq (X : List Nat) (c1 c2 : HolProg width) :
    okP X (.seq c1 c2) = (okP X c1 && okP X c2) := rfl
@[simp] theorem okP_ite (X : List Nat) (cmp : Compiler.Encoders.Asm.HolCmp) (r : Nat)
    (ri : Compiler.Encoders.Asm.HolRegImm width) (c1 c2 : HolProg width) :
    okP X (.ite cmp r ri c1 c2) = (okP X c1 && okP X c2) := rfl
@[simp] theorem okP_loop (X : List Nat) (b : HolProg width) : okP X (.loop b) = okP X b := rfl
@[simp] theorem okP_alloc (X : List Nat) (n : Nat) : okP X (.alloc n : HolProg width) = false :=
  rfl
@[simp] theorem okP_storeConsts (X : List Nat) (a b : Nat) (o : Option Nat) :
    okP X (.storeConsts a b o : HolProg width) = false := rfl
@[simp] theorem okP_jumpLower (X : List Nat) (a b n : Nat) :
    okP X (.jumpLower a b n : HolProg width) = !X.contains n := rfl
@[simp] theorem okP_rawCall (X : List Nat) (n : Nat) :
    okP X (.rawCall n : HolProg width) = !X.contains n := rfl

/-- The continuation and handler parts of a call. -/
theorem noA_call {ret : Option (HolProg width × Nat × Nat × Nat)} {dest : Sum Nat Nat}
    {handler : Option (HolProg width × Nat × Nat)} (h : noA (.call ret dest handler) = true) :
    (∀ r a b c, ret = some (r, a, b, c) → noA r = true) ∧
      (∀ q a b, handler = some (q, a, b) → noA q = true) := by
  rcases ret with _ | ⟨r, a, b, c⟩ <;> rcases handler with _ | ⟨q, d, e⟩ <;>
    simp only [noA, Bool.and_eq_true] at h <;>
    refine ⟨?_, ?_⟩ <;> intro r' a' b' c' <;> (try intro e') <;> simp_all

/-- The target, continuation and handler parts of a call. -/
theorem okP_call {X : List Nat} {ret : Option (HolProg width × Nat × Nat × Nat)}
    {dest : Sum Nat Nat} {handler : Option (HolProg width × Nat × Nat)}
    (h : okP X (.call ret dest handler) = true) :
    destOk X dest = true ∧
    (∀ r a b c, ret = some (r, a, b, c) → okP X r = true) ∧
      (∀ q a b, handler = some (q, a, b) → okP X q = true) := by
  rcases ret with _ | ⟨r, a, b, c⟩ <;> rcases handler with _ | ⟨q, d, e⟩ <;>
    simp only [okP, Bool.and_eq_true] at h <;>
    refine ⟨by simp_all, ?_, ?_⟩ <;> intro r' a' b' c' <;> (try intro e') <;> simp_all

theorem destOk_inl {X : List Nat} {dest : Sum Nat Nat} (h : destOk X dest = true) :
    ∃ n, dest = .inl n ∧ n ∉ X := by
  rcases dest with n | n
  · refine ⟨n, rfl, ?_⟩
    simpa [destOk] using h
  · simp [destOk] at h

/-- `okP X` excludes everything `noA` excludes. -/
theorem noA_of_okP {X : List Nat} {p : HolProg width} (h : okP X p = true) : noA p = true := by
  induction p using noA.induct with
  | case1 c1 c2 ih1 ih2 =>
    simp only [okP_seq, Bool.and_eq_true] at h; simp [ih1 h.1, ih2 h.2]
  | case2 _ _ _ c1 c2 ih1 ih2 =>
    simp only [okP_ite, Bool.and_eq_true] at h; simp [ih1 h.1, ih2 h.2]
  | case3 b ih => simp only [okP_loop] at h; simp [ih h]
  | case4 => rfl
  | case5 r _ _ _ _ ih => simp only [okP, Bool.and_eq_true] at h; simp [noA, ih h.2]
  | case6 q _ _ _ ih => simp only [okP, Bool.and_eq_true] at h; simp [noA, ih h.2]
  | case7 r _ _ _ _ q _ _ ih1 ih2 =>
    simp only [okP, Bool.and_eq_true] at h; simp [noA, ih1 h.1.2, ih2 h.2]
  | case8 => simp at h
  | case9 => simp at h
  | case10 p h1 h2 h3 h4 h5 h6 h7 h8 h9 =>
    cases p with
    | seq a b => exact (h1 _ _ rfl).elim
    | ite a b c d e => exact (h2 _ _ _ _ _ rfl).elim
    | loop a => exact (h3 _ rfl).elim
    | call ret dest handler =>
      rcases ret with _ | ⟨b, lr, l1, l2⟩ <;> rcases handler with _ | ⟨hh, k1, k2⟩
      · exact (h4 _ rfl).elim
      · exact (h6 _ _ _ _ rfl).elim
      · exact (h5 _ _ _ _ _ rfl).elim
      · exact (h7 _ _ _ _ _ _ _ _ rfl).elim
    | alloc w => exact (h8 _ rfl).elim
    | storeConsts a b o =>
      rcases o with _ | n
      · rfl
      · exact (h9 _ _ _ rfl).elim
    | _ => rfl

/-- Every procedure body, and every program the compile oracle can install, satisfies
`noA`. -/
def CodeNoA (s : StackSemStateFiniteExact width C F) : Prop :=
  (∀ k p, sptLookup k s.code = some p → noA p = true) ∧
    ∀ i, ∀ np ∈ (s.compileOracle i).2.1, noA np.2 = true

/-- Every procedure body at a label outside `X`, and every program the compile oracle can
install, satisfies `okP X`. -/
def CodeOk (X : List Nat) (s : StackSemStateFiniteExact width C F) : Prop :=
  (∀ k p, k ∉ X → sptLookup k s.code = some p → okP X p = true) ∧
    ∀ i, ∀ np ∈ (s.compileOracle i).2.1, okP X np.2 = true

theorem sptAListLookup_mem' {α : Type} {k : Nat} {v : α} :
    ∀ {l : List (Nat × α)}, sptAListLookup k l = some v → (k, v) ∈ l
  | [], h => by simp [sptAListLookup] at h
  | (a, b) :: l, h => by
    simp only [sptAListLookup] at h
    by_cases e : k = a
    · rw [if_pos e] at h; cases h; subst e; exact List.mem_cons_self
    · rw [if_neg e] at h; exact List.mem_cons_of_mem _ (sptAListLookup_mem' h)

theorem lookup_foldl_union' {α : Type} (P : Nat → α → Prop) :
    ∀ (l : List (Spt α)) (base : Spt α), (∀ k v, sptLookup k base = some v → P k v) →
      (∀ m ∈ l, ∀ k v, sptLookup k m = some v → P k v) →
      ∀ k v, sptLookup k (l.foldl sptUnion base) = some v → P k v
  | [], base, hb, _ => hb
  | m :: l, base, hb, hl => by
    simp only [List.foldl_cons]
    refine lookup_foldl_union' P l _ ?_ (fun m' hm' => hl m' (List.mem_cons_of_mem _ hm'))
    intro k v hk
    rw [sptLookup_sptUnion] at hk
    split at hk
    · rename_i w hw; cases hk; exact hb k _ hw
    · exact hl m List.mem_cons_self k v hk

/-- A code/oracle invariant (`P` on code at each label, `Q` on oracle programs, `Q → P`) is
preserved by StackSem evaluation. -/
theorem codeInv_evaluate (P : Nat → HolProg width → Prop) (Q : HolProg width → Prop)
    (hQP : ∀ k p, Q p → P k p) {p : HolProg width}
    {s s' : StackSemStateFiniteExact width C F} {r : Option (StackSemResult width)}
    (ev : evaluate (p, s) = (r, s'))
    (h1 : ∀ k p, sptLookup k s.code = some p → P k p)
    (h2 : ∀ i, ∀ np ∈ (s.compileOracle i).2.1, Q np.2) :
    (∀ k p, sptLookup k s'.code = some p → P k p) ∧
      ∀ i, ∀ np ∈ (s'.compileOracle i).2.1, Q np.2 := by
  obtain ⟨count, horacle, hcode, -⟩ :=
    EvaluateCodeBitmaps.evaluateCodeBitmaps p s r s' ev
  refine ⟨?_, ?_⟩
  · rw [hcode]
    refine lookup_foldl_union' P _ _ h1 ?_
    intro m hm k v hk
    simp only [List.mem_map, List.mem_range] at hm
    obtain ⟨i, -, rfl⟩ := hm
    rw [sptLookup_sptFromAList] at hk
    exact hQP k v (h2 i (k, v) (sptAListLookup_mem' hk))
  · intro i np hnp
    rw [horacle] at hnp
    exact h2 (i + count) np hnp

/-- `CodeNoA` is preserved by StackSem evaluation. -/
theorem codeNoA_evaluate {p : HolProg width}
    {s s' : StackSemStateFiniteExact width C F} {r : Option (StackSemResult width)}
    (ev : evaluate (p, s) = (r, s')) (h : CodeNoA s) : CodeNoA s' :=
  codeInv_evaluate (fun _ q => noA q = true) (fun q => noA q = true) (fun _ _ h => h) ev h.1 h.2

/-- `CodeOk X` is preserved by StackSem evaluation. -/
theorem codeOk_evaluate {X : List Nat} {p : HolProg width}
    {s s' : StackSemStateFiniteExact width C F} {r : Option (StackSemResult width)}
    (ev : evaluate (p, s) = (r, s')) (h : CodeOk X s) : CodeOk X s' := by
  have := codeInv_evaluate (fun k q => k ∉ X → okP X q = true) (fun q => okP X q = true)
    (fun _ _ h _ => h) ev (fun k q hl hk => h.1 k q hk hl) h.2
  exact ⟨fun k q hk hl => this.1 k q hl hk, this.2⟩

/-- Flapjack's clock-neutral programs are clock free. -/
theorem clockFree_of_neutral {p : HolProg width} (hp : clockNeutralHOL p) :
    ClockFree (C := C) (F := F) p := by
  intro s k
  rcases e : evaluate (p, s) with ⟨r, post⟩
  have h1 := EvaluateNeutral.evaluateClockNeutral p s post r k ⟨e, hp⟩
  have h2 := EvaluateNeutral.evaluateClockNeutral p s post r s.clock ⟨e, hp⟩
  refine ⟨h1, ?_⟩
  have h3 : ({ s with clock := s.clock } : StackSemStateFiniteExact width C F) = s := rfl
  rw [h3, e] at h2
  have := congrArg (fun x => x.2.clock) h2
  simpa using this

/-- A clock-free program does not change the clock. -/
theorem clockFree_clock {p : HolProg width} (hp : ClockFree (C := C) (F := F) p)
    {s s' : StackSemStateFiniteExact width C F} {r : Option (StackSemResult width)}
    (h : evaluate (p, s) = (r, s')) : s'.clock = s.clock := by
  have := (hp s 0).2
  rw [h] at this
  exact this

/-- A clock-free program runs at any clock with the same result, ending at that clock. -/
theorem clockFree_run {p : HolProg width} (hp : ClockFree (C := C) (F := F) p)
    {s s' : StackSemStateFiniteExact width C F} {r : Option (StackSemResult width)}
    (h : evaluate (p, s) = (r, s')) (k : Nat) :
    evaluate (p, { s with clock := k }) = (r, { s' with clock := k }) := by
  rw [(hp s k).1, h]

/-- The ticking-leaf clock shape: a non-error result either is a timeout at clock `0`
(final clock `0`) or consumes exactly one tick (and is not a timeout). -/
def TickLike (p : HolProg width) : Prop :=
  ∀ (x y : StackSemStateFiniteExact width C F) (r : Option (StackSemResult width)),
    evaluate (p, x) = (r, y) → r ≠ some .error →
      (x.clock = 0 ∧ r = some .timeOut ∧ y.clock = 0) ∨
      (x.clock ≠ 0 ∧ r ≠ some .timeOut ∧ y.clock + 1 = x.clock)

theorem tickLike_tick : TickLike (C := C) (F := F) (.tick : HolProg width) := by
  intro x y r h _
  rw [evaluate_tick] at h
  by_cases h0 : x.clock = 0
  · rw [if_pos h0] at h
    obtain ⟨rfl, rfl⟩ := Prod.mk.inj h
    exact .inl ⟨h0, rfl, h0⟩
  · rw [if_neg h0] at h
    obtain ⟨rfl, rfl⟩ := Prod.mk.inj h
    refine .inr ⟨h0, by simp, ?_⟩
    simp only [decClock]
    omega

theorem shMemOp_not_timeOut (op : Compiler.Encoders.Asm.HolMemop) (reg : Nat)
    (a : BitVec width) (x y : StackSemStateFiniteExact width C F)
    (r : Option (StackSemResult width))
    (h : StackSemShMem.shMemOp op reg a x = (r, y)) : r ≠ some .timeOut := by
  cases op <;> simp only [StackSemShMem.shMemOp, StackSemShMem.shMemLoad,
    StackSemShMem.shMemStore, StackSemShMem.shMemLoadByte, StackSemShMem.shMemStoreByte,
    StackSemShMem.shMemLoad16, StackSemShMem.shMemStore16, StackSemShMem.shMemLoad32,
    StackSemShMem.shMemStore32, getVar] at h
  all_goals (repeat' split at h) <;>
    (simp only [Prod.mk.injEq] at h; obtain ⟨rfl, -⟩ := h; simp)

theorem tickLike_shMemOp (op : Compiler.Encoders.Asm.HolMemop) (reg : Nat)
    (addr : Compiler.Encoders.Asm.HolAddr width) :
    TickLike (C := C) (F := F) (.shMemOp op reg addr : HolProg width) := by
  intro x y r h hne
  rcases addr with ⟨a, w⟩
  rw [evaluate_shMemOp] at h
  split at h
  · rename_i a' _
    by_cases h0 : x.clock = 0
    · rw [if_pos h0] at h
      obtain ⟨rfl, rfl⟩ := Prod.mk.inj h
      exact .inl ⟨h0, rfl, h0⟩
    · rw [if_neg h0] at h
      have hc := (StackPropsSharedMemoryClock.shMemOpConst op reg a' (decClock x) y r h).1
      refine .inr ⟨h0, shMemOp_not_timeOut op reg a' _ _ _ h, ?_⟩
      rw [hc]
      simp only [decClock]
      omega
  · obtain ⟨rfl, rfl⟩ := Prod.mk.inj h
    exact absurd rfl hne

/-- Clock arithmetic for a ticking leaf run on two states with the same starting clock (plus
an extra `ck` on the target) and the same result: if the final clocks agree, `ck = 0`. -/
theorem tickLike_extra {p : HolProg width} (hp : TickLike (C := C) (F := F) p)
    {s s' t t' : StackSemStateFiniteExact width C F} {r : Option (StackSemResult width)}
    {ck : Nat} (hs : evaluate (p, s) = (r, s'))
    (ht : evaluate (p, { t with clock := t.clock + ck }) = (r, t'))
    (hne : r ≠ some .error) (hc : t.clock = s.clock) (hc' : t'.clock = s'.clock) : ck = 0 := by
  rcases hp _ _ _ hs hne with ⟨h0, rfl, h1⟩ | ⟨h0, hto, h1⟩
  · rcases hp _ _ _ ht hne with ⟨h2, -, -⟩ | ⟨-, hto, -⟩
    · simp only at h2; omega
    · exact absurd rfl hto
  · rcases hp _ _ _ ht hne with ⟨-, rfl, -⟩ | ⟨-, -, h3⟩
    · exact absurd rfl hto
    · simp only at h3; omega

/-- Clock arithmetic for a clock-free leaf: if the final clocks of the source run and of the
target run (from the source's clock plus `ck`) agree, `ck = 0`. -/
theorem clockFree_extra {p p' : HolProg width} (hp : ClockFree (C := C) (F := F) p)
    (hp' : ClockFree (C := C) (F := F) p')
    {s s' t t' : StackSemStateFiniteExact width C F} {r r' : Option (StackSemResult width)}
    {ck : Nat} (hs : evaluate (p, s) = (r, s'))
    (ht : evaluate (p', { t with clock := t.clock + ck }) = (r', t'))
    (hc : t.clock = s.clock) (hc' : t'.clock = s'.clock) : ck = 0 := by
  have h1 := clockFree_clock hp hs
  have h2 := clockFree_clock hp' ht
  simp only at h2
  omega

theorem state_clock_eta (s : StackSemStateFiniteExact width C F) :
    ({ s with clock := s.clock } : StackSemStateFiniteExact width C F) = s := rfl

theorem state_clock_add_zero (s : StackSemStateFiniteExact width C F) :
    ({ s with clock := s.clock + 0 } : StackSemStateFiniteExact width C F) = s := rfl

end

end InitECandidate.Solver.Compiler.StackPasses
