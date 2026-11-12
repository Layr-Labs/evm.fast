import InitECandidate.Solver.MemSafe.D0.Kq3
import InitECandidate.Solver.MemSafe.D0.Pd7

/-!
# A call whose summary keeps the chain itself (`SumSpecT` with a same-chain post)

`kp_callT`: from a `KP` state and a callee relation `SumRelX … Pre … Q` whose post `Q` gives the
chain `fs` again, `Φ` not raised, `JrNZ` and `EV_MSG`, the end state is `KP` (the run is `run_callT`'s).
`hoareG_kpCallT`: `f(args);` with the post `PSn`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type} {X : Ctx 64}

section
variable {H : Hooks σ}

theorem kp_callT (hH : HooksLawful guestC H) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e mg : BitVec 64} {sg : Sig} (hsub : ∀ g, g ∈ sg.gw → g ∈ gw)
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    {u : State σ} (hu : KP H gw Γ0 s0 p0 fs e mg u) {vs : List (ValueHOL 64)} {callee : Locs}
    {r : PanSemResultExact 64} {st : State σ}
    (hR : SumRelX guestC H sg Pre (fun _ _ Γ a => ¬ KCell guestC Γ a) Q vs (callEntryStateHOLFinite u callee) r st)
    (hg : Good (some r)) (hna : ¬ Abortive r)
    (hA : ∀ Γ1 p1, RunT guestC H gw Γ0 s0 Γ1 u p0 p1 → ptrsOf u = some p1 → G guestC H Γ1 u →
      ChainL guestC tEV tCK Γ1 u fs → ChainE GP GR Γ1 u fs →
      ArgsOK guestC Γ1 p1 sg.params vs ∧ Pre vs (callEntryStateHOLFinite u callee) Γ1)
    (hQ : ∀ Γ1 Γ2, Q vs (callEntryStateHOLFinite u callee) Γ1 r st Γ2 →
      ChainL guestC tEV tCK Γ2 st fs ∧ ChainE GP GR Γ2 st fs ∧ Phi st ≤ Phi u ∧ JrNZ st ∧
        fld st.memory e 112 = mg) :
    KP H gw Γ0 s0 p0 fs e mg st := by
  obtain ⟨hJ, Γ1, p1, hrun, hch, hE, hΦ, h112⟩ := hu
  have hG1 := hrun.2.2.2.2.2.1
  obtain ⟨hargs, hpre⟩ := hA Γ1 p1 hrun hrun.2.1 hG1 hch hE
  obtain ⟨Γ2, p2, hrun2, hc, hQ'⟩ := run_callT hH hsub hrun hR hg hna hargs hpre (fun a h => h)
  obtain ⟨c1, c2, c3, c4, c5⟩ := hQ Γ1 Γ2 hQ'
  exact ⟨c4, Γ2, p2, hrun2, c1, c2, le_trans c3 hΦ, c5⟩

end

section kpc
local notation "HJ" => (Hooks.guestHooksR (σ := σ))
variable {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e mg : BitVec 64}

/-- **`f(args);` for a same-chain summary.** -/
theorem hoareG_kpCallT {f : MlS} {args : List (ExpHOL 64)} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hspec : SumSpecT σ guestCtx guestC HJ f sg Pre Q) (hsub : ∀ g, g ∈ sg.gw → g ∈ gw)
    {u0 : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u0)
    (hA : ∀ vs, evs u0 args = some vs → ∀ Γ1 p1, RunT guestC HJ gw Γ0 s0 Γ1 u0 p0 p1 →
      ptrsOf u0 = some p1 → G guestC HJ Γ1 u0 → ChainL guestC tEV tCK Γ1 u0 fs →
      ChainE GP GR Γ1 u0 fs →
      ArgsOK guestC Γ1 p1 sg.params vs ∧ ∀ callee, Pre vs (callEntryStateHOLFinite u0 callee) Γ1)
    (hQ : ∀ vs callee Γ1 r st Γ2, Q vs (callEntryStateHOLFinite u0 callee) Γ1 r st Γ2 →
      ¬ Abortive r →
      ChainL guestC tEV tCK Γ2 st fs ∧ ChainE GP GR Γ2 st fs ∧ Phi st ≤ Phi u0 ∧ JrNZ st ∧
        fld st.memory e 112 = mg) :
    HoareG σ guestCtx (fun t => t = u0) (callD f args) (PSn (KP HJ gw Γ0 s0 p0 fs e mg) u0.locals) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  have key : ∀ vs, evs u0 args = some vs → ∀ callee r st,
      SumRelX guestC HJ sg Pre (fun _ _ Γ a => ¬ KCell guestC Γ a) Q vs (callEntryStateHOLFinite u0 callee) r st →
      Good (some r) → ¬ Abortive r → KP HJ gw Γ0 s0 p0 fs e mg st := by
    intro vs hvs callee r st hR hg hna
    exact kp_callT hH hsub hu hR hg hna
      (fun Γ1 p1 hr hp hG hL hE =>
        ⟨(hA vs hvs Γ1 p1 hr hp hG hL hE).1, (hA vs hvs Γ1 p1 hr hp hG hL hE).2 callee⟩)
      (fun Γ1 Γ2 hq => hQ vs callee Γ1 r st Γ2 hq hna)
  refine hoareG_callD hspec ?_ ?_
  · intro s _ hs vs hvs callee v st hR _
    subst s
    exact Or.inl ⟨rfl, kp_locals hH (key vs hvs callee _ st hR (by simp [Good]) (not_abortive_ret v)) _, rfl⟩
  · intro s _ hs vs hvs callee r st hR _ habn
    subst s
    exact Or.inr ⟨r, rfl, habn, fun hna =>
      kp_locals hH (key vs hvs callee r st hR (good_of_abn habn) hna) _⟩

end kpc

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.hoareG_kpCallT
