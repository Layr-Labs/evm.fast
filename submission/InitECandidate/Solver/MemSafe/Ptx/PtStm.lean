import InitECandidate.Solver.MemSafe.Ptx.PtSfx

/-!
# F3d: statement combinators of the walk (`dec`, `assign`, guards, `state_fresh_tx`, allocations)
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
open InitECandidate.Solver.MemSafe.AllocImpl (lookup_of_gword)

variable {σ : Type}

section comb
variable {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}

/-- `var n = e; body` with `n` untracked. -/
theorem hdecF {n : MlS} (hQT : ResIns n QT) {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64} (hn : En n = none)
    (hk : Hoare σ guestCtx (PA E En S) body QT) : Hoare σ guestCtx (PA E En S) (.dec n sh e body) QT :=
  hdecK hQT fun s hs hP v hv hsh => hoare_pre hk fun t _ ht => by subst ht; exact pa_set_other hP hn v

/-- `var n = e; body` where `e` evaluates to the word `w`. -/
theorem hdecT {n : MlS} (hQT : ResIns n QT) {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64} {w : BitVec 64}
    (he : ∀ s : State σ, PA E En S s → ∀ v, ev s e = some v → v = .val (.word w))
    (hk : Hoare σ guestCtx (PA E (En.set n (.val (.word w))) S) body QT) :
    Hoare σ guestCtx (PA E En S) (.dec n sh e body) QT :=
  hdecK hQT fun s hs hP v hv hsh => by
    have := he s hP v hv
    subst this
    exact hoare_pre hk fun t _ ht => by subst ht; exact pa_set hP n _

/-- `n = e` for an untracked local. -/
theorem hassignF {n : MlS} {e : ExpHOL 64} (hn : En n = none) :
    HN (PA E En S) (.assign .local n e) (PA E En S) :=
  hoare_assign fun s hs hP v hv _ => ⟨rfl, pa_set_other hP hn v⟩

