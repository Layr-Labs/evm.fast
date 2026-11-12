import InitECandidate.Solver.MemSafe.D0.Kq

/-!
# `KP` call steps whose continuation knows the callee's post at the *current* typing

`kp_stepQT`: as `kp_stepQ`, but the post `Q` is tied to the typing `Γ2` / pointers `p2` of the new
`KP` (a `KPd`), so facts in `Q` about `Γ'` (e.g. `Fits Γ' k w` of a returned pointer, `BufOK`) are
facts about the typing the chain lives in. `hoareG_kpDecCallT` is the `var rn = f(args); k` wrapper.
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

theorem kp_stepQT (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}
    (hfs : fs = (e, c) :: rest) {sg : Sig} (hsub : ∀ g, g ∈ sg.gw → g ∈ gw)
    (hgwE : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hgJ : JrOut sg.gw) {ks : List Nat}
    (hks : ∀ k ∈ ks, k ∈ gasKs)
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    {u : State σ} (hu : KP H gw Γ0 s0 p0 fs e mg u) {vs : List (ValueHOL 64)} {callee : Locs}
    {r : PanSemResultExact 64} {st : State σ}
    (hR : SumRelX guestC H sg Pre (fun vs s Γ a => ProtCell guestC Γ a ∧ PW vs s Γ a) Q vs
      (callEntryStateHOLFinite u callee) r st)
    (hfpk : st.globals.lookup gFrame = (callEntryStateHOLFinite u callee).globals.lookup gFrame)
    (hg : Good (some r)) (hna : ¬ Abortive r)
    (hA : ∀ Γ1 p1, RunT guestC H gw Γ0 s0 Γ1 u p0 p1 → ptrsOf u = some p1 → G guestC H Γ1 u →
      ChainL guestC tEV tCK Γ1 u fs → ChainE GP GR Γ1 u fs →
      ArgsOK guestC Γ1 p1 sg.params vs ∧ Pre vs (callEntryStateHOLFinite u callee) Γ1)
    (hpw : ∀ Γ1 a, G guestC H Γ1 u → ProtCell guestC Γ1 a →
      PW vs (callEntryStateHOLFinite u callee) Γ1 a →
      PWtopM tEV tCK ks vs (callEntryStateHOLFinite u callee) Γ1 a)
    (hgas : ks = [] ∨ ∀ Γ1 Γ2, Q vs (callEntryStateHOLFinite u callee) Γ1 r st Γ2 →
      (fld st.memory e 64).toNat + (fld st.memory e 192).toNat ≤
        (fld u.memory e 64).toNat + (fld u.memory e 192).toNat) :
    KPd H gw Γ0 s0 p0 fs e mg st (fun Γ2 p2 => ∃ Γ1,
      Q vs (callEntryStateHOLFinite u callee) Γ1 r st Γ2 ∧ ptrsOf st = some p2) := by
  have hH := hF.hooks
  have := kp_step_coreF hF hfs hgwE hgJ hks hu (vs := vs) (r := r) hfpk
    (Fx := fun Γ1 _ Γ2 p2 => Q vs (callEntryStateHOLFinite u callee) Γ1 r st Γ2 ∧
      ptrsOf st = some p2) ?_
  · obtain ⟨hJ, Γ2, p2, a, b, c', d, f, Γ1, p1, hq, hp⟩ := this
    exact ⟨hJ, Γ2, p2, a, b, c', d, f, Γ1, hq, hp⟩
  · intro Γ1 p1 hrun hch hE
    have hG1 := hrun.2.2.2.2.2.1
    have hp1 := hrun.2.1
    obtain ⟨hargs, hpre⟩ := hA Γ1 p1 hrun hp1 hG1 hch hE
    obtain ⟨Γ2, p2, hrun2, hc, hQ⟩ := run_callT hH hsub hrun hR hg hna hargs hpre
      (fun a ⟨hp, hw⟩ => by
        obtain ⟨q, hq, hord, hL, -⟩ := id hG1
        exact not_kCell_of_pwtopM hord hL (hpw Γ1 a hG1 hp hw))
    refine ⟨Γ2, p2, ⟨hQ, hc.2.1⟩, hrun2, hargs, PW, hc, fun a hp hw => hpw Γ1 a hG1 hp hw, ?_⟩
    rcases hgas with h | h
    · exact Or.inl h
    · exact Or.inr (h Γ1 Γ2 hQ)

