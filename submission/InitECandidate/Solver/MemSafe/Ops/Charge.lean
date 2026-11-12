import InitECandidate.Solver.MemSafe.Ops.Env
import InitECandidate.Solver.MemSafe.Rec.UVal

/-!
# `charge_gas` with a dynamic positive amount; `decCall` with a value spec (sonnet-ops)

* `hl_chargeDyn`: `charge_gas(x)` where `x` evaluates to a word `a ≥ 1` (as a `Nat`) is a
  status-setting charge (`Φ` lowered by at least `1` on a return), the call's `callCl` status being
  `false` for a non-literal argument.
* `hl_decCallV`: `var rn = f(args); p` where `f` has an extra value spec; the continuation sees it.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

theorem hl_chargeDyn {H : Hooks σ} (hF : FrameCfg guestC H tEV tCK)
    (hcg : KeepsFp σ guestCtx (nm "charge_gas")) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame}
    (hfs : fs = (e, c) :: rest) {x : ExpHOL 64} {u0 : State σ}
    (hu : GK H gw Γ0 s0 p0 fs 0 u0) (hx : ∀ a, ev u0 x = some (.val (.word a)) → 1 ≤ a.toNat) :
    HoareG σ guestCtx (fun t => t = u0) (callD (nm "charge_gas") [x])
      (HL (GK H gw Γ0 s0 p0 fs) true u0.locals) := by
  have hK := kOK_gk (σ := σ) (H := H) hF.hooks (gw := gw) (Γ0 := Γ0) (s0 := s0) (p0 := p0) (fs := fs)
  obtain ⟨hub, hΦ0, hact0⟩ := hu
  refine hoareG_callD (R := fun vs s r t => (SumRelX guestC H sg1n (fun _ s Γ => ∃ e, EvRun tEV Γ s e)
        (fun vs s Γ a => ProtCell guestC Γ a ∧ PWrun tEV [8, 23] vs s Γ a) QCh vs s r t ∧
        (Good (some r) → ¬ Abortive r → t.globals.lookup gFrame = s.globals.lookup gFrame)) ∧
        RCh guestC H vs s r t)
    (FunSpec.and (FunSpec.and (sumSpecA_relX (sumSpecA_of_sumSpec (charge_evSpec guestCtx_code hF)))
      hcg) (charge_sumSpec guestCtx_code hF)) ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨⟨hR, hfk⟩, hΦR⟩ _
    subst hs
    have hg : Good (some (.returned v)) := by simp [Good]
    obtain ⟨hb, hΦ1, hact1, hret⟩ := gk_charge hF hfs ⟨hub, hΦ0, hact0⟩ hvs hR
      (hfk hg (not_abortive_ret v)) hΦR hg (not_abortive_ret v)
    obtain ⟨a, hva, hΦa⟩ := hret v rfl
    obtain ⟨v1, vs', rfl, hv1, h'⟩ := evs_cons_inv hvs
    rw [evs_zero h'] at hva
    simp only [List.cons.injEq, and_true] at hva
    subst hva
    have ha1 := hx _ hv1
    have hGK : GK H gw Γ0 s0 p0 fs 1 st := by
      refine ⟨hb, by omega, ?_⟩
      rcases hact0 with h | h
      · exact Or.inl (hact1.trans h)
      · exact Or.inr (by omega)
    refine ⟨⟨fun _ => ?_, fun r hr => by cases hr⟩, fun _ => rfl⟩
    exact (kOK_gk hF.hooks).congr _ st _ hGK rfl rfl rfl rfl
  · intro s _ hs vs hvs callee r st ⟨⟨hR, hfk⟩, hΦR⟩ _ habn
    subst hs
    have hg := good_of_abn habn
    refine ⟨⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩, fun h0 => by cases h0⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    obtain ⟨hb, hΦ1, hact1, -⟩ := gk_charge hF hfs ⟨hub, hΦ0, hact0⟩ hvs hR (hfk hg hna) hΦR hg hna
    have hGK : GK H gw Γ0 s0 p0 fs 0 st := by
      refine ⟨hb, by omega, ?_⟩
      rcases hact0 with h | h
      · exact Or.inl (hact1.trans h)
      · exact Or.inr (by omega)
    rw [rbd_abn habn]
    exact (kOK_gk hF.hooks).congr _ st _ hGK rfl rfl rfl rfl

/-- `var rn = f(args); p` where the callee also has the value spec `Rv`. -/
theorem hl_decCallV {E : GEnv} {K : Nat → State σ → Prop} {X : Ctx 64} (hK : KOK K)
    (hC : CallSem σ X E K) {b b1 b' : Bool} {rn f : MlS} {sh : ShapeHOL}
    {args : List (ExpHOL 64)} {p : ProgHOL 64}
    {Rv : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hv : FunSpec σ X f Rv) (h : callCl E b f args = some b1) {u0 : State σ} (hu : K (bd b) u0)
    (hcont : ∀ t : State σ, K (bd b1) t → t.locals = u0.locals → ∀ v : ValueHOL 64,
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      (∃ vs callee st, evs u0 args = some vs ∧
        Rv vs (callEntryStateHOLFinite u0 callee) (.returned v) st) →
      HoareG σ X (fun s => s = setVarHOLFinite rn v t) p (GQ K b')) :
    HoareG σ X (fun t => t = u0) (.decCall rn sh f args p) (GQ K b') := by
  obtain ⟨R, hf, hstep⟩ := hC b b1 f args h
  refine hoareG_decCall (FunSpec.and hf hv) ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨hR, hRv⟩ _ hsh
    subst hs
    have hk := hstep _ hu vs hvs callee _ st hR (by simp [Good]) (not_abortive_ret v)
    exact hoareG_conseq (hcont { st with locals := s.locals } (kok_loc hK hk _) rfl v hsh
        ⟨vs, callee, st, hvs, hRv⟩)
      (fun _ _ h => h) fun r t _ _ hq => gq_loc hK hq _
  · intro s _ hs vs hvs callee r st hRR _ habn
    subst hs
    obtain ⟨hR, -⟩ := hRR
    refine ⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    have := hstep _ hu vs hvs callee r st hR (good_of_abn habn) hna
    rw [cbd_abn habn] at this
    rw [rbd_abn habn]
    exact kok_loc hK this _

end InitECandidate.Solver.MemSafe.Frames
