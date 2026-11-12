import InitECandidate.Solver.MemSafe.Ptx.PtT5

/-!
# F3g: stores into block cells in the tail (`hn_stBlkT`, `hn_stBlkX`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem block_heap {t : Nat} (h : t ∈ blockTys) : (guestC.ty t).region = .heap := by
  unfold blockTys at h
  simp only [List.mem_cons, List.mem_nil_iff, or_false] at h
  rcases h with rfl | rfl | rfl <;> decide

section st
variable {A : TlA σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {u : State σ} {Γ : Gam} {p : Ptrs}

/-- **A store into a `prot` cell of a block object** outside the kept cells keeps the run. -/
theorem tl_store_blk (h : TlS A ref Z O u Γ p) {M : Obj} (hM : M ∈ Γ) (hMt : M.ty ∈ blockTys) {k : Nat}
    (hk : M.HasSlot k) (hp : (guestC.ty M.ty).slot k = .prot) (hnz : ¬ Z (M.cell k)) (x : BitVec 64) :
    TlS A ref Z O { u with memory := Frames.upd u.memory (M.cell k) x } Γ p := by
  have hYn := fun a (ha : A.Y a) => tl_y_ne h (cell_in (tl_ord h) (tl_layout h) hM hk) ha
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14⟩ := h
  refine ⟨(ptrsOf_congr rfl).trans h1, h2, h3, h4, D0.G_st_block h5 hM hMt hk hp x, h6, jrNZ_congr (s := u) rfl h7,
    h8, h9, h10, fun a ha => ?_, h12, h13, fun a ha => ?_⟩
  have hne : a ≠ M.cell k := fun e => hnz (e ▸ ha)
  show rd (Frames.upd u.memory (M.cell k) x) a = ref a
  rw [rd_upd_ne _ _ hne]
  exact h11 a ha
  · show rd (Frames.upd u.memory (M.cell k) x) a = _
    rw [rd_upd_ne _ _ (hYn a ha)]
    exact h14 a ha

/-- Extending the kept cells by a written cell. -/
theorem tl_extend (h : TlS A ref Z O u Γ p) {c x : BitVec 64}
    (hc : ∃ o ∈ Γ, (guestC.ty o.ty).region = .heap ∧ guestSt o.ty = false ∧ ∃ k, o.HasSlot k ∧
      (guestC.ty o.ty).slot k = .prot ∧ c = o.cell k)
    (hv : rd u.memory c = x) :
    TlS A (fun a => if a = c then x else ref a) (fun a => Z a ∨ a = c) O u Γ p := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14⟩ := h
  refine ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, fun a ha => ?_, fun a ha => ?_, h12, h13, h14⟩
  · rcases ha with ha | rfl
    · exact h10 a ha
    · exact hc
  · rcases ha with ha | rfl
    · by_cases hac : a = c
      · subst hac; simp [hv]
      · simp [hac]; exact h11 a ha
    · simp [hv]

/-- `st a, e` into a block cell `c` written by the tail (value arbitrary, `c` not in the kept cells). -/
theorem hn_stBlkT {K : TlCtx σ} {En : Env} {Z : BitVec 64 → Prop} {O : List Obj} {a e : ExpHOL 64} {c : BitVec 64}
    (hP : PtPreB K.E) (hc : K.Wt c) (hnz : ¬ Z c)
    (ha : ∀ (s : State σ) (Γ : Gam) (p : Ptrs), TlS K.A ref Z O s Γ p → PAg (TL K.A ref Z O) En s →
      ∀ w, ev s a = some (.val (.word w)) → w = c)
    (he : ∀ (s : State σ), PAg (TL K.A ref Z O) En s → ∀ v, ev s e = some v → ∃ x, v = .val (.word x)) :
    HN (PAg (TL K.A ref Z O) En) (.store a e) (PAg (TL K.A ref Z O) En) := by
  refine hoare_store fun s hs hpa w v mem hw hv hmem => ?_
  obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
  have hpa : PAg (TL K.A ref Z O) En s := ⟨⟨Γ, p, hr⟩, hlk⟩
  obtain rfl := ha s Γ p hr hpa w hw
  obtain ⟨x, rfl⟩ := he s hpa v hv
  obtain ⟨M, hM, hMt, k, hk, hp, hcM⟩ := wset_cellB hP hr.ext (K.wt_wset hc)
  subst hcM
  simp only [flattenHOL] at hmem
  obtain ⟨hd, rfl⟩ := stores_one hmem
  exact ⟨rfl, ⟨Γ, p, tl_store_blk hr hM hMt hk hp hnz x⟩, hlk⟩

/-- `st a, e` into a block cell `c` written by the tail with the value `x`; afterwards `c` is kept with value `x`. -/
theorem hn_stBlkX {K : TlCtx σ} {En : Env} {Z : BitVec 64 → Prop} {O : List Obj} {a e : ExpHOL 64} {c x : BitVec 64}
    (hP : PtPreB K.E) (hc : K.Wt c) (hnz : ¬ Z c)
    (ha : ∀ (s : State σ) (Γ : Gam) (p : Ptrs), TlS K.A ref Z O s Γ p → PAg (TL K.A ref Z O) En s →
      ∀ w, ev s a = some (.val (.word w)) → w = c)
    (he : ∀ (s : State σ), PAg (TL K.A ref Z O) En s → ∀ v, ev s e = some v → v = .val (.word x)) :
    HN (PAg (TL K.A ref Z O) En) (.store a e)
      (PAg (TL K.A (fun a => if a = c then x else ref a) (fun a => Z a ∨ a = c) O) En) := by
  refine hoare_store fun s hs hpa w v mem hw hv hmem => ?_
  obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
  have hpa : PAg (TL K.A ref Z O) En s := ⟨⟨Γ, p, hr⟩, hlk⟩
  obtain rfl := ha s Γ p hr hpa w hw
  obtain rfl := he s hpa v hv
  obtain ⟨M, hM, hMt, k, hk, hp, hcM⟩ := wset_cellB hP hr.ext (K.wt_wset hc)
  subst hcM
  simp only [flattenHOL] at hmem
  obtain ⟨hd, rfl⟩ := stores_one hmem
  have h1 := tl_store_blk hr hM hMt hk hp hnz x
  have h2 := tl_extend h1 (c := M.cell k) (x := x) ⟨M, hM, block_heap hMt, guestSt_block hMt, k, hk, hp, rfl⟩ (rd_upd_self _ _ _)
  exact ⟨rfl, ⟨Γ, p, h2⟩, hlk⟩

end st

end InitECandidate.Solver.MemSafe.Ptx
