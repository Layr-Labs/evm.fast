import InitECandidate.Solver.Improvements.BuilderTableLocalFacts

/-! Builder declaration cost rules which retain an explicitly proved local
count bound while reusing the accepted tracked-environment invariants. -/
set_option autoImplicit false
namespace BuilderCapDeclarations
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Bal
open BoundedInitializedLoop

variable {σ : Type} {cs : List Cap} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

theorem cdec_cap
    (hH : HooksLawful guestC (guestHooksR (σ := σ)))
    {n : MlS} {e : ExpHOL 64} {body : ProgHOL 64} {E : Env} {F : Gam → Prop}
    {B C : Nat} (hn : E n = none)
    (hload : ∀ Γ s v, PI cs Γ0 s0 p0 (LE E F) Γ s → ev s e = some v →
      ∃ cw : BitVec 64, v = .val (.word cw) ∧ cw.toNat ≤ C)
    (hbody : Inv.CostP σ guestCtx
      (fun s => PE cs Γ0 s0 p0 E F s ∧ LocalCap n C s) body B) :
    Inv.CostP σ guestCtx (PE cs Γ0 s0 p0 E F) (.dec n .one e body) B := by
  refine Inv.costP_dec fun s hs hp v hv hsh => ?_
  obtain ⟨Γ, hIV, hLL, hFF⟩ := hp
  obtain ⟨cw, rfl, hcw⟩ := hload Γ s v ⟨hIV, hLL, hFF⟩ hv
  refine hbody.pre fun t _ ht => ?_
  subst t
  refine ⟨⟨Γ, ⟨Struct.trk_congr hH hIV.1 rfl rfl rfl rfl, hIV.2⟩, ?_, hFF⟩,
    cw, lk_set_self _ _ _, hcw⟩
  intro y w hy
  have hne : n ≠ y := fun he => by rw [← he, hn] at hy; cases hy
  exact (lk_set_ne _ _ hne).trans (hLL y w hy)

theorem cdecE_keep_cap
    (hH : HooksLawful guestC (guestHooksR (σ := σ)))
    {n cap : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    {E : Env} {F : Gam → Prop} {B C : Nat} (G : ValueHOL 64 → Prop)
    (hne : n ≠ cap)
    (hfact : ∀ Γ s v, PI cs Γ0 s0 p0 (LE E F) Γ s → ev s e = some v → G v)
    (hbody : ∀ v, G v → Inv.CostP σ guestCtx
      (fun s => PE cs Γ0 s0 p0 (E.set n v) F s ∧ LocalCap cap C s) body B) :
    Inv.CostP σ guestCtx
      (fun s => PE cs Γ0 s0 p0 E F s ∧ LocalCap cap C s) (.dec n sh e body) B := by
  refine Inv.costP_dec fun s hs hp v hv hsh => ?_
  obtain ⟨⟨Γ, hIV, hLL, hFF⟩, cw, hc, hcw⟩ := hp
  refine (hbody v (hfact Γ s v ⟨hIV, hLL, hFF⟩ hv)).pre fun t _ ht => ?_
  subst t
  refine ⟨⟨Γ, ⟨Struct.trk_congr hH hIV.1 rfl rfl rfl rfl, hIV.2⟩,
    le_set ⟨hLL, hFF⟩ n v, hFF⟩, cw, ?_, hcw⟩
  exact (lk_set_ne _ _ hne).trans hc

#print axioms cdec_cap
#print axioms cdecE_keep_cap
end BuilderCapDeclarations
