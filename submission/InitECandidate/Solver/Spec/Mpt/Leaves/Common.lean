import InitECandidate.Solver.Spec.Mpt.Leaves.Branch
import InitECandidate.Solver.Spec.Inv.Memcpy

/-!
# A frame for fresh-footprint proofs

`FF p M0 t`: the state `t` has ordered allocator pointers that moved monotonically from `p`, and
every cell where `t.memory` differs from `M0` was unallocated under `p`. This is the
`FreshFoot` post (`Decode/Foot.lean`) without the return fact `Q`. It ignores locals, so `dec` /
`decCall` restorations keep it (`ff_locals`), it survives callees with a fresh footprint
(`ff_callee`), allocations (`ff_alloc`) and stores into cells unallocated under `p`
(`ff_store`).

Hoare-rule wrappers whose post ignores locals: `hoare_decL`, `hoare_decCallL`; and
`hoare_ret_ptrs`, which moves the `∀ p, ptrsOf s0 = some p → …` of a `FreshFoot` post in front of
the Hoare triple.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.Spec.Mpt.Leaves
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Dec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd)

theorem ev_lv' {s : State σ} {x : MlS} {w : BitVec 64}
    (h : s.locals.lookup x = some (.val (.word w))) : ev s (lv x) = some (.val (.word w)) := by
  rw [ev_lv]; exact h

