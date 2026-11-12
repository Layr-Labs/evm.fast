import InitECandidate.Solver.MemSafe.Summary
import InitECandidate.Solver.MemSafe.HoareX
import InitECandidate.Solver.Spec.Scratch
import InitECandidate.Solver.SourceCost.Table

/-!
# The built-in allocator specifications (M0)

Proofs of the frozen allocator specs of `MemSafe/Summary.lean` for the nine allocator
functions of `Guest/src/lib/mem.pnk`, over every good result (returns and exceptions), plus
the spec of `trap_with` and `NullSafe guestCtx`.

* `funSpec_trap_with` (`TrapR`): every good result of `trap_with` is a final FFI event or the
  exception `TrapErr code`, and the ordinary memory and the globals are unchanged. The three
  stores to `OUTPUT_ADDR` are *shared-memory* stores (`!st8` / `!stw`), i.e. FFI calls
  (`SharedMem MappedWrite`) that change only the `ffi` component of the state; the `@trap`
  call passes an empty array (length `0`), so it writes no ordinary memory either.
* `allocSpec_alloc`, `allocSpec_frame_mem_alloc`, `allocSpec_scratch_alloc`: `AllocSpec`.
* `markSpec'_heap_mark`, `markSpec'_frame_mem_mark`, `markSpec'_scratch_mark`: `MarkSpec'`
  (the returned value is the global's value). `MarkSpec` as frozen is false for an entry
  state whose global holds a struct (`return` checks only the size), so it is not proved;
  `mark_val_word` recovers the word form from `gword s g = some w` (e.g. from `ptrsOf`).
* `releaseSpec_heap_release`, `releaseSpec_frame_mem_release`,
  `releaseSpec_scratch_release`: `ReleaseSpec`.
* `nullSafe_guestCtx`: `NullSafe guestCtx`.

Bodies are certified against the per-function `Guest.Software.guestFn_*` declarations by
`cbv` (`AllocImpl.code_*`); `trap_with` and `scratch_alloc` reuse `Spec.code_trap_with` and
`Spec.code_scratch_alloc` (`Spec/CodeWalk.lean`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

namespace AllocImpl

/-! ## Generic helpers -/

theorem hfm_ext {α β : Type} {m n : HolFiniteMapExact α β} (h : m.lookup = n.lookup) :
    m = n := by
  cases m; cases n; cases h; rfl

/-- A shared-memory store keeps memory, globals and locals; it completes normally, ends in a
final FFI event, or errors. -/
theorem shMemStore_fields {σ : Type} (st : PanSemStateExact 64 σ) [DecidablePred st.shMemaddrs]
    (w a : BitVec 64) (nb : Nat) :
    (shMemStoreHOLExact st w a nb).2.memory = st.memory ∧
      (shMemStoreHOLExact st w a nb).2.globals = st.globals ∧
      (shMemStoreHOLExact st w a nb).2.locals = st.locals ∧
      ((shMemStoreHOLExact st w a nb).1 = none ∨
        (∃ e, (shMemStoreHOLExact st w a nb).1 = some (.finalFfi e)) ∨
        (shMemStoreHOLExact st w a nb).1 = some .error) := by
  unfold shMemStoreHOLExact
  split
  · split
    · split
      · exact ⟨rfl, rfl, rfl, Or.inr (Or.inl ⟨_, rfl⟩)⟩
      · exact ⟨rfl, rfl, rfl, Or.inl rfl⟩
    · exact ⟨rfl, rfl, rfl, Or.inr (Or.inr rfl)⟩
  · split
    · split
      · exact ⟨rfl, rfl, rfl, Or.inr (Or.inl ⟨_, rfl⟩)⟩
      · exact ⟨rfl, rfl, rfl, Or.inl rfl⟩
    · exact ⟨rfl, rfl, rfl, Or.inr (Or.inr rfl)⟩

variable {σ : Type} {X : Ctx 64}

/-- `t` agrees with `s0` on memory, globals and locals. -/
def Same (s0 t : State σ) : Prop :=
  t.memory = s0.memory ∧ t.globals = s0.globals ∧ t.locals = s0.locals

theorem hoareG_shMemStore_same {o : OpSize} {a v : ExpHOL 64} {s0 : State σ} :
    HoareG σ X (Same s0) (.shMemStore o a v)
      (fun r t => Same s0 t ∧ (r = none ∨ ∃ e, r = some (.finalFfi e))) := by
  intro s _ hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.shMemStore o a v)]
  dsimp only
  split
  · rename_i addr bytes _ _
    intro hg
    obtain ⟨hm, hgl, hl, hr⟩ := @shMemStore_fields σ s.toExact
      (fun key => Classical.propDecidable (s.shMemaddrs key)) bytes addr (nbOpHOL o)
    refine ⟨⟨?_, ?_, ?_⟩, ?_⟩
    · exact hm.trans hp.1
    · exact (hfm_ext hgl).trans hp.2.1
    · exact (hfm_ext hl).trans hp.2.2
    · rcases hr with h | h | h
      · exact Or.inl h
      · exact Or.inr h
      · exact absurd (h ▸ hg) (by simp [Good])
  · intro hg; exact absurd hg (by simp [Good])

theorem hoareG_extCall_same {f : MlS} {a b c : ExpHOL 64} {s0 : State σ} :
    HoareG σ X (Same s0) (.extCall f a b c (cw 0))
      (fun r t => (r = none ∧ Same s0 t) ∨
        ((∃ e, r = some (.finalFfi e)) ∧ t.memory = s0.memory ∧ t.globals = s0.globals)) := by
  intro s _ hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.extCall f a b c (cw 0))]
  dsimp only
  split
  · rename_i a1 l1 a2 l2 _ _ _ h4
    have h4' : (some (.val (.word (BitVec.ofNat 64 0))) : Option (ValueHOL 64)) =
        some (.val (.word l2)) := h4
    cases h4'
    split
    · rename_i bytes1 bytes2 _ hb2
      have hb2' : (some [] : Option (List (BitVec 8))) = some bytes2 := hb2
      cases hb2'
      split
      · intro _
        exact Or.inr ⟨⟨_, rfl⟩, hp.1, hp.2.1⟩
      · rename_i nf nb hret
        have hnb := callFFIHOL_ret_length _ _ _ _ _ _ hret
        have hnb' : nb = [] := List.eq_nil_of_length_eq_zero hnb
        subst hnb'
        intro _
        exact Or.inl ⟨rfl, hp.1, hp.2.1, hp.2.2⟩
    · intro hg; exact absurd hg (by simp [Good])
  · intro hg; exact absurd hg (by simp [Good])

