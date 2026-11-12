import InitECandidate.Solver.MemSafe.Fq.Kit

set_option autoImplicit false

/-!
# `fq12_inv`: definitions, locals invariants, stores and the callee record

* `FG`: ghost record of the six `alloc(416)` blocks (`r0, r1, s0, s1, q, tmp`), `bs6`, `K6`.
* `OL g m`: the locals invariant of the outer loop: `d`, `a`, `mark`, `q` hold fixed words, and the five
  rotating pointers `r0, r1, s0, s1, tmp` hold words that are *bases of one of the six blocks*
  (distinctness is not needed for memory safety; the swaps only permute the set).
* `hoareG_st4K`, `hoareG_st4Out`: four-word stores into a block / into the entry buffer.
* `CI`: the callee record.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Fq
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Mod

variable {σ : Type} {X : Ctx 64}

/-! ## Locals -/

def Lk (m : LocalsH) (x : String) (v : ValueHOL 64) : Prop := m.lookup (nm x) = some v
abbrev LW (m : LocalsH) (x : String) (w : BitVec 64) : Prop := Lk m x (.val (.word w))

theorem Lk.set {s : State σ} {x y : String} {v : ValueHOL 64} (u : ValueHOL 64)
    (h : Lk s.locals x v) (hne : nm y ≠ nm x) : Lk (setVarHOLFinite (nm y) u s).locals x v := by
  unfold Lk at *
  rw [lk_set_ne _ _ hne]
  exact h

theorem Lk.res {m : LocalsH} {x y : String} {v : ValueHOL 64} (old : Option (ValueHOL 64))
    (h : Lk m x v) (hne : nm y ≠ nm x) : Lk (m.resVarEq (nm y, old)) x v := by
  unfold Lk at *
  rw [lookup_resVarEq_ne _ _ hne]
  exact h

theorem Lk.self (s : State σ) (x : String) (v : ValueHOL 64) : Lk (setVarHOLFinite (nm x) v s).locals x v :=
  lk_set_self _ _ _

theorem Lk.ev {s : State σ} {x : String} {v : ValueHOL 64} (h : Lk s.locals x v) :
    ev s (lv (nm x)) = some v := h

