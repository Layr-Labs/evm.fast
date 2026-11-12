import InitECandidate.Solver.Band6.Loop
import InitECandidate.Solver.MemSafe.Frames.FinCost

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.warning false

/-!
# The cost walk of `update_builder_from_tx`: combinators and the account loop (Band6)

The walk mirrors the memory-safety walk (`MemSafe/Bal/Ub*.lean`): every node is a `CostP` under the same
tracked state `PE cs Γ0 s0 p0 E F`, so that the loop invariants and the memory facts of the memory-safety
lemmas (`HoareG`) are reused through `hoare_of_hoareG`.
-/

namespace InitECandidate.Solver.Band6
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Bal InitECandidate.Solver.Band3
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Stor

variable {σ : Type}

section c1
variable {cs : List Cap} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

theorem pe_clk (hH : HooksLawful guestC (guestHooksR (σ := σ))) {E : Env} {F : Gam → Prop} {s : State σ}
    (h : PE cs Γ0 s0 p0 E F s) : PE cs Γ0 s0 p0 E F (decClockHOLFinite s) := by
  obtain ⟨Γ, hIV, hLL, hFF⟩ := h
  exact ⟨Γ, ⟨Struct.trk_congr hH hIV.1 rfl rfl rfl rfl, hIV.2⟩, hLL, hFF⟩

/-- A `HoareG` body keeps the tracked state on normal completion. -/
theorem inv_of_hoareG {body : ProgHOL 64} {P : State σ → Prop} {L : Gam → State σ → Prop}
    (h : HoareG σ guestCtx P body (RR cs Γ0 s0 p0 L)) :
    Hoare σ guestCtx P body (fun r t => r = none → ∃ Γ, PI cs Γ0 s0 p0 L Γ t) := by
  intro s hs hp ht hr
  have := hoare_of_hoareG h s hs hp ht
  rw [hr] at this
  rcases this with ⟨-, Γ, hpi⟩ | ⟨hne, -⟩
  · exact ⟨Γ, hpi⟩
  · exact absurd rfl hne


/-- `var n = e; body`. -/
theorem cdecE (hH : HooksLawful guestC (guestHooksR (σ := σ))) {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64}
    {body : ProgHOL 64} {E : Env} {F : Gam → Prop} (G : ValueHOL 64 → Prop) {B : Nat}
    (hfact : ∀ Γ s v, PI cs Γ0 s0 p0 (LE E F) Γ s → ev s e = some v → G v)
    (hbody : ∀ v, G v → Inv.CostP σ guestCtx (PE cs Γ0 s0 p0 (E.set n v) F) body B) :
    Inv.CostP σ guestCtx (PE cs Γ0 s0 p0 E F) (.dec n sh e body) B := by
  refine Inv.costP_dec fun s hs hp v hv hsh => ?_
  obtain ⟨Γ, hIV, hLL, hFF⟩ := hp
  refine Inv.CostP.pre (hbody v (hfact Γ s v ⟨hIV, hLL, hFF⟩ hv)) (fun t _ ht => ?_)
  subst ht
  exact ⟨Γ, ⟨Struct.trk_congr hH hIV.1 rfl rfl rfl rfl, hIV.2⟩, le_set ⟨hLL, hFF⟩ n v, hFF⟩

/-- `var n = e; body` with the value fact `G` that mentions the typing. -/
theorem cdecEF (hH : HooksLawful guestC (guestHooksR (σ := σ))) {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64}
    {body : ProgHOL 64} {E : Env} {F : Gam → Prop} (G : ValueHOL 64 → Gam → Prop) {B : Nat}
    (hfact : ∀ Γ s v, PI cs Γ0 s0 p0 (LE E F) Γ s → ev s e = some v → G v Γ)
    (hbody : ∀ v, Inv.CostP σ guestCtx (PE cs Γ0 s0 p0 (E.set n v) (fun Γ => F Γ ∧ G v Γ)) body B) :
    Inv.CostP σ guestCtx (PE cs Γ0 s0 p0 E F) (.dec n sh e body) B := by
  refine Inv.costP_dec fun s hs hp v hv hsh => ?_
  obtain ⟨Γ, hIV, hLL, hFF⟩ := hp
  refine Inv.CostP.pre (hbody v) (fun t _ ht => ?_)
  subst ht
  exact ⟨Γ, ⟨Struct.trk_congr hH hIV.1 rfl rfl rfl rfl, hIV.2⟩, le_set ⟨hLL, hFF⟩ n v,
    hFF, hfact Γ s v ⟨hIV, hLL, hFF⟩ hv⟩

/-- `var n = e; body` with an untracked value. -/
theorem cdecU (hH : HooksLawful guestC (guestHooksR (σ := σ))) {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64}
    {body : ProgHOL 64} {E : Env} {F : Gam → Prop} {B : Nat} (hn : E n = none)
    (hbody : Inv.CostP σ guestCtx (PE cs Γ0 s0 p0 E F) body B) :
    Inv.CostP σ guestCtx (PE cs Γ0 s0 p0 E F) (.dec n sh e body) B := by
  refine Inv.costP_dec fun s hs hp v hv hsh => ?_
  obtain ⟨Γ, hIV, hLL, hFF⟩ := hp
  refine Inv.CostP.pre hbody (fun t _ ht => ?_)
  subst ht
  refine ⟨Γ, ⟨Struct.trk_congr hH hIV.1 rfl rfl rfl rfl, hIV.2⟩, fun y w hy => ?_, hFF⟩
  have hne : n ≠ y := fun e => by rw [← e, hn] at hy; cases hy
  exact (lk_set_ne _ _ hne).trans (hLL y w hy)

end c1

/-! ## Loop 1 -/

def bL1 : Nat := 1138584800289170520087426632502556961578547

set_option cbv.maxSteps 4000000000 in
theorem cost_l1 : Cost σ guestCtx ubL1Body bL1 := cost_guest_of_costA (by decide_cbv)

section c2
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- The account loop. -/
theorem c_loop1 (Ent : UbEnt Γ0 s0 p0) (IDX AW CW : BitVec 64) :
    Inv.CostP σ guestCtx (PE ubc Γ0 s0 p0 (EL IDX AW CW (BitVec.ofNat 64 0)) (FL AW)) ubLoop1
      ((2 ^ 64 + 1) * (bL1 + 1)) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold ubLoop1
  refine Inv.CostP.pre (costP_while_inc_less (I := fun s => ∃ IW, PE ubc Γ0 s0 p0 (EL IDX AW CW IW) (FL AW) s)
    (i := nm "i") (E := lvv "cap") (body := ubL1Body)
    (fun s ⟨IW, h⟩ => ⟨IW, pe_clk hH h⟩) (Inv.costP_of_cost cost_l1) ?_
    (noContB_sound _ (by decide_cbv)) (stepsB_sound (nm "i") true _ (by decide_cbv))) ?_
  · intro s hs ⟨⟨IW, hpe⟩, hc⟩ ht hr
    exact ⟨_, inv_of_hoareG (ub_l1_body Ent IDX AW CW IW) s hs hpe ht hr⟩
  · intro s _ h
    exact ⟨_, h⟩

end c2

end InitECandidate.Solver.Band6

#print axioms InitECandidate.Solver.Band6.c_loop1
