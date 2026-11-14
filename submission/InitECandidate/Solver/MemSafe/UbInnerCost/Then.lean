import InitECandidate.Solver.MemSafe.UbInnerCost.Inner
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Bal
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Stor
open InitECandidate.Solver.Band6
namespace InitECandidate.Solver.MemSafe.UbInnerCost
variable {σ : Type} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
theorem cdec_icap (hH : HooksLawful guestC (guestHooksR (σ := σ)))
    {E : Env} {F : Gam → Prop} {e : ExpHOL 64} {body : ProgHOL 64} {B : Nat}
    (hn : E (nm "icap") = none)
    (hfact : ∀ Γ s v, PI ubc Γ0 s0 p0 (LE E F) Γ s → ev s e = some v →
      ∃ C : BitVec 64, v = .val (.word C) ∧ C.toNat ≤ UbCost.countMax)
    (hb : Inv.CostP σ guestCtx (fun s => PE ubc Γ0 s0 p0 E F s ∧ CapInnerBound s) body B) :
    Inv.CostP σ guestCtx (PE ubc Γ0 s0 p0 E F) (.dec (nm "icap") .one e body) B := by
  refine Inv.costP_dec fun s hs hp v hv hsh => ?_
  obtain ⟨Γ,hIV,hLL,hFF⟩ := hp
  obtain ⟨C,rfl,hCM⟩ := hfact Γ s v ⟨hIV,hLL,hFF⟩ hv
  refine hb.pre fun t _ ht => ?_
  subst ht
  refine ⟨⟨Γ,⟨Struct.trk_congr hH hIV.1 rfl rfl rfl rfl,hIV.2⟩,?_,hFF⟩,C,?_,hCM⟩
  · intro y w hy
    have hne : nm "icap" ≠ y := fun e => by rw [← e,hn] at hy; cases hy
    exact (lk_set_ne _ _ hne).trans (hLL y w hy)
  · simp [setVarHOLFinite,FUPDATE]

theorem then2_cost
    (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR))
    (Ent : UbEnt Γ0 s0 p0) (hgs : HGS σ) {E : Env} {F : Gam → Prop} (hF : MonoF F)
    (hfr : ∀ x ∈ ubNames3, E x = none) {a2 b2 c2 IDX : BitVec 64}
    (hs2 : E (nm "s2") = some (wv [a2,b2,c2])) (hidx : E (nm "idx") = some (.val (.word IDX)))
    (hk : ∀ Γ, F Γ → (SrcKey Γ b2 20 tHTb20 ∧ SrcKey Γ b2 20 tHTd20) ∧ Fits Γ (.ptr tHTh32) c2) :
    Inv.CostP σ guestCtx (PE ubc Γ0 s0 p0 E F) ubThen2 innerLoopB := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold ubThen2
  refine cdecE hH (G := fun v => v = .val (.word c2)) ?_ ?_
  · intro Γ s' v hP hv
    have h1 : ev s' (.rfield 2 (lvv "s2")) = some (.val (.word c2)) :=
      ev_rfield_wv (ws := [a2,b2,c2]) (le_ev' hP.2 hs2) (i := 2) (by simp)
    rw [h1] at hv
    exact (Option.some.inj hv).symm
  intro v hv
  subst hv
  refine cdec_icap hH (by simp (config := {decide := true}) [Env.set]; exact hfr _ (by simp [ubNames3])) ?_ ?_
  · intro Γ s v hP hv
    have he : ev s (lvv "inner") = some (.val (.word c2)) :=
      le_ev' hP.2 (env_set_self _ _ _)
    exact UbCost.loaded_count_bound (Struct.trk_G hP.1.1) (by decide) ((hk Γ hP.2.2).2) he hv
  · refine Inv.costP_dec fun s hs ⟨hp,hcap⟩ v hv hsh => ?_
    rw [ev_cw] at hv
    have hev : v = .val (.word (BitVec.ofNat 64 0)) := (Option.some.inj hv).symm
    subst hev
    have hc := inner_loop_cost hGT Ent hgs hF (E := E) hfr hs2 hidx (CIN := c2)
      (fun Γ h => ⟨(hk Γ h).1,(hk Γ h).2⟩)
    refine hc.pre fun t _ ht => ?_
    subst ht
    obtain ⟨Γ,hIV,hLL,hFF⟩ := hp
    obtain ⟨C,hC,hCM⟩ := hcap
    refine ⟨⟨Γ,⟨Struct.trk_congr hH hIV.1 rfl rfl rfl rfl,hIV.2⟩,le_set ⟨hLL,hFF⟩ _ _,hFF⟩,C,?_,hCM⟩
    simpa (config := {decide := true}) [setVarHOLFinite,FUPDATE] using hC
#print axioms cdec_icap
#print axioms then2_cost
end InitECandidate.Solver.MemSafe.UbInnerCost