theorem Lk.eq {m : LocalsH} {x : String} {v v' : ValueHOL 64} (h : Lk m x v) (h' : Lk m x v') :
    v = v' := by
  unfold Lk at h h'
  rw [h] at h'
  exact Option.some.inj h'

/-! ## The six blocks -/

structure FG where
  d : BitVec 64
  a : BitVec 64
  mkr : BitVec 64
  b0 : BitVec 64
  b1 : BitVec 64
  b2 : BitVec 64
  b3 : BitVec 64
  b4 : BitVec 64
  b5 : BitVec 64

def bs6 (g : FG) : List (Nat × Nat) :=
  [(g.b5.toNat, 416), (g.b4.toNat, 416), (g.b3.toNat, 416), (g.b2.toNat, 416), (g.b1.toNat, 416),
    (g.b0.toNat, 416)]

def K6 (g : FG) : Nat := g.b5.toNat + 416

def PB (g : FG) (x : String) (m : LocalsH) : Prop := ∃ w, LW m x w ∧ (w.toNat, 416) ∈ bs6 g

def FX (g : FG) (m : LocalsH) : Prop :=
  LW m "d" g.d ∧ LW m "a" g.a ∧ LW m "mark" g.mkr ∧ LW m "q" g.b4

def OL (g : FG) (m : LocalsH) : Prop :=
  FX g m ∧ PB g "r0" m ∧ PB g "r1" m ∧ PB g "s0" m ∧ PB g "s1" m ∧ PB g "tmp" m

def Fr (y : String) : Prop :=
  ∀ x ∈ ["d", "a", "mark", "q", "r0", "r1", "s0", "s1", "tmp"], nm x ≠ nm y

instance (y : String) : Decidable (Fr y) := by unfold Fr; infer_instance

def PtrN (x : String) : Prop := x = "r0" ∨ x = "r1" ∨ x = "s0" ∨ x = "s1" ∨ x = "tmp"

theorem PB.set {g : FG} {z : String} {s : State σ} (h : PB g z s.locals) (x : String) (w : BitVec 64)
    (hw : (w.toNat, 416) ∈ bs6 g) : PB g z (setVarHOLFinite (nm x) (.val (.word w)) s).locals := by
  by_cases hxz : nm x = nm z
  · refine ⟨w, ?_, hw⟩
    unfold LW Lk
    rw [← hxz]
    exact lk_set_self _ _ _
  · obtain ⟨w', h1, h2⟩ := h
    exact ⟨w', h1.set _ hxz, h2⟩

theorem PB.set' {g : FG} {z : String} {s : State σ} (h : PB g z s.locals) {y : String} (u : ValueHOL 64)
    (hy : nm y ≠ nm z) : PB g z (setVarHOLFinite (nm y) u s).locals := by
  obtain ⟨w', h1, h2⟩ := h
  exact ⟨w', h1.set _ hy, h2⟩

theorem PB.res {g : FG} {z : String} {m : LocalsH} (h : PB g z m) {y : String}
    (old : Option (ValueHOL 64)) (hy : nm y ≠ nm z) : PB g z (m.resVarEq (nm y, old)) := by
  obtain ⟨w', h1, h2⟩ := h
  exact ⟨w', h1.res old hy, h2⟩

theorem OL.set {g : FG} {s : State σ} (h : OL g s.locals) {y : String} (hy : Fr y) (u : ValueHOL 64) :
    OL g (setVarHOLFinite (nm y) u s).locals := by
  obtain ⟨⟨h1, h2, h3, h4⟩, h5, h6, h7, h8, h9⟩ := h
  have f : ∀ x ∈ ["d", "a", "mark", "q", "r0", "r1", "s0", "s1", "tmp"], nm y ≠ nm x :=
    fun x hx => (hy x hx).symm
  exact ⟨⟨h1.set _ (f _ (by simp)), h2.set _ (f _ (by simp)), h3.set _ (f _ (by simp)),
    h4.set _ (f _ (by simp))⟩, h5.set' _ (f _ (by simp)), h6.set' _ (f _ (by simp)),
    h7.set' _ (f _ (by simp)), h8.set' _ (f _ (by simp)), h9.set' _ (f _ (by simp))⟩

theorem OL.res {g : FG} {m : LocalsH} (h : OL g m) {y : String} (hy : Fr y)
    (old : Option (ValueHOL 64)) : OL g (m.resVarEq (nm y, old)) := by
  obtain ⟨⟨h1, h2, h3, h4⟩, h5, h6, h7, h8, h9⟩ := h
  have f : ∀ x ∈ ["d", "a", "mark", "q", "r0", "r1", "s0", "s1", "tmp"], nm y ≠ nm x :=
    fun x hx => (hy x hx).symm
  exact ⟨⟨h1.res old (f _ (by simp)), h2.res old (f _ (by simp)), h3.res old (f _ (by simp)),
    h4.res old (f _ (by simp))⟩, h5.res old (f _ (by simp)), h6.res old (f _ (by simp)),
    h7.res old (f _ (by simp)), h8.res old (f _ (by simp)), h9.res old (f _ (by simp))⟩

theorem OL.setPtr {g : FG} {s : State σ} (h : OL g s.locals) {x : String} (hx : PtrN x)
    (w : BitVec 64) (hw : (w.toNat, 416) ∈ bs6 g) :
    OL g (setVarHOLFinite (nm x) (.val (.word w)) s).locals := by
  obtain ⟨⟨h1, h2, h3, h4⟩, h5, h6, h7, h8, h9⟩ := h
  have hn : nm x ≠ nm "d" ∧ nm x ≠ nm "a" ∧ nm x ≠ nm "mark" ∧ nm x ≠ nm "q" := by
    rcases hx with rfl | rfl | rfl | rfl | rfl <;> decide
  exact ⟨⟨h1.set _ hn.1, h2.set _ hn.2.1, h3.set _ hn.2.2.1, h4.set _ hn.2.2.2⟩,
    h5.set x w hw, h6.set x w hw, h7.set x w hw, h8.set x w hw, h9.set x w hw⟩

theorem OL.ev {g : FG} {s : State σ} (h : OL g s.locals) : True := trivial

/-- The pointer local `z` of `OL`. -/
theorem OL.pb {g : FG} {m : LocalsH} (h : OL g m) {z : String}
    (hz : z = "r0" ∨ z = "r1" ∨ z = "s0" ∨ z = "s1" ∨ z = "tmp") : PB g z m := by
  rcases hz with rfl | rfl | rfl | rfl | rfl
  exacts [h.2.1, h.2.2.1, h.2.2.2.1, h.2.2.2.2.1, h.2.2.2.2.2]

theorem ptr_mem {g : FG} {m : LocalsH} (h : PB g "q" m) : True := trivial

theorem q_mem {g : FG} : (g.b4.toNat, 416) ∈ bs6 g := by simp [bs6]

/-! ## Evaluation -/

theorem ev_c4 (s : State σ) (a b c d : Nat) :
    ev s (Spec.Fq12.c4 a b c d) = some (wv [BitVec.ofNat 64 a, BitVec.ofNat 64 b, BitVec.ofNat 64 c,
      BitVec.ofNat 64 d]) := by
  unfold Spec.Fq12.c4
  exact ev_rstruct (evs_cons (ev_cw s a) (evs_cons (ev_cw s b) (evs_cons (ev_cw s c)
    (evs_cons (ev_cw s d) evs_nil))))

theorem flatten_len4 {ws : List (BitVec 64)} (h : ws.length = 4) : (flattenHOL (wv ws)).length = 4 := by
  rw [Spec.Fq12.flatten_wv]; simpa using h

/-! ## Stores -/

theorem heap_lt64 {a : Act σ} {Γ : Gam} {p : Ptrs} {s : State σ} (hh : Heap a Γ p s) : p.hp < 2 ^ 64 := by
  have hord := heap_ord hh
  unfold Ptrs.Ordered at hord
  unfold heapBase heapEnd scratchEnd at hord
  omega

/-- **A four-word store into a block** `[b, b + n)` above the entry allocation. -/
theorem hoareG_st4K {a : Act σ} (ha : ActOK a X) (hgrow : a.sg.grows = false)
    (hL0 : Layout a.C a.p0 a.Γ0) {K : Nat} {MK : BitVec 64} {L : LocalsH → Prop}
    {ea ev' : ExpHOL 64}
    (haddr : ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ p, Ext a.Γ0 Γ → Heap a Γ p s → K ≤ p.hp →
      ∀ w : BitVec 64, ev s ea = some (.val (.word w)) →
      ∃ b n : Nat, b % 8 = 0 ∧ a.p0.hp ≤ b ∧ b + n ≤ K ∧ b ≤ w.toNat ∧ w.toNat + 32 ≤ b + n)
    (hval : ∀ s : State σ, L s.locals → ∀ v, ev s ev' = some v → (flattenHOL v).length = 4) :
    HoareG σ X (PK a K MK L) (.store ea ev') (SPK a K MK L) := by
  refine hoareG_store fun s hs ⟨hL, Γ, p, he, hh, hK, hw⟩ w v mem hw' hv hst => ?_
  have hlen := hval s hL v hv
  obtain ⟨hm, hdom⟩ := Helpers.stores_mod hst
  obtain ⟨b, n, hb8, hlo, hhi, hb1, hb2⟩ := haddr s hs hL Γ p he hh hK w hw'
  obtain ⟨hbuf, hfree⟩ := bufOK_blk (C := a.Cb) hgrow ha.hord0 hL0 hh hb8 hlo (Nat.le_trans hhi hK)
  have hlt := heap_lt64 hh
  have hcell : ∀ x : BitVec 64, (∃ j, j < (flattenHOL v).length ∧ x = w + BitVec.ofNat 64 (8 * j)) →
      Overlap b n x := by
    rintro x ⟨j, hj, rfl⟩
    have h8 := ha.hal _ (hs.2.1 ▸ hdom j hj)
    rw [hlen] at hj
    have e : (w + BitVec.ofNat 64 (8 * j)).toNat = w.toNat + 8 * j := by
      rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 8 * j) (by omega),
        Nat.mod_eq_of_lt (by omega)]
    refine ⟨h8, ?_, ?_⟩ <;> rw [e] at * <;> omega
  refine ⟨fun _ => ⟨hL, Γ, p, he, ?_, hK, hw⟩, fun r' h => absurd h (by simp)⟩
  refine heap_store_buf ha hh hm (fun y hy => ?_) (fun y hy => ?_)
  · rcases hbuf y (hcell y hy) with h | ⟨h, -⟩
    · exact Or.inl h
    · exact Or.inr h
  · exact Or.inr (Or.inr (Or.inl (hfree _ (hcell y hy))))

/-- **A four-word store into the entry buffer** `[b, b + n)`. -/
theorem hoareG_st4Out {a : Act σ} (ha : ActOK a X) {K : Nat} {MK : BitVec 64} {L : LocalsH → Prop}
    {ea ev' : ExpHOL 64} {b n : Nat} (hbuf : BufOK a.Cb a.Γ0 a.p0 b n)
    (hfoot : ∀ x, Overlap b n x → a.Foot x) (hbn : b + n < 2 ^ 64)
    (haddr : ∀ s : State σ, InCtx s X → L s.locals → ∀ w : BitVec 64,
      ev s ea = some (.val (.word w)) → b ≤ w.toNat ∧ w.toNat + 32 ≤ b + n)
    (hval : ∀ s : State σ, L s.locals → ∀ v, ev s ev' = some v → (flattenHOL v).length = 4) :
    HoareG σ X (PK a K MK L) (.store ea ev') (SPK a K MK L) := by
  refine hoareG_store fun s hs ⟨hL, Γ, p, he, hh, hK, hw⟩ w v mem hw' hv hst => ?_
  have hlen := hval s hL v hv
  obtain ⟨hm, hdom⟩ := Helpers.stores_mod hst
  obtain ⟨hb1, hb2⟩ := haddr s hs hL w hw'
  have hcell : ∀ x : BitVec 64, (∃ j, j < (flattenHOL v).length ∧ x = w + BitVec.ofNat 64 (8 * j)) →
      Overlap b n x := by
    rintro x ⟨j, hj, rfl⟩
    have h8 := ha.hal _ (hs.2.1 ▸ hdom j hj)
    rw [hlen] at hj
    have e : (w + BitVec.ofNat 64 (8 * j)).toNat = w.toNat + 8 * j := by
      rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 8 * j) (by omega),
        Nat.mod_eq_of_lt (by omega)]
    refine ⟨h8, ?_, ?_⟩ <;> rw [e] at * <;> omega
  refine ⟨fun _ => ⟨hL, Γ, p, he, ?_, hK, hw⟩, fun r' h => absurd h (by simp)⟩
  refine heap_store_buf ha hh hm (fun y hy => ?_) (fun y hy => hfoot y (hcell y hy))
  rcases bufOK_later ha hh he hbuf y (hcell y hy) with h | ⟨h, -⟩
  · exact Or.inl h
  · exact Or.inr h

end InitECandidate.Solver.MemSafe.Fq

#print axioms InitECandidate.Solver.MemSafe.Fq.OL.setPtr
#print axioms InitECandidate.Solver.MemSafe.Fq.hoareG_st4K
#print axioms InitECandidate.Solver.MemSafe.Fq.hoareG_st4Out
