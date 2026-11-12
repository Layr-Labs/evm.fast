import InitECandidate.Solver.Spec.Mpt.Decode.Chain

/-!
# Callee footprints of the decode loop

* `FreshFoot σ X f Pre Q` (**callee footprint hypothesis**): a run of `f` that returns `v`,
  from an allocator-ordered state satisfying `Pre`, keeps the pointers ordered and moves them
  monotonically (no net release), writes only cells that were unallocated at entry
  (`¬ p.Allocated`: fresh heap, fresh scratch, scratch released again inside the call), and
  `Q vs p p' M' v` holds of the entry / exit pointers and the exit memory. This is the
  `SumCore` footprint (`MemSafe/Summary.lean`) without `Γ`-cell or argument-cell writes,
  restricted to returns.
* `freshFoot_benign`: such a write is `Benign` for the decode records (allocated scratch) and
  every heap block below the entry `heap_ptr`.
* `freshFoot_node_new_ext`: `node_new_ext` returns a fresh 56-byte heap block (proved here from
  `MemSafe.allocSpec_alloc`).
-/

namespace InitECandidate.Solver.Spec.Mpt.Dec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd)

def FreshFoot (σ : Type) (X : Ctx 64) (f : MlS)
    (Pre : List (ValueHOL 64) → PanSemStateFiniteExact 64 σ → Prop)
    (Q : List (ValueHOL 64) → Ptrs → Ptrs → Mem → ValueHOL 64 → Prop) : Prop :=
  FunSpec σ X f (fun vs s r t => ∀ v, r = .returned v → ∀ p : Ptrs, ptrsOf s = some p →
    p.Ordered → Pre vs s → ∃ p' : Ptrs, ptrsOf t = some p' ∧ p'.Ordered ∧ p.Mono p' ∧
      (∀ a : BitVec 64, t.memory a ≠ s.memory a → ¬ p.Allocated a.toNat) ∧ Q vs p p' t.memory v)

theorem freshFoot_benign {p : Ptrs} {M M' : Mem} {lo hi V : Nat} (hlo : p.sp ≤ lo)
    (hhi : hi ≤ scratchEnd) (hV : V ≤ p.hp)
    (h : ∀ a : BitVec 64, M' a ≠ M a → ¬ p.Allocated a.toNat) : Benign lo hi V M M' := by
  intro a ha
  have := h a ha
  unfold Ptrs.Allocated at this
  constructor <;> omega

/-- A state-relational spec of returns from a Hoare triple on the body. -/
theorem funSpec_of_hoare {f : MlS}
    {R : List (ValueHOL 64) → PanSemStateFiniteExact 64 σ → ValueHOL 64 →
      PanSemStateFiniteExact 64 σ → Prop}
    (h : ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      ∀ s0 : PanSemStateFiniteExact 64 σ, InCtx s0 X → s0.locals = callee →
        Hoare σ X (fun s => s = s0) body (fun r t => ∀ v, r = some (.returned v) → R vs s0 v t)) :
    FunSpec σ X f (fun vs s r t => ∀ v, r = .returned v → R vs s v t) := by
  intro vs body callee rs hl s hs hloc r hr v hv
  subst hv
  have := h vs body callee rs hl s hs hloc s hs rfl (by rw [hr]; trivial)
  rw [hr] at this
  exact this v rfl

/-! ## Stores into a block -/

/-- Locals and globals fixed, memory changed only inside `[q, q + n)`. -/
def InBlk (L : HolFiniteMapExact MlS (ValueHOL 64)) (G : HolFiniteMapExact MlS (ValueHOL 64))
    (M0 : Mem) (q : BitVec 64) (n : Nat) (t : PanSemStateFiniteExact 64 σ) : Prop :=
  t.locals = L ∧ t.globals = G ∧
    ∀ a : BitVec 64, t.memory a ≠ M0 a → q.toNat ≤ a.toNat ∧ a.toNat < q.toNat + n

/-- The stored expression is a word. -/
def WordE (L : HolFiniteMapExact MlS (ValueHOL 64)) (e : ExpHOL 64) : Prop :=
  ∀ t : PanSemStateFiniteExact 64 σ, t.locals = L → ∀ v, ev t e = some v → ∃ V : BitVec 64, v = .val (.word V)

theorem wordE_cw (L : HolFiniteMapExact MlS (ValueHOL 64)) (c : Nat) : WordE (σ := σ) L (cw c) := by
  intro t _ v hv; rw [ev_cw] at hv; cases hv; exact ⟨_, rfl⟩

theorem wordE_lv {L : HolFiniteMapExact MlS (ValueHOL 64)} {x : MlS} {V : BitVec 64}
    (h : L.lookup x = some (.val (.word V))) : WordE (σ := σ) L (lv x) := by
  intro t ht v hv; rw [ev_lv, ht, h] at hv; cases hv; exact ⟨_, rfl⟩

theorem hoare_store_blk {L G : HolFiniteMapExact MlS (ValueHOL 64)} {M0 : Mem} {x : MlS}
    {q : BitVec 64} {n k : Nat} {e : ExpHOL 64} (hx : L.lookup x = some (.val (.word q)))
    (hk : k < n) (hq : q.toNat + n ≤ 2 ^ 64) (he : WordE (σ := σ) L e) :
    Hoare σ X (InBlk L G M0 q n) (.store (.op .add [lv x, cw k]) e)
      (fun r t => r = none ∧ InBlk L G M0 q n t) := by
  refine hoare_store fun t _ ⟨hl, hg, hm⟩ w v mem hw hv hmem => ⟨rfl, hl, hg, fun a ha => ?_⟩
  rw [ev_add_cw (by rw [hl]; exact hx) k] at hw
  cases hw
  obtain ⟨V, rfl⟩ := he t hl v hv
  simp only [flattenHOL] at hmem
  obtain ⟨-, rfl⟩ := stores_one hmem
  simp only at ha
  by_cases e : a = q + BitVec.ofNat 64 k
  · subst e
    rw [toNat_add_lt (by omega)]
    omega
  · rw [if_neg e] at ha
    exact hm a ha

theorem hoare_seq_blk {L G : HolFiniteMapExact MlS (ValueHOL 64)} {M0 : Mem} {x : MlS}
    {q : BitVec 64} {n k : Nat} {e : ExpHOL 64} {b : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop}
    (hx : L.lookup x = some (.val (.word q))) (hk : k < n) (hq : q.toNat + n ≤ 2 ^ 64)
    (he : WordE (σ := σ) L e) (hb : Hoare σ X (InBlk L G M0 q n) b Q) :
    Hoare σ X (InBlk L G M0 q n) (.seq (.store (.op .add [lv x, cw k]) e) b) Q :=
  hoare_seq (hoare_store_blk hx hk hq he) (fun _ _ _ hr _ h => absurd h.1 hr)
    (hoare_pre hb fun _ _ h => h.2)

/-! ## `node_new_ext` -/

/-- A returned fresh heap block of `n` bytes. -/
def FreshRet (n : Nat) (p p' : Ptrs) (v : ValueHOL 64) : Prop :=
  ∃ e : BitVec 64, v = .val (.word e) ∧ p.hp ≤ e.toNat ∧ e.toNat + n ≤ p'.hp

theorem freshFoot_node_new_ext (hC : X.code.lookup = guestCode) :
    FreshFoot σ X (nm "node_new_ext") (fun _ _ => True) (fun _ p p' _ v => FreshRet 56 p p' v) := by
  refine funSpec_of_hoare fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, C, rfl, hsA, hsB, hsC, hA, hB, hC'⟩ :=
    lookupCode_three code_node_new_ext (by decide) (by decide) (by decide) hl
  obtain ⟨A, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨B, rfl⟩ := val_of_shapeEq_one hsB
  obtain ⟨C, rfl⟩ := val_of_shapeEq_one hsC
  refine hoare_decCallS (MemSafe.allocSpec_alloc (σ := σ) hC) fun s _ hs0 avs havs callee' v st hR _ _ => ?_
  subst hs0
  rw [evs_cons (ev_cw _ 56) evs_nil] at havs
  simp only [Option.some.injEq] at havs
  subst havs
  -- the continuation runs from `t1`; collect the post as a function of the allocation
  refine hoare_conseq (P := fun t => t = setVarHOLFinite (nm "nd") v { st with locals := s.locals })
    ?_ (fun _ _ h => h) (fun r t _ _ h => h)
  intro t1 hctx1 ht1 htr
  subst ht1
  -- returns of the continuation
  suffices H : ∀ p : Ptrs, ptrsOf s = some p → p.Ordered → ∃ q : BitVec 64, v = .val (.word q) ∧
      Hoare σ X (fun t => t = setVarHOLFinite (nm "nd") v { st with locals := s.locals }) nxK
        (fun r t => ∀ w, r = some (.returned w) → ∃ p' : Ptrs, ptrsOf t = some p' ∧ p'.Ordered ∧
          p.Mono p' ∧ (∀ a : BitVec 64, t.memory a ≠ s.memory a → ¬ p.Allocated a.toNat) ∧
          FreshRet 56 p p' w) by
    intro w hw p hp hord _
    obtain ⟨q, -, hH⟩ := H p hp hord
    have := hH _ hctx1 rfl htr
    exact (this w hw)
  intro p hp hord
  have hpe : ptrsOf (callEntryStateHOLFinite s callee') = some p := hp
  obtain ⟨hm, hglob, p1, hp1, hord1, hmono, hq⟩ := hR (by simp [Good]) _ p rfl hpe hord
  obtain ⟨q, rfl, -, ⟨hl1, hl2⟩, hfree⟩ := hq _ rfl
  refine ⟨q, rfl, ?_⟩
  simp only [BitVec.toNat_ofNat] at hl2 hfree
  have hpq : p.hp ≤ q.toNat := by
    by_contra hlt
    exact hfree q.toNat le_rfl (by omega) (Or.inl ⟨hl1, by omega⟩)
  have hord1' := hord1
  obtain ⟨-, hh2, -⟩ := hord1'
  have hq64 : q.toNat + 56 ≤ 2 ^ 64 := by simp only [heapEnd] at hh2; omega
  set t1 := setVarHOLFinite (nm "nd") (.val (.word q)) { st with locals := s.locals }
  have hnd : t1.locals.lookup (nm "nd") = some (.val (.word q)) := lk_set_self _ _ _
  have hM1 : t1.memory = s.memory := hm
  have hP1 : ptrsOf t1 = some p1 := by rw [← hp1]; rfl
  refine hoare_pre (P := InBlk t1.locals t1.globals t1.memory q 56) ?_
    (fun t _ ht => by subst ht; exact ⟨rfl, rfl, fun a ha => absurd rfl ha⟩)
  unfold nxK
  have hlA : t1.locals.lookup (nm "nib") = some (.val (.word A)) := by
    rw [lk_set_ne _ _ (by decide)]; show s.locals.lookup _ = _; rw [hloc]; exact hA
  have hlB : t1.locals.lookup (nm "nlen") = some (.val (.word B)) := by
    rw [lk_set_ne _ _ (by decide)]; show s.locals.lookup _ = _; rw [hloc]; exact hB
  have hlC : t1.locals.lookup (nm "child") = some (.val (.word C)) := by
    rw [lk_set_ne _ _ (by decide)]; show s.locals.lookup _ = _; rw [hloc]; exact hC'
  refine hoare_seq_blk hnd (by decide) hq64 (wordE_cw _ _) (hoare_seq_blk hnd (by decide) hq64
    (wordE_cw _ _) (hoare_seq_blk hnd (by decide) hq64 (wordE_cw _ _) (hoare_seq_blk hnd
      (by decide) hq64 (wordE_cw _ _) (hoare_seq_blk hnd (by decide) hq64 (wordE_lv hlA)
        (hoare_seq_blk hnd (by decide) hq64 (wordE_lv hlB)
          (hoare_seq_blk hnd (by decide) hq64 (wordE_lv hlC) ?_))))))
  refine hoare_return fun t _ ⟨hl, hg, hmt⟩ w hw w' hw' => ?_
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw'
  subst hw'
  rw [ev_lv, hl, hnd] at hw
  cases hw
  refine ⟨p1, ?_, hord1, hmono, fun a ha => ?_, q, rfl, hpq, hl2⟩
  · show ptrsOf (emptyLocalsHOLFinite t) = _
    rw [← hP1]
    exact ptrsOf_frame hg
  · have ha' : t.memory a ≠ t1.memory a := by rw [hM1]; exact ha
    obtain ⟨h1, h2⟩ := hmt a ha'
    exact hfree a.toNat h1 h2

end InitECandidate.Solver.Spec.Mpt.Dec