/-- `n = e` for a tracked local that gets the word `w'`. -/
theorem hassignT {n : MlS} {e : ExpHOL 64} {w' : BitVec 64} (hn : ∃ v0, En n = some v0)
    (he : ∀ s : State σ, PA E En S s → ∀ v, ev s e = some v → v = .val (.word w')) :
    HN (PA E En S) (.assign .local n e) (PA E (En.set n (.val (.word w'))) S) :=
  hoare_assign fun s hs hP v hv _ => by
    have := he s hP v hv
    subst this
    exact ⟨rfl, pa_set hP n _⟩

/-- A guard `if c { throw }`: the continuation sees the condition false. -/
theorem hguard {c : ExpHOL 64} {x : MlS} {ex : ExpHOL 64} :
    HN (PA E En S) (.ite c (.raise x ex) .skip) (fun t => PA E En S t ∧ ev t c = some (.val (.word 0))) :=
  hn_ite hoare_raise (hoare_skip fun s _ h => ⟨rfl, h.1, h.2⟩)

end comb


/-- **A store into a `prot` cell of a block object** keeps the run and records the cell as written. -/
theorem ptRun_store_blk {D : BitVec 64 → Option (BitVec 64)} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Γ : Gam}
    {u : State σ} {p : Ptrs} (h : PtRun D Γ0 s0 p0 Γ u p) {M : Obj} (hM : M ∈ Γ) (hMt : M.ty ∈ blockTys)
    {k : Nat} (hk : M.HasSlot k) (hp : (guestC.ty M.ty).slot k = .prot) (x : BitVec 64) :
    PtRun (fun a => if a = M.cell k then some x else D a) Γ0 s0 p0 Γ
      { u with memory := Frames.upd u.memory (M.cell k) x } p := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13⟩ := h
  refine ⟨h1, (ptrsOf_congr rfl).trans h2, h3, h4, h5, D0.G_st_block h6 hM hMt hk hp x, h7, ?_, ?_, h10, h11, h12, h13⟩
  · intro a ha
    by_cases hac : a = M.cell k
    · subst hac
      refine ⟨fun hd => by simp at hd, fun v hv => ?_⟩
      simp only [if_true, Option.some.injEq] at hv
      subst hv
      exact rd_upd_self _ _ _
    · simp only [hac, if_false]
      refine ⟨fun hd => ?_, fun v hv => ?_⟩
      · show Frames.upd u.memory _ x a = _
        rw [Frames.upd_ne _ _ hac]; exact (h8 a ha).1 hd
      · show rd (Frames.upd u.memory _ x) a = _
        rw [rd_upd_ne _ _ hac]; exact (h8 a ha).2 v hv
  · exact jrNZ_congr (s := u) rfl h9

/-- **`st a, e` into a block cell.** -/
theorem hn_stBlk {E : PtE σ} {En : Env} {S : FS} {a e : ExpHOL 64}
    (hcell : ∀ s : State σ, PA E En S s → ∀ D Γ p, PtRun D E.Γ0 E.s0 E.p0 Γ s p → (∀ a, D a ≠ none → E.WSet a) → HoldsAll E.p0 Γ p s S →
      ∀ (w : BitVec 64) (v : ValueHOL 64), ev s a = some (.val (.word w)) → ev s e = some v →
      ∃ (x : BitVec 64) (M : Obj) (k : Nat), v = .val (.word x) ∧ M ∈ Γ ∧ M.ty ∈ blockTys ∧ M.HasSlot k ∧
        (guestC.ty M.ty).slot k = .prot ∧ w = M.cell k ∧ E.WSet w ∧ (∀ f, S f → ∀ x, f.reads x → x ≠ w)) :
    HN (PA E En S) (.store a e) (PA E En S) := by
  refine hoare_store fun s hs hpa w v mem hw hv hmem => ?_
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩ := hpa
  have hpa : PA E En S s := ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩
  obtain ⟨x, M, k, rfl, hM, hMt, hk, hp, rfl, hW, hrn⟩ := hcell s hpa D Γ p hr hD hL w v hw hv
  simp only [flattenHOL] at hmem
  obtain ⟨hd, rfl⟩ := stores_one hmem
  have hr' := ptRun_store_blk hr hM hMt hk hp x
  refine ⟨rfl, ⟨_, Γ, p, hr', ?_, ?_⟩, hlk⟩
  · intro a' ha'
    by_cases hac : a' = M.cell k
    · subst hac; exact hW
    · simp only [hac, if_false] at ha'; exact hD a' ha'
  · have hstep : StepD Γ p s Γ p { s with memory := Frames.upd s.memory (M.cell k) x } :=
      ⟨ptRun_ptrs hr, ptRun_ptrs hr', ⟨le_refl _, le_refl _, le_refl _⟩, fun o ho => ⟨o, ho, rfl, rfl, le_refl _⟩,
        fun o ho a h1 h2 => Or.inl ⟨o, ho, rfl, rfl, h1, h2⟩, ptRun_G hr, ptRun_G hr'⟩
    refine holds_step hstep (ptRun_ord0 hr) ?_ (fun _ _ _ => rfl) hL
    intro f hf a' ha'
    have hne : a' ≠ M.cell k := hrn f hf a' ha'
    show Frames.upd s.memory _ x a' = _
    exact Frames.upd_ne _ _ hne


theorem guestSt_block {t : Nat} (h : t ∈ blockTys) : guestSt t = false := by
  unfold blockTys at h
  simp only [List.mem_cons, List.mem_nil_iff, or_false] at h
  rcases h with rfl | rfl | rfl <;> decide

/-- **`st a, e` into a block cell, recording the written value** as a `cellv` fact. -/
theorem hn_stBlkV {E : PtE σ} {En : Env} {S : FS} {a e : ExpHOL 64} {c x : BitVec 64}
    (hcell : ∀ s : State σ, PA E En S s → ∀ D Γ p, PtRun D E.Γ0 E.s0 E.p0 Γ s p → (∀ a, D a ≠ none → E.WSet a) → HoldsAll E.p0 Γ p s S →
      ∀ (w : BitVec 64) (v : ValueHOL 64), ev s a = some (.val (.word w)) → ev s e = some v →
      v = .val (.word x) ∧ w = c ∧ ∃ (M : Obj) (k : Nat), M ∈ Γ ∧ M.ty ∈ blockTys ∧ M.HasSlot k ∧
        (guestC.ty M.ty).slot k = .prot ∧ c = M.cell k ∧ E.WSet c ∧ (∀ f, S f → ∀ x, f.reads x → x ≠ c)) :
    HN (PA E En S) (.store a e) (PA E En (fun f => S f ∨ f = Fct.cellv c x)) := by
  refine hoare_store fun s hs hpa w v mem hw hv hmem => ?_
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩ := hpa
  have hpa : PA E En S s := ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩
  obtain ⟨rfl, rfl, M, k, hM, hMt, hk, hp, rfl, hW, hrn⟩ := hcell s hpa D Γ p hr hD hL w v hw hv
  simp only [flattenHOL] at hmem
  obtain ⟨hd, rfl⟩ := stores_one hmem
  have hr' := ptRun_store_blk hr hM hMt hk hp x
  refine ⟨rfl, ⟨_, Γ, p, hr', ?_, ?_⟩, hlk⟩
  · intro a' ha'
    by_cases hac : a' = M.cell k
    · subst hac; exact hW
    · simp only [hac, if_false] at ha'; exact hD a' ha'
  · have hstep : StepD Γ p s Γ p { s with memory := Frames.upd s.memory (M.cell k) x } :=
      ⟨ptRun_ptrs hr, ptRun_ptrs hr', ⟨le_refl _, le_refl _, le_refl _⟩, fun o ho => ⟨o, ho, rfl, rfl, le_refl _⟩,
        fun o ho a h1 h2 => Or.inl ⟨o, ho, rfl, rfl, h1, h2⟩, ptRun_G hr, ptRun_G hr'⟩
    have h1 : HoldsAll E.p0 Γ p { s with memory := Frames.upd s.memory (M.cell k) x } S := by
      refine holds_step hstep (ptRun_ord0 hr) ?_ (fun _ _ _ => rfl) hL
      intro f hf a' ha'
      have hne : a' ≠ M.cell k := hrn f hf a' ha'
      show Frames.upd s.memory _ x a' = _
      exact Frames.upd_ne _ _ hne
    intro f hf
    rcases hf with hf | rfl
    · exact h1 f hf
    · exact ⟨rd_upd_self _ _ _, M, hM, guestSt_block hMt, k, hk, hp, rfl⟩

end InitECandidate.Solver.MemSafe.Ptx