/-- **`var rn = f(args); k` from a `KP` state**; `k` gets the post at the current typing. -/
theorem hoareG_kpDecCallT (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam}
    {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame}
    {mg : BitVec 64} (hfs : fs = (e, c) :: rest) {f : MlS} {args : List (ExpHOL 64)} {sg : Sig}
    {ks : List Nat} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hspec : SumSpecA σ X guestC H f sg Pre PW Q) (hkf : KeepsFp σ X f)
    (hsub : ∀ g, g ∈ sg.gw → g ∈ gw) (hgwE : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hgJ : JrOut sg.gw)
    (hks : ∀ k ∈ ks, k ∈ gasKs) {u0 : State σ} (hu : KP H gw Γ0 s0 p0 fs e mg u0)
    (hA : ∀ vs, evs u0 args = some vs → ∀ Γ1 p1, RunT guestC H gw Γ0 s0 Γ1 u0 p0 p1 →
      ptrsOf u0 = some p1 → G guestC H Γ1 u0 →
      ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs →
      ArgsOK guestC Γ1 p1 sg.params vs ∧ ∀ callee, Pre vs (callEntryStateHOLFinite u0 callee) Γ1)
    (hpw : ∀ vs callee Γ1 a, G guestC H Γ1 u0 → ProtCell guestC Γ1 a →
      PW vs (callEntryStateHOLFinite u0 callee) Γ1 a →
      PWtopM tEV tCK ks vs (callEntryStateHOLFinite u0 callee) Γ1 a)
    (hgas : ks = [] ∨ ∀ vs callee Γ1 r st Γ2, Q vs (callEntryStateHOLFinite u0 callee) Γ1 r st Γ2 →
      (fld st.memory e 64).toNat + (fld st.memory e 192).toNat ≤
        (fld u0.memory e 64).toNat + (fld u0.memory e 192).toNat)
    {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64}
    {Qk : Option (PanSemResultExact 64) → State σ → Prop}
    (hk : ∀ vs callee, evs u0 args = some vs → ∀ v (st : State σ),
      KPd H gw Γ0 s0 p0 fs e mg st (fun Γ2 p2 => ∃ Γ1,
        Q vs (callEntryStateHOLFinite u0 callee) Γ1 (.returned v) st Γ2 ∧ ptrsOf st = some p2) →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoareG σ X (fun t => t = setVarHOLFinite rn v { st with locals := u0.locals }) k
        (fun r t => Qk r { t with locals := t.locals.resVarEq (rn, u0.locals.lookup rn) }))
    (hab : ∀ ro (t : State σ), ro ≠ none →
      (∀ r, ro = some r → ¬ Abortive r → KP H gw Γ0 s0 p0 fs e mg t) → Qk ro t) :
    HoareG σ X (fun t => t = u0) (.decCall rn sh f args k) Qk := by
  have hH := hF.hooks
  have key : ∀ vs, evs u0 args = some vs → ∀ callee r st,
      SumRelX guestC H sg Pre (fun vs s Γ a => ProtCell guestC Γ a ∧ PW vs s Γ a) Q vs
        (callEntryStateHOLFinite u0 callee) r st →
      (Good (some r) → ¬ Abortive r →
        st.globals.lookup gFrame = (callEntryStateHOLFinite u0 callee).globals.lookup gFrame) →
      Good (some r) → ¬ Abortive r →
      KPd H gw Γ0 s0 p0 fs e mg st (fun Γ2 p2 => ∃ Γ1,
        Q vs (callEntryStateHOLFinite u0 callee) Γ1 r st Γ2 ∧ ptrsOf st = some p2) := by
    intro vs hvs callee r st hR hfk hg hna
    exact kp_stepQT hF hfs hsub hgwE hgJ hks hu hR (hfk hg hna) hg hna
      (fun Γ1 p1 hr hp hG hL hE =>
        ⟨(hA vs hvs Γ1 p1 hr hp hG hL hE).1, (hA vs hvs Γ1 p1 hr hp hG hL hE).2 callee⟩)
      (fun Γ1 a hG hp hw => hpw vs callee Γ1 a hG hp hw)
      (hgas.imp id fun h Γ1 Γ2 hq => h vs callee Γ1 r st Γ2 hq)
  refine hoareG_decCall (FunSpec.and (sumSpecA_relX hspec) hkf) ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨hR, hfk⟩ _ hsh
    subst s
    exact hk vs callee hvs v st (key vs hvs callee _ st hR hfk (by simp [Good]) (not_abortive_ret v)) hsh
  · intro s _ hs vs hvs callee r st ⟨hR, hfk⟩ _ habn
    subst s
    refine hab _ _ (by simp) fun r' hr' hna => ?_
    simp only [Option.some.injEq] at hr'
    cases hr'
    exact kp_locals hH (kp_of_kpd (key vs hvs callee r st hR hfk (good_of_abn habn) hna)) _

end

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.kp_stepQT
#print axioms InitECandidate.Solver.MemSafe.D0.hoareG_kpDecCallT
