import InitECandidate.Solver.MemSafe.Ptx.PtSt

/-!
# F3d: adopting fresh blocks of plain types (`tB24`, `tVAL`, `tMSGh`) and the record `tTE`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-- A type with no hook, no journal, no list and no record entry. -/
def Plain (t : Nat) : Prop :=
  hkOf t = .none ∧ t ≠ tJOURNAL ∧ t ∉ lstTys ∧ t ∉ recTys

theorem wf_plain (Γ : Gam) (s : State σ) (o : Obj) (h : Plain o.ty) :
    (guestHooksR (σ := σ)).wf Γ s o := by
  rw [guestHooksR, extR_wf]
  obtain ⟨h1, h2, h3, h4⟩ := h
  refine ⟨⟨⟨gwf_none h1, fun hj => absurd hj h2⟩, fun hl => absurd hl h3⟩, ?_⟩
  intro e he hty
  have := recTab_ty he
  rw [hty] at this
  exact absurd this h4

theorem plain_tB24 : Plain tB24 := by unfold Plain; decide
theorem plain_tVAL : Plain tVAL := by unfold Plain; decide
theorem plain_tMSGh : Plain tMSGh := by unfold Plain; decide

/-- A fresh, aligned block of a plain type joins the typing (its slots must fit). -/
theorem g_adopt_plain {Γ : Gam} {s : State σ} {p : Ptrs} (hG : G guestC (guestHooksR (σ := σ)) Γ s)
    (hp : ptrsOf s = some p) {x : Obj} (hty : Plain x.ty) (htag : guestC.tags.lookup x.ty = none)
    (hal : x.lo % 8 = 0) (hsz8 : x.size % 8 = 0) (hmin : (guestC.ty x.ty).minSz ≤ x.size)
    (hpos : 0 < x.size) (hlive : (guestC.ty x.ty).region.Live p x.lo x.size)
    (hdisj : ∀ a : BitVec 64, InO x a → ¬ InObj Γ a.toNat)
    (hfit : ∀ k, x.HasSlot k → Fits (Γ ++ [x]) ((guestC.ty x.ty).slot k) (rd s.memory (x.cell k))) :
    G guestC (guestHooksR (σ := σ)) (Γ ++ [x]) s :=
  G_addObjL guestHooksR_mono hG hal hsz8 hpos hmin (fun q hq => by rw [hp] at hq; cases hq; exact hlive)
    hdisj hfit htag (fun _ _ => wf_plain _ _ _ hty)


/-- **Adopting a fresh object keeps the run.** -/
theorem ptRun_adopt {D : BitVec 64 → Option (BitVec 64)} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Γ : Gam}
    {u : State σ} {p : Ptrs} (h : PtRun D Γ0 s0 p0 Γ u p) {x : Obj}
    (hG : G guestC (HR σ) (Γ ++ [x]) u) (hfr : ∀ a : BitVec 64, x.lo ≤ a.toNat → a.toNat < x.hi → Fresh p0 p a) :
    PtRun D Γ0 s0 p0 (Γ ++ [x]) u p := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13⟩ := h
  refine ⟨h1, h2, h3, ext_trans h4 (ext_append Γ x), ?_, hG, h7, h8, h9, h10, h11, h12, h13⟩
  intro o ho a ha1 ha2
  rcases List.mem_append.mp ho with ho | ho
  · exact h5 o ho a ha1 ha2
  · simp only [List.mem_singleton] at ho
    subst ho
    exact Or.inr (hfr a ha1 ha2)

/-- The facts survive adopting an object (a step with `Γ ++ [x]`). -/
theorem stepD_adopt {Γ : Gam} {p : Ptrs} {u : State σ} {x : Obj}
    (hG : G guestC (HR σ) Γ u) (hG' : G guestC (HR σ) (Γ ++ [x]) u) (hp : ptrsOf u = some p)
    (hfr : ∀ a : BitVec 64, x.lo ≤ a.toNat → a.toNat < x.hi → Fresh p p a) :
    StepD Γ p u (Γ ++ [x]) p u :=
  ⟨hp, hp, ⟨le_refl _, le_refl _, le_refl _⟩, ext_append Γ x, by
    intro o ho a ha1 ha2
    rcases List.mem_append.mp ho with ho | ho
    · exact Or.inl ⟨o, ho, rfl, rfl, ha1, ha2⟩
    · simp only [List.mem_singleton] at ho
      subst ho
      exact Or.inr (hfr a ha1 ha2), hG, hG'⟩

end InitECandidate.Solver.MemSafe.Ptx