/-! ## `trap_with` -/

/-- `funSpec_of_hoareG`: a `FunSpec` over good results from a `HoareG` triple per entry
state. -/
theorem funSpec_of_hoareG {f : MlS}
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (h : ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      ∀ s0 : State σ, InCtx s0 X → s0.locals = callee →
        HoareG σ X (fun t => t = s0) body (fun r t => ∀ r', r = some r' → R vs s0 r' t)) :
    FunSpec σ X f (fun vs s r t => Good (some r) → R vs s r t) := by
  intro vs body callee rs hl s hs hloc r hr hg
  have := h vs body callee rs hl s hs hloc s hs rfl (by rw [hr]; exact hg)
  rw [hr] at this
  exact this r rfl

end AllocImpl

open AllocImpl

/-- What a good result of `trap_with` did: a final FFI event (the shared-memory stores or the
`@trap` call ended the run) or the exception `TrapErr code`; the ordinary memory and the
globals are unchanged (the shared-memory stores change only `ffi`). -/
def TrapR {σ : Type} (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64)
    (t : State σ) : Prop :=
  ((∃ e, r = .finalFfi e) ∨ ∃ c, vs = [c] ∧ r = .exception (nm "TrapErr") c) ∧
    t.memory = s.memory ∧ t.globals = s.globals

theorem TrapR.abn {σ : Type} {vs : List (ValueHOL 64)} {s t : State σ}
    {r : PanSemResultExact 64} (h : TrapR vs s r t) : Abn r := by
  rcases h.1 with ⟨e, rfl⟩ | ⟨c, -, rfl⟩
  · exact Or.inr ⟨e, rfl⟩
  · exact Or.inl ⟨_, _, rfl⟩

theorem TrapR.not_returned {σ : Type} {vs : List (ValueHOL 64)} {s t : State σ}
    {v : ValueHOL 64} (h : TrapR vs s (.returned v) t) : False := by
  rcases h.1 with ⟨e, he⟩ | ⟨c, -, he⟩ <;> cases he

variable {σ : Type} {X : Ctx 64}

/-- **`trap_with`**: never returns; memory and globals unchanged. -/
theorem funSpec_trap_with (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "trap_with") (fun vs s r t => Good (some r) → TrapR vs s r t) := by
  apply funSpec_of_hoareG
  intro vs body callee rs hl s0 _ hloc
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, -, hla⟩ := lookupCode_one code_trap_with hl
  -- a final FFI event of a store: the state is still `Same s0`
  have hfin : ∀ (r : Option (PanSemResultExact 64)) (t : State σ), r ≠ none →
      (Same s0 t ∧ (r = none ∨ ∃ e, r = some (.finalFfi e))) →
        ∀ r', r = some r' → TrapR [A] s0 r' t := by
    rintro r t hr ⟨hs, h | ⟨e, rfl⟩⟩ r' hr'
    · exact absurd h hr
    · cases hr'
      exact ⟨Or.inl ⟨e, rfl⟩, hs.1, hs.2.1⟩
  refine hoareG_pre (P := Same s0) ?_ (fun t _ ht => by subst ht; exact ⟨rfl, rfl, rfl⟩)
  refine hoareG_seq hoareG_shMemStore_same (fun r t _ hr _ h => hfin r t hr h) ?_
  refine hoareG_pre (P := Same s0) ?_ (fun t _ ht => ht.1)
  refine hoareG_seq hoareG_shMemStore_same (fun r t _ hr _ h => hfin r t hr h) ?_
  refine hoareG_pre (P := Same s0) ?_ (fun t _ ht => ht.1)
  refine hoareG_seq hoareG_shMemStore_same (fun r t _ hr _ h => hfin r t hr h) ?_
  refine hoareG_pre (P := Same s0) ?_ (fun t _ ht => ht.1)
  refine hoareG_seq hoareG_extCall_same ?_ ?_
  · rintro r t _ hr _ (⟨h, -⟩ | ⟨⟨e, rfl⟩, hm, hg⟩) r' hr'
    · exact absurd h hr
    · cases hr'
      exact ⟨Or.inl ⟨e, rfl⟩, hm, hg⟩
  · refine hoareG_pre (P := Same s0) ?_ (fun t _ ht => by
      rcases ht with ⟨-, h⟩ | ⟨⟨e, he⟩, -⟩
      · exact h
      · cases he)
    refine hoareG_raise fun t _ ht v hv r' hr' => ?_
    cases hr'
    have hv' : t.locals.lookup (nm "code") = some v := hv
    rw [ht.2.2, hloc, hla] at hv'
    cases hv'
    exact ⟨Or.inr ⟨A, rfl, rfl⟩, ht.1, ht.2.1⟩

/-- A good result of a `trap_with` call is abnormal. -/
theorem funSpec_trap_with_abn (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "trap_with") (fun _ _ r _ => Good (some r) → Abn r) :=
  (funSpec_trap_with hC).mono fun _ _ _ _ h hg => (h hg).abn

namespace AllocImpl

/-! ## Code certificates -/

/-- `if c { trap_with(k); }` -/
def trapK (k : Nat) (c : ExpHOL 64) : ProgHOL 64 := .ite c (callD (nm "trap_with") [cw k]) .skip

/-- The common shape of `alloc`, `frame_mem_alloc` and `scratch_alloc`. -/
def allocSkel (G : MlS) (k : Nat) (c1 e c2 : ExpHOL 64) (ret : MlS) : ProgHOL 64 :=
  .dec (nm "p") .one (gv G)
    (.seq (trapK k c1)
      (.dec (nm "q") .one e
        (.seq (trapK k c2)
          (.seq (.assign .global G (lv (nm "q"))) (.return (lv ret))))))

/-- `(p + n + 7) & -8` -/
def roundUp : ExpHOL 64 :=
  .op .and [.op .add [lv (nm "p"), lv (nm "n"), cw 7], .op .sub [cw 0, cw 8]]

def heapAllocBody : ProgHOL 64 :=
  allocSkel (nm "heap_ptr") 1 (.cmp .lower (.op .sub [cw 2952790016, lv (nm "p")]) (lv (nm "n")))
    roundUp (.cmp .lower (cw 2952790016) (lv (nm "q"))) (nm "p")

def fmemAllocBody : ProgHOL 64 :=
  allocSkel (nm "frame_mem_ptr") 6
    (.cmp .lower (.op .sub [gv (nm "scratch_ptr"), lv (nm "p")]) (lv (nm "n")))
    roundUp (.cmp .lower (gv (nm "scratch_ptr")) (lv (nm "q"))) (nm "p")

theorem scratchAllocBody_eq : Spec.allocBody =
    allocSkel (nm "scratch_ptr") 7
      (.cmp .lower (.op .sub [lv (nm "p"), gv (nm "frame_mem_ptr")]) (lv (nm "n")))
      (.op .and [.op .sub [lv (nm "p"), lv (nm "n")], .op .sub [cw 0, cw 8]])
      (.cmp .lower (lv (nm "q")) (gv (nm "frame_mem_ptr"))) (nm "q") := rfl

def markBody (G : MlS) : ProgHOL 64 := .return (gv G)

def releaseBody (G : MlS) : ProgHOL 64 :=
  .seq (.assign .global G (lv (nm "m"))) (.return (cw 0))

theorem entry_alloc : fnEntry Guest.Software.guestFn_alloc =
    (nm "alloc", [(nm "n", .one)], heapAllocBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_alloc : guestCode (nm "alloc") = some ([(nm "n", .one)], heapAllocBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 7) (by decide)) ⟨_, rfl⟩
    entry_alloc

theorem entry_heap_mark : fnEntry Guest.Software.guestFn_heap_mark =
    (nm "heap_mark", [], markBody (nm "heap_ptr"), .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_heap_mark : guestCode (nm "heap_mark") = some ([], markBody (nm "heap_ptr"), .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 8) (by decide)) ⟨_, rfl⟩
    entry_heap_mark

theorem entry_heap_release : fnEntry Guest.Software.guestFn_heap_release =
    (nm "heap_release", [(nm "m", .one)], releaseBody (nm "heap_ptr"), .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_heap_release :
    guestCode (nm "heap_release") = some ([(nm "m", .one)], releaseBody (nm "heap_ptr"), .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 9) (by decide)) ⟨_, rfl⟩
    entry_heap_release

theorem entry_frame_mem_alloc : fnEntry Guest.Software.guestFn_frame_mem_alloc =
    (nm "frame_mem_alloc", [(nm "n", .one)], fmemAllocBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_frame_mem_alloc :
    guestCode (nm "frame_mem_alloc") = some ([(nm "n", .one)], fmemAllocBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 10) (by decide)) ⟨_, rfl⟩
    entry_frame_mem_alloc

theorem entry_frame_mem_mark : fnEntry Guest.Software.guestFn_frame_mem_mark =
    (nm "frame_mem_mark", [], markBody (nm "frame_mem_ptr"), .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_frame_mem_mark :
    guestCode (nm "frame_mem_mark") = some ([], markBody (nm "frame_mem_ptr"), .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 11) (by decide)) ⟨_, rfl⟩
    entry_frame_mem_mark

theorem entry_frame_mem_release : fnEntry Guest.Software.guestFn_frame_mem_release =
    (nm "frame_mem_release", [(nm "m", .one)], releaseBody (nm "frame_mem_ptr"), .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_frame_mem_release : guestCode (nm "frame_mem_release") =
    some ([(nm "m", .one)], releaseBody (nm "frame_mem_ptr"), .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 12) (by decide)) ⟨_, rfl⟩
    entry_frame_mem_release

theorem entry_scratch_mark : fnEntry Guest.Software.guestFn_scratch_mark =
    (nm "scratch_mark", [], markBody (nm "scratch_ptr"), .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_scratch_mark :
    guestCode (nm "scratch_mark") = some ([], markBody (nm "scratch_ptr"), .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 14) (by decide)) ⟨_, rfl⟩
    entry_scratch_mark

theorem entry_scratch_release : fnEntry Guest.Software.guestFn_scratch_release =
    (nm "scratch_release", [(nm "m", .one)], releaseBody (nm "scratch_ptr"), .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_scratch_release : guestCode (nm "scratch_release") =
    some ([(nm "m", .one)], releaseBody (nm "scratch_ptr"), .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 15) (by decide)) ⟨_, rfl⟩
    entry_scratch_release

theorem lookupCode_zero {code : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)}
    {f : MlS} {bd : ProgHOL 64} {rsh : ShapeHOL} (hc : code f = some ([], bd, rsh))
    {vs : List (ValueHOL 64)} {body : ProgHOL 64} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {rs : ShapeHOL}
    (h : PanSemStateFiniteExact.lookupCodeHOLFinite code f vs = some (body, callee, rs)) :
    body = bd ∧ vs = [] := by
  unfold PanSemStateFiniteExact.lookupCodeHOLFinite at h
  split at h
  · simp at h
  · rename_i body' cl rs' hx
    simp only [Option.some.injEq, Prod.mk.injEq] at h
    obtain ⟨rfl, rfl, rfl⟩ := h
    unfold lookupCodeHOLExact at hx
    rw [hc] at hx
    dsimp only at hx
    split at hx
    · rename_i hcond
      simp only [Option.some.injEq, Prod.mk.injEq] at hx
      obtain ⟨rfl, rfl, rfl⟩ := hx
      obtain ⟨-, hlen, -⟩ := hcond
      exact ⟨rfl, List.eq_nil_of_length_eq_zero hlen.symm⟩
    · simp at hx

/-! ## Allocator state lemmas -/

variable {σ : Type} {X : Ctx 64}

theorem gword_of_lookup {s : State σ} {g : MlS} {w : BitVec 64}
    (h : s.globals.lookup g = some (.val (.word w))) : gword s g = some w := by
  unfold gword; rw [h]

theorem lookup_of_gword {s : State σ} {g : MlS} {w : BitVec 64} (h : gword s g = some w) :
    s.globals.lookup g = some (.val (.word w)) := by
  unfold gword at h
  split at h
  · rename_i w' hw; cases h; exact hw
  · cases h

theorem ptrsOf_some {s : State σ} {p : Ptrs} (h : ptrsOf s = some p) :
    ∃ a b c, gword s gHeap = some a ∧ gword s gFrame = some b ∧ gword s gScratch = some c ∧
      p = ⟨a.toNat, b.toNat, c.toNat⟩ := by
  unfold ptrsOf at h
  split at h
  · rename_i a b c ha hb hc
    cases h
    exact ⟨a, b, c, ha, hb, hc, rfl⟩
  · cases h

theorem ptrsOf_congr {s t : State σ} (h : t.globals = s.globals) : ptrsOf t = ptrsOf s := by
  unfold ptrsOf gword; rw [h]

/-- Set one allocator pointer. -/
def setP (p : Ptrs) : Region → Nat → Ptrs
  | .heap, v => { p with hp := v }
  | .fmem, v => { p with fp := v }
  | .scratch, v => { p with sp := v }

theorem ptrsOf_set {s t : State σ} {p : Ptrs} (hp : ptrsOf s = some p) (rg : Region)
    {w : BitVec 64} (hw : t.globals.lookup rg.global = some (.val (.word w)))
    (ho : ∀ g, g ≠ rg.global → t.globals.lookup g = s.globals.lookup g) :
    ptrsOf t = some (setP p rg w.toNat) := by
  obtain ⟨a, b, c, ha, hb, hc, rfl⟩ := ptrsOf_some hp
  have e : ∀ g, g ≠ rg.global → gword t g = gword s g := fun g hg => by
    unfold gword; rw [ho g hg]
  have ew : gword t rg.global = some w := gword_of_lookup hw
  unfold ptrsOf
  cases rg with
  | heap =>
      rw [show gHeap = Region.global .heap from rfl, ew, e gFrame (by decide),
        e gScratch (by decide), hb, hc]
      rfl
  | fmem =>
      rw [show gFrame = Region.global .fmem from rfl, ew, e gHeap (by decide),
        e gScratch (by decide), ha, hc]
      rfl
  | scratch =>
      rw [show gScratch = Region.global .scratch from rfl, ew, e gHeap (by decide),
        e gFrame (by decide), ha, hb]
      rfl

/-! ## The guard `if c { trap_with(k); }` and the allocator skeleton -/

/-- A guard followed by `b`: a trap ends abnormally with memory and globals unchanged;
otherwise `b` runs with the condition false. -/
theorem hoareG_trap_seq (hC : X.code.lookup = guestCode) {c : ExpHOL 64} {k : Nat}
    {b : ProgHOL 64} {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (habn : ∀ t, P t → ∀ r (st : State σ), Abn r → st.memory = t.memory →
      st.globals = t.globals → Q (some r) (emptyLocalsHOLFinite st))
    (hk : HoareG σ X (fun t => P t ∧ ev t c = some (.val (.word 0))) b Q) :
    HoareG σ X P (.seq (trapK k c) b) Q := by
  have hT := funSpec_trap_with (σ := σ) hC
  refine hoareG_seq (R := fun r t => (r = none ∧ P t ∧ ev t c = some (.val (.word 0))) ∨
    (r ≠ none ∧ Q r t)) ?_ ?_ ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_callD hT ?_ ?_
      · intro s _ _ vs _ callee v st hR _
        exact (hR (by simp)).not_returned.elim
      · intro s _ hp vs _ callee r st hR _ hab
        have hg : Good (some r) := by
          rcases hab with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> simp
        obtain ⟨-, hm, hgl⟩ := hR hg
        exact Or.inr ⟨by simp, habn s hp.1 r st hab hm hgl⟩
    · exact hoareG_skip fun s _ h => Or.inl ⟨rfl, h.1, h.2⟩
  · intro r t _ hr _ h
    rcases h with ⟨h, -⟩ | ⟨-, h⟩
    · exact absurd h hr
    · exact h
  · refine hoareG_pre hk ?_
    intro s _ h
    rcases h with ⟨-, h⟩ | ⟨h, -⟩
    · exact h
    · exact absurd rfl h

/-- **The allocator skeleton.** From the entry state `s0` (allocator global `G = P0`), a good
result is either abnormal (a trap, memory and globals unchanged) or a return of the local
`ret`, after both guards passed, with `G` set to the rounded value `Qw` of `e`. -/
theorem hoareG_allocSkel (hC : X.code.lookup = guestCode) {G : MlS} {k : Nat}
    {c1 e c2 : ExpHOL 64} {ret : MlS} {s0 : State σ} {P0 : BitVec 64}
    (hP : s0.globals.lookup G = some (.val (.word P0)))
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (habn : ∀ r (t : State σ), Abn r → t.memory = s0.memory → t.globals = s0.globals →
      Q (some r) t)
    (hret : ∀ (Qw : BitVec 64) (v : ValueHOL 64) (t : State σ),
      ev (setVarHOLFinite (nm "p") (.val (.word P0)) s0) c1 = some (.val (.word 0)) →
      ev (setVarHOLFinite (nm "p") (.val (.word P0)) s0) e = some (.val (.word Qw)) →
      ev (setVarHOLFinite (nm "q") (.val (.word Qw))
        (setVarHOLFinite (nm "p") (.val (.word P0)) s0)) c2 = some (.val (.word 0)) →
      (setVarHOLFinite (nm "q") (.val (.word Qw))
        (setVarHOLFinite (nm "p") (.val (.word P0)) s0)).locals.lookup ret = some v →
      t.memory = s0.memory → t.globals.lookup G = some (.val (.word Qw)) →
      (∀ g, g ≠ G → t.globals.lookup g = s0.globals.lookup g) →
      Q (some (.returned v)) t) :
    HoareG σ X (fun t => t = s0) (allocSkel G k c1 e c2 ret) Q := by
  refine hoareG_dec fun s _ hs v hv _ => ?_
  subst hs
  have hv' : s.globals.lookup G = some v := hv
  rw [hP] at hv'
  cases hv'
  refine hoareG_trap_seq hC
    (P := fun t => t = setVarHOLFinite (nm "p") (.val (.word P0)) s) ?_ ?_
  · intro t ht r st hab hm hg
    subst ht
    exact habn r _ hab hm hg
  · refine hoareG_dec fun u _ ⟨hu, hc1⟩ w hw hsh => ?_
    subst hu
    obtain ⟨Qw, rfl⟩ := val_of_shapeEq_one hsh
    refine hoareG_trap_seq hC (P := fun t => t = setVarHOLFinite (nm "q") (.val (.word Qw))
      (setVarHOLFinite (nm "p") (.val (.word P0)) s)) ?_ ?_
    · intro t ht r st hab hm hg
      subst ht
      exact habn r _ hab hm hg
    · refine hoareG_seq (R := fun r t => r = none ∧
          t = setKvarHOLFinite .global G (.val (.word Qw)) (setVarHOLFinite (nm "q")
            (.val (.word Qw)) (setVarHOLFinite (nm "p") (.val (.word P0)) s)) ∧
          ev (setVarHOLFinite (nm "q") (.val (.word Qw))
            (setVarHOLFinite (nm "p") (.val (.word P0)) s)) c2 = some (.val (.word 0))) ?_
          (fun _ _ _ hr _ h => absurd h.1 hr) ?_
      · refine hoareG_assignK fun t _ ⟨ht, hc2⟩ x hx _ => ?_
        subst ht
        rw [ev_lw (lk_set_self _ _ _)] at hx
        cases hx
        exact ⟨rfl, rfl, hc2⟩
      · refine hoareG_return fun t _ ⟨_, ht, hc2⟩ x hx => ?_
        subst ht
        exact hret Qw x _ hc1 hw hc2 hx rfl
          (lookup_update_self _ _ _) (fun g hg => lookup_update_ne _ _ (Ne.symm hg))

end AllocImpl

namespace AllocImpl

/-! ## Assembly of `AllocSpec` -/

variable {σ : Type} {X : Ctx 64}

theorem land_mask8 (x : Nat) (hx : x < 2 ^ 64) : x &&& (2 ^ 64 - 8) = x / 8 * 8 := by
  apply Nat.eq_of_testBit_eq
  intro i
  rw [Nat.testBit_and]
  have h8 : x / 8 * 8 = x / 2 ^ 3 * 2 ^ 3 := rfl
  rw [h8, ← Nat.shiftLeft_eq, ← Nat.shiftRight_eq_div_pow, Nat.testBit_shiftLeft,
    Nat.testBit_shiftRight]
  have hm : (2 ^ 64 - 8 : Nat) = (2 ^ 61 - 1) * 2 ^ 3 := by decide
  rw [hm, ← Nat.shiftLeft_eq, Nat.testBit_shiftLeft, Nat.testBit_two_pow_sub_one]
  by_cases h3 : 3 ≤ i
  · simp only [h3, decide_true, Bool.true_and]
    have : 3 + (i - 3) = i := by omega
    rw [this]
    by_cases h64 : i < 64
    · simp only [show i - 3 < 61 by omega, decide_true, Bool.and_true]
    · simp only [show ¬ (i - 3 < 61) by omega, decide_false, Bool.and_false]
      have hxi : x < 2 ^ i :=
        Nat.lt_of_lt_of_le hx (Nat.pow_le_pow_right (by decide) (by omega))
      rw [Nat.testBit_lt_two_pow hxi]
  · simp [h3]

/-- The mask `& -8` rounds down to a multiple of 8. -/
theorem mask8_toNat (x : BitVec 64) :
    (x &&& ((BitVec.ofNat 64 0 - BitVec.ofNat 64 8) &&& ~~~0)).toNat = x.toNat / 8 * 8 := by
  have : ((BitVec.ofNat 64 0 - BitVec.ofNat 64 8) &&& ~~~0 : BitVec 64) =
      BitVec.ofNat 64 (2 ^ 64 - 8) := by
    decide
  rw [this, BitVec.toNat_and, BitVec.toNat_ofNat]
  exact land_mask8 _ x.isLt

/-- The post of `AllocSpec` for one good result `r` ending in `t`. -/
def ABody (rg : Region) (n : BitVec 64) (p : Ptrs) (s : State σ) (r : PanSemResultExact 64)
    (t : State σ) : Prop :=
  t.memory = s.memory ∧ (∀ g, g ≠ rg.global → t.globals.lookup g = s.globals.lookup g) ∧
    ∃ p', ptrsOf t = some p' ∧ p'.Ordered ∧ p.Mono p' ∧
      ∀ v, r = .returned v → ∃ q, v = .val (.word q) ∧ q.toNat % 8 = 0 ∧
        rg.Live p' q.toNat n.toNat ∧ ∀ a, q.toNat ≤ a → a < q.toNat + n.toNat →
          ¬ p.Allocated a

theorem allocSpec_of {fn : MlS} {rg : Region} {bd : ProgHOL 64}
    (hcode : X.code.lookup fn = some ([(nm "n", .one)], bd, .one))
    (h : ∀ (s0 : State σ) (N : BitVec 64) (p : Ptrs), InCtx s0 X →
      s0.locals.lookup (nm "n") = some (.val (.word N)) → ptrsOf s0 = some p → p.Ordered →
      HoareG σ X (fun t => t = s0) bd (fun r t => ∀ r', r = some r' → ABody rg N p s0 r' t)) :
    AllocSpec σ X fn rg := by
  intro vs body callee rs hl s0 hs hloc r hr hg n p hvs hps hord
  obtain ⟨rfl, -, A, rfl, -, hla⟩ := lookupCode_one hcode hl
  simp only [List.cons.injEq, and_true] at hvs
  subst hvs
  have hn : s0.locals.lookup (nm "n") = some (.val (.word n)) := by rw [hloc]; exact hla
  have := h s0 n p hs hn hps hord s0 hs rfl (by rw [hr]; exact hg)
  rw [hr] at this
  exact this r rfl

/-- The trap paths of an allocator: the allocator state is the entry one. -/
theorem abody_abn {rg : Region} {N : BitVec 64} {p : Ptrs} {s0 : State σ}
    (hps : ptrsOf s0 = some p) (hord : p.Ordered) :
    ∀ r (t : State σ), Abn r → t.memory = s0.memory → t.globals = s0.globals →
      ∀ r', some r = some r' → ABody rg N p s0 r' t := by
  intro r t hab hm hg r' hr'
  cases hr'
  refine ⟨hm, fun g _ => by rw [hg], p, by rw [ptrsOf_congr hg]; exact hps, hord,
    ⟨Nat.le_refl _, Nat.le_refl _, Nat.le_refl _⟩, ?_⟩
  intro v hv
  subst hv
  rcases hab with ⟨e, w, he⟩ | ⟨e, he⟩ <;> cases he

theorem ev_roundUp {s : State σ} {P N : BitVec 64}
    (hp : s.locals.lookup (nm "p") = some (.val (.word P)))
    (hn : s.locals.lookup (nm "n") = some (.val (.word N))) :
    ev s roundUp = some (.val (.word ((P + (N + BitVec.ofNat 64 7)) &&&
      ((BitVec.ofNat 64 0 - BitVec.ofNat 64 8) &&& ~~~0)))) := by
  rw [roundUp, ev_op2 (ev_add3 (ev_lw hp) (ev_lw hn) (ev_cw _ 7))
    (ev_sub2 (ev_cw _ 0) (ev_cw _ 8))]
  rfl

theorem word_inj {x y : BitVec 64}
    (h : (some (.val (.word x)) : Option (ValueHOL 64)) = some (.val (.word y))) : x = y := by
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at h
  exact h

end AllocImpl

open AllocImpl

variable {σ : Type} {X : Ctx 64}

/-! ## The allocators -/

/-- **`alloc`** (heap). -/
theorem allocSpec_alloc (hC : X.code.lookup = guestCode) : AllocSpec σ X (nm "alloc") .heap := by
  refine allocSpec_of (bd := heapAllocBody) (by rw [hC]; exact code_alloc) ?_
  intro s0 N p _ hn hps hord
  obtain ⟨a, b, c, ha, hb, hc, rfl⟩ := ptrsOf_some hps
  refine hoareG_allocSkel hC (lookup_of_gword ha) (abody_abn hps hord) ?_
  intro Qw v t hc1 hw hc2 hv hm hG hO
  have hp1 : (setVarHOLFinite (nm "p") (.val (.word a)) s0).locals.lookup (nm "p") =
      some (.val (.word a)) := lk_set_self _ _ _
  have hn1 : (setVarHOLFinite (nm "p") (.val (.word a)) s0).locals.lookup (nm "n") =
      some (.val (.word N)) := by rw [lk_set_ne _ _ (by decide)]; exact hn
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc1
  rw [ev_sub2 (ev_cw _ _) (ev_lw hp1)] at hx
  rw [ev_lw hn1] at hy
  obtain rfl := word_inj hx
  obtain rfl := word_inj hy
  have h1 := lower_false hxy
  rw [ev_roundUp hp1 hn1] at hw
  have hQ := mask8_toNat (a + (N + BitVec.ofNat 64 7))
  rw [word_inj hw] at hQ
  obtain ⟨x2, y2, hx2, hy2, hxy2⟩ := cmp_false hc2
  rw [ev_cw] at hx2
  rw [ev_lw (lk_set_self _ _ _)] at hy2
  obtain rfl := word_inj hx2
  obtain rfl := word_inj hy2
  have h2 := lower_false hxy2
  rw [lk_set_ne _ _ (by decide), hp1] at hv
  cases hv
  simp only [Ptrs.Ordered, heapBase, heapEnd, scratchEnd] at hord
  have ha' := a.isLt
  have hE : (BitVec.ofNat 64 2952790016 - a).toNat = 2952790016 - a.toNat := by
    rw [BitVec.toNat_sub, BitVec.toNat_ofNat]; omega
  have hA : (a + (N + BitVec.ofNat 64 7)).toNat = a.toNat + N.toNat + 7 := by
    simp only [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
  rw [hE] at h1
  rw [hA] at hQ
  rw [BitVec.toNat_ofNat] at h2
  intro r' hr'
  cases hr'
  refine ⟨hm, hO, _, ptrsOf_set hps .heap hG hO, ?_, ?_, ?_⟩
  · simp only [setP, Ptrs.Ordered, heapBase, heapEnd, scratchEnd]; omega
  · simp only [setP, Ptrs.Mono]; omega
  · intro v hv
    cases hv
    refine ⟨a, rfl, by omega, ?_, ?_⟩
    · simp only [Region.Live, setP, heapBase]; omega
    · intro x hx1 hx2
      simp only [Ptrs.Allocated, heapBase, heapEnd, scratchEnd]; omega

/-- **`frame_mem_alloc`** (frame memory, upward from `frame_mem_ptr` below `scratch_ptr`). -/
theorem allocSpec_frame_mem_alloc (hC : X.code.lookup = guestCode) :
    AllocSpec σ X (nm "frame_mem_alloc") .fmem := by
  refine allocSpec_of (bd := fmemAllocBody) (by rw [hC]; exact code_frame_mem_alloc) ?_
  intro s0 N p _ hn hps hord
  obtain ⟨a, b, c, ha, hb, hc, rfl⟩ := ptrsOf_some hps
  refine hoareG_allocSkel hC (lookup_of_gword hb) (abody_abn hps hord) ?_
  intro Qw v t hc1 hw hc2 hv hm hG hO
  have hp1 : (setVarHOLFinite (nm "p") (.val (.word b)) s0).locals.lookup (nm "p") =
      some (.val (.word b)) := lk_set_self _ _ _
  have hn1 : (setVarHOLFinite (nm "p") (.val (.word b)) s0).locals.lookup (nm "n") =
      some (.val (.word N)) := by rw [lk_set_ne _ _ (by decide)]; exact hn
  have hS : s0.globals.lookup (nm "scratch_ptr") = some (.val (.word c)) := lookup_of_gword hc
  have hS1 : ev (setVarHOLFinite (nm "p") (.val (.word b)) s0) (gv (nm "scratch_ptr")) =
      some (.val (.word c)) := hS
  have hS2 : ev (setVarHOLFinite (nm "q") (.val (.word Qw))
      (setVarHOLFinite (nm "p") (.val (.word b)) s0)) (gv (nm "scratch_ptr")) =
      some (.val (.word c)) := hS
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc1
  rw [ev_sub2 hS1 (ev_lw hp1)] at hx
  rw [ev_lw hn1] at hy
  obtain rfl := word_inj hx
  obtain rfl := word_inj hy
  have h1 := lower_false hxy
  rw [ev_roundUp hp1 hn1] at hw
  have hQ := mask8_toNat (b + (N + BitVec.ofNat 64 7))
  rw [word_inj hw] at hQ
  obtain ⟨x2, y2, hx2, hy2, hxy2⟩ := cmp_false hc2
  rw [hS2] at hx2
  rw [ev_lw (lk_set_self _ _ _)] at hy2
  obtain rfl := word_inj hx2
  obtain rfl := word_inj hy2
  have h2 := lower_false hxy2
  rw [lk_set_ne _ _ (by decide), hp1] at hv
  cases hv
  simp only [Ptrs.Ordered, heapBase, heapEnd, scratchEnd] at hord
  have hb' := b.isLt
  have hc' := c.isLt
  have hE : (c - b).toNat = c.toNat - b.toNat := by
    rw [BitVec.toNat_sub]; omega
  have hA : (b + (N + BitVec.ofNat 64 7)).toNat = b.toNat + N.toNat + 7 := by
    simp only [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
  rw [hE] at h1
  rw [hA] at hQ
  intro r' hr'
  cases hr'
  refine ⟨hm, hO, _, ptrsOf_set hps .fmem hG hO, ?_, ?_, ?_⟩
  · simp only [setP, Ptrs.Ordered, heapBase, heapEnd, scratchEnd]; omega
  · simp only [setP, Ptrs.Mono]; omega
  · intro v hv
    cases hv
    refine ⟨b, rfl, by omega, ?_, ?_⟩
    · simp only [Region.Live, setP, heapEnd]; omega
    · intro x hx1 hx2
      simp only [Ptrs.Allocated, heapBase, heapEnd, scratchEnd]; omega

/-- **`scratch_alloc`** (scratch, downward from `scratch_ptr` above `frame_mem_ptr`). -/
theorem allocSpec_scratch_alloc (hC : X.code.lookup = guestCode) :
    AllocSpec σ X (nm "scratch_alloc") .scratch := by
  refine allocSpec_of (bd := Spec.allocBody) (by rw [hC]; exact code_scratch_alloc) ?_
  intro s0 N p _ hn hps hord
  obtain ⟨a, b, c, ha, hb, hc, rfl⟩ := ptrsOf_some hps
  rw [scratchAllocBody_eq]
  refine hoareG_allocSkel hC (lookup_of_gword hc) (abody_abn hps hord) ?_
  intro Qw v t hc1 hw hc2 hv hm hG hO
  have hp1 : (setVarHOLFinite (nm "p") (.val (.word c)) s0).locals.lookup (nm "p") =
      some (.val (.word c)) := lk_set_self _ _ _
  have hn1 : (setVarHOLFinite (nm "p") (.val (.word c)) s0).locals.lookup (nm "n") =
      some (.val (.word N)) := by rw [lk_set_ne _ _ (by decide)]; exact hn
  have hF : s0.globals.lookup (nm "frame_mem_ptr") = some (.val (.word b)) := lookup_of_gword hb
  have hF1 : ev (setVarHOLFinite (nm "p") (.val (.word c)) s0) (gv (nm "frame_mem_ptr")) =
      some (.val (.word b)) := hF
  have hF2 : ev (setVarHOLFinite (nm "q") (.val (.word Qw))
      (setVarHOLFinite (nm "p") (.val (.word c)) s0)) (gv (nm "frame_mem_ptr")) =
      some (.val (.word b)) := hF
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc1
  rw [ev_sub2 (ev_lw hp1) hF1] at hx
  rw [ev_lw hn1] at hy
  obtain rfl := word_inj hx
  obtain rfl := word_inj hy
  have h1 := lower_false hxy
  have hval : ev (setVarHOLFinite (nm "p") (.val (.word c)) s0)
      (.op .and [.op .sub [lv (nm "p"), lv (nm "n")], .op .sub [cw 0, cw 8]]) =
      some (.val (.word ((c - N) &&& ((BitVec.ofNat 64 0 - BitVec.ofNat 64 8) &&& ~~~0)))) := by
    rw [ev_op2 (ev_sub2 (ev_lw hp1) (ev_lw hn1)) (ev_sub2 (ev_cw _ 0) (ev_cw _ 8))]
    rfl
  rw [hval] at hw
  have hQ := mask8_toNat (c - N)
  rw [word_inj hw] at hQ
  obtain ⟨x2, y2, hx2, hy2, hxy2⟩ := cmp_false hc2
  rw [ev_lw (lk_set_self _ _ _)] at hx2
  rw [hF2] at hy2
  obtain rfl := word_inj hx2
  obtain rfl := word_inj hy2
  have h2 := lower_false hxy2
  rw [lk_set_self] at hv
  cases hv
  simp only [Ptrs.Ordered, heapBase, heapEnd, scratchEnd] at hord
  have hb' := b.isLt
  have hc' := c.isLt
  have hE : (c - b).toNat = c.toNat - b.toNat := by
    rw [BitVec.toNat_sub]; omega
  rw [hE] at h1
  have hA : (c - N).toNat = c.toNat - N.toNat := by
    rw [BitVec.toNat_sub]; omega
  rw [hA] at hQ
  intro r' hr'
  cases hr'
  refine ⟨hm, hO, _, ptrsOf_set hps .scratch hG hO, ?_, ?_, ?_⟩
  · simp only [setP, Ptrs.Ordered, heapBase, heapEnd, scratchEnd]; omega
  · simp only [setP, Ptrs.Mono]; omega
  · intro v hv
    cases hv
    refine ⟨Qw, rfl, by omega, ?_, ?_⟩
    · simp only [Region.Live, setP, scratchEnd]; omega
    · intro x hx1 hx2
      simp only [Ptrs.Allocated, heapBase, heapEnd, scratchEnd]; omega

/-! ## Marks and releases -/

/-- `MarkSpec` with the returned value read as the global's value (`MarkSpec` itself asks for
a word, which a `return` of a struct-valued global does not give). -/
def MarkSpec' (σ : Type) (X : Ctx 64) (fn g : MlS) : Prop :=
  FunSpec σ X fn (fun vs s r t => Good (some r) → vs = [] →
    t.memory = s.memory ∧ t.globals = s.globals ∧
      ∀ v, r = .returned v → s.globals.lookup g = some v)

/-- With the global a word (e.g. from `ptrsOf`), the mark returns that word. -/
theorem mark_val_word {s : State σ} {g : MlS} {v : ValueHOL 64} {w : BitVec 64}
    (hl : s.globals.lookup g = some v) (hw : gword s g = some w) : v = .val (.word w) := by
  rw [lookup_of_gword hw] at hl
  cases hl
  rfl

theorem markSpec'_of {fn G : MlS} (hcode : X.code.lookup fn = some ([], markBody G, .one)) :
    MarkSpec' σ X fn G := by
  intro vs body callee rs hl s0 hs _ r hr hg _
  obtain ⟨rfl, -⟩ := lookupCode_zero hcode hl
  have H : HoareG σ X (fun t => t = s0) (markBody G) (fun r t => ∀ r', r = some r' →
      t.memory = s0.memory ∧ t.globals = s0.globals ∧
        ∀ v, r' = .returned v → s0.globals.lookup G = some v) := by
    refine hoareG_return fun s _ hs v hv r' hr' => ?_
    subst hs
    cases hr'
    refine ⟨rfl, rfl, fun v' hv' => ?_⟩
    cases hv'
    exact hv
  have := H s0 hs rfl (by rw [hr]; exact hg)
  rw [hr] at this
  exact this r rfl

theorem releaseSpec_of {fn G : MlS}
    (hcode : X.code.lookup fn = some ([(nm "m", .one)], releaseBody G, .one)) :
    ReleaseSpec σ X fn G := by
  intro vs body callee rs hl s0 hs hloc r hr hg w hvs
  obtain ⟨rfl, -, A, rfl, -, hla⟩ := lookupCode_one hcode hl
  simp only [List.cons.injEq, and_true] at hvs
  subst hvs
  have hm0 : s0.locals.lookup (nm "m") = some (.val (.word w)) := by rw [hloc]; exact hla
  have H : HoareG σ X (fun t => t = s0) (releaseBody G) (fun r t => ∀ r', r = some r' →
      t.memory = s0.memory ∧ t.globals.lookup G = some (.val (.word w)) ∧
        ∀ g', g' ≠ G → t.globals.lookup g' = s0.globals.lookup g') := by
    refine hoareG_seq (R := fun r t => r = none ∧
      t = setKvarHOLFinite .global G (.val (.word w)) s0) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoareG_assignK fun t _ ht x hx _ => ?_
      subst ht
      rw [ev_lw hm0] at hx
      cases hx
      exact ⟨rfl, rfl⟩
    · refine hoareG_return fun t _ ⟨_, ht⟩ v _ r' hr' => ?_
      subst ht
      cases hr'
      exact ⟨rfl, lookup_update_self _ _ _, fun g hg => lookup_update_ne _ _ (Ne.symm hg)⟩
  have := H s0 hs rfl (by rw [hr]; exact hg)
  rw [hr] at this
  exact this r rfl

theorem markSpec'_heap_mark (hC : X.code.lookup = guestCode) :
    MarkSpec' σ X (nm "heap_mark") gHeap :=
  markSpec'_of (by rw [hC]; exact code_heap_mark)

theorem markSpec'_frame_mem_mark (hC : X.code.lookup = guestCode) :
    MarkSpec' σ X (nm "frame_mem_mark") gFrame :=
  markSpec'_of (by rw [hC]; exact code_frame_mem_mark)

theorem markSpec'_scratch_mark (hC : X.code.lookup = guestCode) :
    MarkSpec' σ X (nm "scratch_mark") gScratch :=
  markSpec'_of (by rw [hC]; exact code_scratch_mark)

theorem releaseSpec_heap_release (hC : X.code.lookup = guestCode) :
    ReleaseSpec σ X (nm "heap_release") gHeap :=
  releaseSpec_of (by rw [hC]; exact code_heap_release)

theorem releaseSpec_frame_mem_release (hC : X.code.lookup = guestCode) :
    ReleaseSpec σ X (nm "frame_mem_release") gFrame :=
  releaseSpec_of (by rw [hC]; exact code_frame_mem_release)

theorem releaseSpec_scratch_release (hC : X.code.lookup = guestCode) :
    ReleaseSpec σ X (nm "scratch_release") gScratch :=
  releaseSpec_of (by rw [hC]; exact code_scratch_release)

/-! ## `NullSafe guestCtx` -/

/-- The ordinary memory domain of the challenge run starts at `@base = heapBase`. -/
theorem nullSafe_guestCtx : NullSafe guestCtx := by
  intro a ha
  obtain ⟨i, hi, rfl⟩ := (Compiler.Backend.StackRemove.mem_addresses _ _ _).mp ha
  simp only [Compiler.Backend.StackRemove.bytesInWord, BitVec.toNat_add, BitVec.toNat_mul,
    BitVec.toNat_ofNat]
  simp only [InitE.stackStart, InitE.sourceBase, InitE.ramEnd, InitE.ramStart, InitE.ramSize,
    InitE.stackSize, InitE.globalsWords] at hi ⊢
  unfold heapBase
  omega

end InitECandidate.Solver.MemSafe