theorem evs_three_inv' {s : State σ} {a b c : ExpHOL 64} {vs : List (ValueHOL 64)}
    (h : evs s [a, b, c] = some vs) :
    ∃ va vb vc, vs = [va, vb, vc] ∧ ev s a = some va ∧ ev s b = some vb ∧ ev s c = some vc := by
  obtain ⟨va, vs', rfl, ha, h'⟩ := evs_cons_inv h
  obtain ⟨vb, vs'', rfl, hb, h''⟩ := evs_cons_inv h'
  obtain ⟨vc, vs''', rfl, hc, h'''⟩ := evs_cons_inv h''
  have : vs''' = [] := by
    have h0 : evs s ([] : List (ExpHOL 64)) = some [] := evs_nil
    rw [h0] at h'''
    exact (Option.some.inj h''').symm
  subst this
  exact ⟨va, vb, vc, rfl, ha, hb, hc⟩

theorem evs_two_inv' {s : State σ} {a b : ExpHOL 64} {vs : List (ValueHOL 64)}
    (h : evs s [a, b] = some vs) : ∃ va vb, vs = [va, vb] ∧ ev s a = some va ∧ ev s b = some vb := by
  obtain ⟨va, vs', rfl, ha, h'⟩ := evs_cons_inv h
  obtain ⟨vb, vs'', rfl, hb, h''⟩ := evs_cons_inv h'
  have : vs'' = [] := by
    have h0 : evs s ([] : List (ExpHOL 64)) = some [] := evs_nil
    rw [h0] at h''
    exact (Option.some.inj h'').symm
  subst this
  exact ⟨va, vb, rfl, ha, hb⟩

theorem ev_add3_inv' {s : State σ} {a b c : ExpHOL 64} {v : ValueHOL 64}
    (h : ev s (.op .add [a, b, c]) = some v) :
    ∃ x y z, ev s a = some (.val (.word x)) ∧ ev s b = some (.val (.word y)) ∧
      ev s c = some (.val (.word z)) ∧ v = .val (.word (x + (y + z))) := by
  have h' := h
  simp only [ev, evalHOLExact] at h'
  split at h'
  · rename_i values hvals
    split at h'
    · rename_i hall
      obtain ⟨va, vb, vc, rfl, ha, hb, hc⟩ := evs_three_inv' (s := s) (a := a) (b := b) (c := c) hvals
      simp only [List.all_cons, List.all_nil, Bool.and_true, Bool.and_eq_true] at hall
      obtain ⟨hwa, hwb, hwc⟩ := hall
      match va, vb, vc, hwa, hwb, hwc with
      | .val (.word x), .val (.word y), .val (.word z), _, _, _ =>
          refine ⟨x, y, z, ha, hb, hc, ?_⟩
          rw [ev_add3 ha hb hc] at h
          exact (Option.some.inj h).symm
    · simp at h'
  · simp at h'

theorem ev_add2_inv' {s : State σ} {a b : ExpHOL 64} {v : ValueHOL 64}
    (h : ev s (.op .add [a, b]) = some v) :
    ∃ x y, ev s a = some (.val (.word x)) ∧ ev s b = some (.val (.word y)) ∧
      v = .val (.word (x + y)) := by
  have h' := h
  simp only [ev, evalHOLExact] at h'
  split at h'
  · rename_i values hvals
    split at h'
    · rename_i hall
      obtain ⟨va, vb, rfl, ha, hb⟩ := evs_two_inv' (s := s) (a := a) (b := b) hvals
      simp only [List.all_cons, List.all_nil, Bool.and_true, Bool.and_eq_true] at hall
      obtain ⟨hwa, hwb⟩ := hall
      match va, vb, hwa, hwb with
      | .val (.word x), .val (.word y), _, _ =>
          refine ⟨x, y, ha, hb, ?_⟩
          rw [ev_add2 ha hb] at h
          exact (Option.some.inj h).symm
    · simp at h'
  · simp at h'

theorem ev_mul2_inv' {s : State σ} {a b : ExpHOL 64} {v : ValueHOL 64}
    (h : ev s (.panop .mul [a, b]) = some v) :
    ∃ x y, ev s a = some (.val (.word x)) ∧ ev s b = some (.val (.word y)) ∧
      v = .val (.word (x * y)) := by
  have h' := h
  simp only [ev, evalHOLExact] at h'
  split at h'
  · rename_i values hvals
    split at h'
    · rename_i hall
      obtain ⟨va, vb, rfl, ha, hb⟩ := evs_two_inv' (s := s) (a := a) (b := b) hvals
      simp only [List.all_cons, List.all_nil, Bool.and_true, Bool.and_eq_true] at hall
      obtain ⟨hwa, hwb⟩ := hall
      match va, vb, hwa, hwb with
      | .val (.word x), .val (.word y), _, _ =>
          refine ⟨x, y, ha, hb, ?_⟩
          rw [ev_mul2 ha hb] at h
          exact (Option.some.inj h).symm
    · simp at h'
  · simp at h'

theorem ev_load1_inv' {s : State σ} {a : ExpHOL 64} {v : ValueHOL 64}
    (h : ev s (.load .one a) = some v) :
    ∃ w, ev s a = some (.val (.word w)) ∧ s.memaddrs w ∧ v = .val (.word (MemSafe.rd s.memory w)) := by
  obtain ⟨w, hw, hd, rfl⟩ := ev_load_one h
  exact ⟨w, hw, hd, by rw [← mem_word]⟩

/-- The fresh-footprint frame. -/
def FF (p : Ptrs) (M0 : MemSafe.Mem) (t : State σ) : Prop :=
  ∃ p' : Ptrs, ptrsOf t = some p' ∧ p'.Ordered ∧ p.Mono p' ∧
    ∀ a : BitVec 64, t.memory a ≠ M0 a → ¬ p.Allocated a.toNat

theorem ff_refl {p : Ptrs} {t : State σ} (hp : ptrsOf t = some p) (ho : p.Ordered) :
    FF p t.memory t :=
  ⟨p, hp, ho, ⟨le_rfl, le_rfl, le_rfl⟩, fun _ h => absurd rfl h⟩

theorem ff_locals {p : Ptrs} {M0 : MemSafe.Mem} {t : State σ}
    (L : HolFiniteMapExact MlS (ValueHOL 64)) (h : FF p M0 t) : FF p M0 { t with locals := L } := h

theorem ff_empty {p : Ptrs} {M0 : MemSafe.Mem} {t : State σ} (h : FF p M0 t) :
    FF p M0 (emptyLocalsHOLFinite t) := h

theorem mono_trans' {p q r : Ptrs} (h1 : p.Mono q) (h2 : q.Mono r) : p.Mono r := by
  obtain ⟨a, b, c⟩ := h1; obtain ⟨d, e, f⟩ := h2; exact ⟨by omega, by omega, by omega⟩

theorem not_alloc_of_mono {p q : Ptrs} (h : p.Mono q) {a : Nat} (ha : ¬ q.Allocated a) :
    ¬ p.Allocated a := fun h' => ha (allocated_mono h h')

/-- A callee with a fresh footprint (relative to its entry pointers `q`). -/
theorem ff_callee {p q : Ptrs} {M0 : MemSafe.Mem} {t u : State σ} (h : FF p M0 t)
    (hq : ptrsOf t = some q)
    (hu : ∃ q' : Ptrs, ptrsOf u = some q' ∧ q'.Ordered ∧ q.Mono q' ∧
      ∀ a : BitVec 64, u.memory a ≠ t.memory a → ¬ q.Allocated a.toNat) : FF p M0 u := by
  obtain ⟨p1, hp1, -, hm1, hw1⟩ := h
  rw [hq] at hp1
  cases hp1
  obtain ⟨q', hq', ho', hm', hw'⟩ := hu
  refine ⟨q', hq', ho', mono_trans' hm1 hm', fun a ha => ?_⟩
  by_cases e : u.memory a = t.memory a
  · exact hw1 a (by rw [← e]; exact ha)
  · exact not_alloc_of_mono hm1 (hw' a e)

/-- Same pointers, memory changed only at cells unallocated under `p`. -/
theorem ff_mem {p : Ptrs} {M0 : MemSafe.Mem} {t u : State σ} (h : FF p M0 t)
    (hg : ptrsOf u = ptrsOf t)
    (hw : ∀ a : BitVec 64, u.memory a ≠ t.memory a → ¬ p.Allocated a.toNat) : FF p M0 u := by
  obtain ⟨p1, hp1, ho1, hm1, hw1⟩ := h
  refine ⟨p1, hg.trans hp1, ho1, hm1, fun a ha => ?_⟩
  by_cases e : u.memory a = t.memory a
  · exact hw1 a (by rw [← e]; exact ha)
  · exact hw a e

/-- A store state `{ t with memory := mem }` whose changed cells are unallocated under `p`. -/
theorem ff_store {p : Ptrs} {M0 : MemSafe.Mem} {t : State σ} (h : FF p M0 t) {mem : MemSafe.Mem}
    (hw : ∀ a : BitVec 64, mem a ≠ t.memory a → ¬ p.Allocated a.toNat) :
    FF p M0 { t with memory := mem } :=
  ff_mem h rfl hw

/-! ## Hoare wrappers -/

/-- `dec` with a post that ignores locals. -/
theorem hoare_decL {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    (hQ : ∀ r (t : State σ) L, Q r t → Q r { t with locals := L })
    (h : ∀ s, InCtx s X → P s → ∀ v, ev s e = some v → shapeEqHOL sh (shapeOfHOLExact v) = true →
      Hoare σ X (fun t => t = setVarHOLFinite n v s) body Q) :
    Hoare σ X P (.dec n sh e body) Q :=
  hoare_dec fun s hs hp v hv hsh => hoare_conseq (h s hs hp v hv hsh) (fun _ _ h => h)
    fun r t _ _ hq => hQ r t _ hq

/-- `var x = f(args); k` with a post that ignores locals. -/
theorem hoare_decCallL {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {rn f : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : FunSpec σ X f R)
    (hQ : ∀ r (t : State σ) L, Q r t → Q r { t with locals := L })
    (h : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : State σ),
        R vs (callEntryStateHOLFinite s callee) (.returned v) st → InCtx st X →
        shapeEqHOL (shapeOfHOLExact v) sh = true →
        Hoare σ X (fun t => t = setVarHOLFinite rn v { st with locals := s.locals }) k Q) :
    Hoare σ X P (.decCall rn sh f args k) Q :=
  hoare_decCallS hf fun s hs hp vs hvs callee v st hR hst hsh =>
    hoare_conseq (h s hs hp vs hvs callee v st hR hst hsh) (fun _ _ h => h)
      fun r t _ _ hq => hQ r t _ hq

/-- `if c { return e; } k`. -/
theorem hoare_retGuard {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {c e : ExpHOL 64} {k : ProgHOL 64}
    (hret : ∀ t, InCtx t X → P t → ∀ v, ev t e = some v →
      Q (some (.returned v)) (emptyLocalsHOLFinite t))
    (hk : Hoare σ X (fun t => P t ∧ ev t c = some (.val (.word 0))) k Q) :
    Hoare σ X P (.seq (.ite c (.return e) .skip) k) Q :=
  hoare_seq (R := fun r t => (r = none ∧ P t ∧ ev t c = some (.val (.word 0))) ∨ (r ≠ none ∧ Q r t))
    (hoare_ite (hoare_return fun t hs ⟨hp, _⟩ v hv => Or.inr ⟨by simp, hret t hs hp v hv⟩)
      (hoare_skip fun t _ ⟨hp, hc⟩ => Or.inl ⟨rfl, hp, hc⟩))
    (fun _ _ _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2))
    (hoare_pre hk fun _ _ h => h.elim (fun h => ⟨h.2.1, h.2.2⟩) (fun h => absurd rfl h.1))

/-- A pure fact in the precondition. -/
theorem hoare_pure {P : State σ → Prop} {φ : Prop} {b : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} (h : φ → Hoare σ X P b Q) :
    Hoare σ X (fun s => P s ∧ φ) b Q :=
  fun s hs ⟨hp, hφ⟩ ht => h hφ s hs hp ht

/-- Move the pointer quantifier of a `FreshFoot` post in front of the triple. -/
theorem hoare_ret_ptrs {P : State σ → Prop} {b : ProgHOL 64} {s0 : State σ} {Pre : Prop}
    {R : Ptrs → ValueHOL 64 → State σ → Prop}
    (h : ∀ p : Ptrs, ptrsOf s0 = some p → p.Ordered → Pre →
      Hoare σ X P b (fun r t => ∀ v, r = some (.returned v) → R p v t)) :
    Hoare σ X P b (fun r t => ∀ v, r = some (.returned v) →
      ∀ p : Ptrs, ptrsOf s0 = some p → p.Ordered → Pre → R p v t) := by
  intro s hs hP ht v hv p hp ho hpre
  exact h p hp ho hpre s hs hP ht v hv

/-- The `FreshFoot` post as a function of the entry pointers. -/
def FPost (p : Ptrs) (M0 : MemSafe.Mem) (Q : Ptrs → MemSafe.Mem → ValueHOL 64 → Prop)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ v, r = some (.returned v) → ∃ p' : Ptrs, ptrsOf t = some p' ∧ p'.Ordered ∧ p.Mono p' ∧
    (∀ a : BitVec 64, t.memory a ≠ M0 a → ¬ p.Allocated a.toNat) ∧ Q p' t.memory v

theorem fpost_locals {p : Ptrs} {M0 : MemSafe.Mem} {Q : Ptrs → MemSafe.Mem → ValueHOL 64 → Prop}
    (r : Option (PanSemResultExact 64)) (t : State σ) (L : HolFiniteMapExact MlS (ValueHOL 64))
    (h : FPost p M0 Q r t) : FPost p M0 Q r { t with locals := L } := h

/-- A `FreshFoot` from a triple with the `FPost` post. -/
theorem freshFoot_of {f : MlS} {Pre : List (ValueHOL 64) → State σ → Prop}
    {Q : List (ValueHOL 64) → Ptrs → Ptrs → MemSafe.Mem → ValueHOL 64 → Prop}
    (h : ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      ∀ s0 : State σ, InCtx s0 X → s0.locals = callee → ∀ p : Ptrs, ptrsOf s0 = some p →
        p.Ordered → Pre vs s0 →
        Hoare σ X (fun s => s = s0) body (FPost p s0.memory (Q vs p))) :
    FreshFoot σ X f Pre Q :=
  funSpec_of_hoare fun vs body callee rs hl s0 hs hloc =>
    hoare_ret_ptrs (R := fun p v t => ∃ p' : Ptrs, ptrsOf t = some p' ∧ p'.Ordered ∧ p.Mono p' ∧
        (∀ a : BitVec 64, t.memory a ≠ s0.memory a → ¬ p.Allocated a.toNat) ∧ Q vs p p' t.memory v)
      fun p hp ho hpre => h vs body callee rs hl s0 hs hloc p hp ho hpre

theorem fpost_of_ff {p : Ptrs} {M0 : MemSafe.Mem} {Q : Ptrs → MemSafe.Mem → ValueHOL 64 → Prop}
    {t : State σ} {v : ValueHOL 64} (h : FF p M0 t)
    (hQ : ∀ p', ptrsOf t = some p' → Q p' t.memory v) :
    FPost p M0 Q (some (.returned v)) t := by
  intro w hw
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
  subst hw
  obtain ⟨p', hp', ho', hm', hw'⟩ := h
  exact ⟨p', hp', ho', hm', hw', hQ p' hp'⟩

/-! ## Calls and stores in the frame -/

/-- A call to a callee with a fresh footprint keeps the frame. -/
theorem ff_call {Pre : List (ValueHOL 64) → State σ → Prop}
    {Q : List (ValueHOL 64) → Ptrs → Ptrs → MemSafe.Mem → ValueHOL 64 → Prop}
    {p : Ptrs} {M0 : MemSafe.Mem} {s st : State σ} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {vs : List (ValueHOL 64)} {v : ValueHOL 64} (h : FF p M0 s)
    (hR : ∀ w, PanSemResultExact.returned v = .returned w → ∀ q : Ptrs,
      ptrsOf (callEntryStateHOLFinite s callee) = some q → q.Ordered →
      Pre vs (callEntryStateHOLFinite s callee) → ∃ q' : Ptrs, ptrsOf st = some q' ∧ q'.Ordered ∧
        q.Mono q' ∧ (∀ a : BitVec 64, st.memory a ≠ (callEntryStateHOLFinite s callee).memory a →
          ¬ q.Allocated a.toNat) ∧ Q vs q q' st.memory w)
    (hpre : Pre vs (callEntryStateHOLFinite s callee)) :
    FF p M0 st ∧ ∃ q q' : Ptrs, ptrsOf s = some q ∧ ptrsOf st = some q' ∧ q.Mono q' ∧
      Q vs q q' st.memory v := by
  obtain ⟨q, hq, hoq, -, -⟩ := id h
  obtain ⟨q', hq', ho', hm', hw', hQ⟩ := hR v rfl q hq hoq hpre
  exact ⟨ff_callee h hq ⟨q', hq', ho', hm', hw'⟩, q, q', hq, hq', hm', hQ⟩

/-- A word store into a cell unallocated under `p`. -/
theorem hoare_store_ff {L : HolFiniteMapExact MlS (ValueHOL 64) → Prop} {a e : ExpHOL 64}
    {p : Ptrs} {M0 : MemSafe.Mem}
    (h : ∀ t : State σ, L t.locals → ∃ w x : BitVec 64, ev t a = some (.val (.word w)) ∧
      ev t e = some (.val (.word x)) ∧ ¬ p.Allocated w.toNat) :
    Hoare σ X (fun t => L t.locals ∧ FF p M0 t) (.store a e)
      (fun r t => r = none ∧ L t.locals ∧ FF p M0 t) := by
  refine hoare_store fun t _ ⟨hL, hff⟩ w v mem hw hv hmem => ?_
  obtain ⟨w', x, hw', hx, hfree⟩ := h t hL
  rw [hw'] at hw
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
  subst hw
  rw [hx] at hv
  simp only [Option.some.injEq] at hv
  subst hv
  obtain ⟨-, rfl⟩ := Inv.store_word_dom hmem
  refine ⟨rfl, hL, ff_store hff fun b hb => ?_⟩
  by_cases e : b = w'
  · subst e; exact hfree
  · exact absurd (Inv.upd_ne e) hb

/-! ## Allocation -/

/-- Pointers moved monotonically, memory unchanged (an allocator call). -/
theorem ff_ptrs {p q q' : Ptrs} {M0 : MemSafe.Mem} {s st : State σ} (h : FF p M0 s)
    (hq : ptrsOf s = some q) (hm : st.memory = s.memory) (hq' : ptrsOf st = some q')
    (ho' : q'.Ordered) (hmono : q.Mono q') : FF p M0 st :=
  ff_callee h hq ⟨q', hq', ho', hmono, fun a ha => absurd (by rw [hm]) ha⟩

/-- A nonempty fresh block starts at or above the entry `heap_ptr`. -/
theorem alloc_start {q : Ptrs} {e n : Nat} (he : heapBase ≤ e) (hn : 0 < n)
    (hfree : ∀ a, e ≤ a → a < e + n → ¬ q.Allocated a) : q.hp ≤ e := by
  by_contra hlt
  exact hfree e le_rfl (by omega) (Or.inl ⟨he, by omega⟩)

end InitECandidate.Solver.Spec.Mpt.Leaves
