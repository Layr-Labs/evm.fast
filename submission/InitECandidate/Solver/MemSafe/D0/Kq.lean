import InitECandidate.Solver.MemSafe.D0.Callees

/-!
# `KP` call steps with the callee's post, and from a bare `SumCore`

* `kp_step_core`: the part of `Frames.kp_step` after the call (`run_callT`): needs only the run to
  the end state, the callee's `SumCore` (footprint inside `PWtopM ks`) and the gas fact.
* `kp_stepQ`: `kp_step`, also returning the callee's post `Q`.
* `hoareG_kpCallDQ` / `hoareG_kpDecCallQ`: as `hoareG_kpCallD` / `hoareG_kpDecCall`, the
  continuation also receives `Q` for the returned value.
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

/-- `KP` with an extra fact `B` about the current typing and allocator pointers. -/
def KPd (H : Hooks σ) (gw : List MlS) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (fs : List Frame)
    (e mg : BitVec 64) (u : State σ) (B : Gam → Ptrs → Prop) : Prop :=
  JrNZ u ∧ ∃ Γ1 p1, RunT guestC H gw Γ0 s0 Γ1 u p0 p1 ∧ ChainL guestC tEV tCK Γ1 u fs ∧
    ChainE GP GR Γ1 u fs ∧ Phi u ≤ Phi s0 ∧ fld u.memory e 112 = mg ∧ B Γ1 p1

theorem kp_of_kpd {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    {e mg : BitVec 64} {u : State σ} {B : Gam → Ptrs → Prop}
    (h : KPd H gw Γ0 s0 p0 fs e mg u B) : KP H gw Γ0 s0 p0 fs e mg u :=
  let ⟨hJ, Γ1, p1, a, b, c, d, f, _⟩ := h; ⟨hJ, Γ1, p1, a, b, c, d, f⟩

/-- **`kp_step` after the call**: from the run to the end state and the callee's `SumCore`;
`Fx` relates the typings before and after the call (`hcall` proves it). -/
theorem kp_step_coreF (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}
    (hfs : fs = (e, c) :: rest) {sg : Sig}
    (hgwE : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hgJ : JrOut sg.gw) {ks : List Nat}
    (hks : ∀ k ∈ ks, k ∈ gasKs)
    {u : State σ} (hu : KP H gw Γ0 s0 p0 fs e mg u) {vs : List (ValueHOL 64)} {callee : Locs}
    {r : PanSemResultExact 64} {st : State σ}
    (hfpk : st.globals.lookup gFrame = (callEntryStateHOLFinite u callee).globals.lookup gFrame)
    {Fx : Gam → Ptrs → Gam → Ptrs → Prop}
    (hcall : ∀ Γ1 p1, RunT guestC H gw Γ0 s0 Γ1 u p0 p1 → ChainL guestC tEV tCK Γ1 u fs →
      ChainE GP GR Γ1 u fs → ∃ Γ2 p2, Fx Γ1 p1 Γ2 p2 ∧
      RunT guestC H gw Γ0 s0 Γ2 st p0 p2 ∧ ArgsOK guestC Γ1 p1 sg.params vs ∧
      ∃ PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop,
        SumCore guestC H sg (fun a => ProtCell guestC Γ1 a ∧ PW vs (callEntryStateHOLFinite u callee) Γ1 a)
          Γ1 (callEntryStateHOLFinite u callee) vs r st Γ2 p1 p2 ∧
        (∀ a, ProtCell guestC Γ1 a → PW vs (callEntryStateHOLFinite u callee) Γ1 a →
          PWtopM tEV tCK ks vs (callEntryStateHOLFinite u callee) Γ1 a) ∧
        (ks = [] ∨ (fld st.memory e 64).toNat + (fld st.memory e 192).toNat ≤
          (fld u.memory e 64).toNat + (fld u.memory e 192).toNat)) :
    KPd H gw Γ0 s0 p0 fs e mg st (fun Γ2 p2 => ∃ Γ1 p1, Fx Γ1 p1 Γ2 p2) := by
  have hH := hF.hooks
  obtain ⟨hks8, hnot, hrd, hksX, h14⟩ := gasKs_facts hks
  obtain ⟨hJ, Γ1, p1, hrun, hch, hE, hΦ, h112⟩ := hu
  have hG1 := hrun.2.2.2.2.2.1
  have hp1 := hrun.2.1
  obtain ⟨Γ2, p2, hFx, hrun2, hargs, PW, hc, hpw', hgas⟩ := hcall Γ1 p1 hrun hch hE
  have hGe : G guestC H Γ1 (callEntryStateHOLFinite u callee) := (G_locFree hH u _ _).mpr hG1
  have hche : ChainL guestC tEV tCK Γ1 (callEntryStateHOLFinite u callee) fs :=
    chainL_congr (s := u) (s' := callEntryStateHOLFinite u callee) rfl rfl hch
  have hEe : ChainE GP GR Γ1 (callEntryStateHOLFinite u callee) fs :=
    chainE_congr (s := u) (s' := callEntryStateHOLFinite u callee) rfl rfl hE
  have hpe : ptrsOf (callEntryStateHOLFinite u callee) = some p1 := (ptrsOf_congr rfl).trans hp1
  obtain ⟨q, hq, hord, hL, -⟩ := id hGe
  obtain rfl : q = p1 := Option.some.inj (hq.symm.trans hpe)
  have hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell guestC Γ1 a :=
    fun a ha => argCells_not_prot hord hL hargs ha
  have hfp : p2.fp = q.fp := fpQ_of_fp hfpk q p2 hpe hc.2.1
  have hcT : SumCore guestC H sg (fun a => ProtCell guestC Γ1 a ∧
      PWtop tEV tCK ks vs (callEntryStateHOLFinite u callee) Γ1 a) Γ1
      (callEntryStateHOLFinite u callee) vs r st Γ2 q p2 :=
    sumCore_pwM hc fun a ⟨hp, hw⟩ => ⟨hp, (hpw' a hp hw).1⟩
  subst hfs
  have hgas' : (8 ∉ ks ∧ 24 ∉ ks) ∨ (fld st.memory e 64).toNat + (fld st.memory e 192).toNat ≤
      (fld (callEntryStateHOLFinite u callee).memory e 64).toNat +
        (fld (callEntryStateHOLFinite u callee).memory e 192).toNat := by
    rcases hgas with h | h
    · subst h; exact Or.inl ⟨by simp, by simp⟩
    · exact Or.inr h
  obtain ⟨hch2, hΦ2, -, -⟩ := pa_coreX hF hGe hche hks8 hnot hgwE hcT hac hfp hgas' (Or.inl hrd)
  obtain ⟨e', c', rest', hfs', he', -, -⟩ := hche.chain
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs'
  obtain ⟨⟨he1, -⟩, -⟩ := hfs'
  rw [← he1] at he'
  obtain ⟨oe, hoe, hoeb, hoet⟩ := (hche.objs (e, c) (List.mem_cons_self ..)).1
  have hE2 := chainE_sumCoreM hF xCfg_guest (by decide) hks8 hksX hGe hc hac
    (fun a hp hw => hpw' a hp hw) he' ⟨oe, hoe, hoeb, hoet⟩ hche.objs hEe
  have hpk := sumCore_protW hcT hGe hac (fun a _ h => h.2)
  have hesz : ∀ x ∈ Γ1, x.ty = tEV → ∀ k ∈ ks, x.HasSlot k := by
    intro x hx hxt k hk
    have := ev_size hF hL hx hxt
    unfold Obj.HasSlot; have := hks8 k hk; omega
  have hsz := ev_size hF hL hoe hoet
  have k14 := frame_keep hord hL hesz hpk hoe (Or.inl hoet) (j := 14)
    (by unfold Obj.HasSlot; omega) (by rw [hoet]; decide) fun _ => h14
  rw [hoeb] at k14
  simp only [show (8 * 14 : Nat) = 112 from rfl] at k14
  refine ⟨jrNZ_sumCore (by decide) hgJ hc (jrNZ_congr (s := u) rfl hJ), Γ2, p2, hrun2, hch2, hE2,
    ?_, ?_⟩
  · rw [phi_locFree.entry] at hΦ2; omega
  · rw [k14]; exact ⟨h112, Γ1, q, hFx⟩

/-- **`kp_step` after the call**, without the typing relation. -/
theorem kp_step_core (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}
    (hfs : fs = (e, c) :: rest) {sg : Sig}
    (hgwE : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hgJ : JrOut sg.gw) {ks : List Nat}
    (hks : ∀ k ∈ ks, k ∈ gasKs)
    {u : State σ} (hu : KP H gw Γ0 s0 p0 fs e mg u) {vs : List (ValueHOL 64)} {callee : Locs}
    {r : PanSemResultExact 64} {st : State σ}
    (hfpk : st.globals.lookup gFrame = (callEntryStateHOLFinite u callee).globals.lookup gFrame)
    (hcall : ∀ Γ1 p1, RunT guestC H gw Γ0 s0 Γ1 u p0 p1 → ChainL guestC tEV tCK Γ1 u fs →
      ChainE GP GR Γ1 u fs → ∃ Γ2 p2,
      RunT guestC H gw Γ0 s0 Γ2 st p0 p2 ∧ ArgsOK guestC Γ1 p1 sg.params vs ∧
      ∃ PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop,
        SumCore guestC H sg (fun a => ProtCell guestC Γ1 a ∧ PW vs (callEntryStateHOLFinite u callee) Γ1 a)
          Γ1 (callEntryStateHOLFinite u callee) vs r st Γ2 p1 p2 ∧
        (∀ a, ProtCell guestC Γ1 a → PW vs (callEntryStateHOLFinite u callee) Γ1 a →
          PWtopM tEV tCK ks vs (callEntryStateHOLFinite u callee) Γ1 a) ∧
        (ks = [] ∨ (fld st.memory e 64).toNat + (fld st.memory e 192).toNat ≤
          (fld u.memory e 64).toNat + (fld u.memory e 192).toNat)) :
    KP H gw Γ0 s0 p0 fs e mg st :=
  kp_of_kpd (kp_step_coreF hF hfs hgwE hgJ hks hu hfpk (Fx := fun _ _ _ _ => True)
    (fun Γ1 p1 hr hc he => let ⟨Γ2, p2, a, b, c⟩ := hcall Γ1 p1 hr hc he; ⟨Γ2, p2, trivial, a, b, c⟩))

/-- **`kp_step`, also returning the callee's post.** -/
theorem kp_stepQ (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
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
    KP H gw Γ0 s0 p0 fs e mg st ∧ ∃ Γ1 Γ2,
      Q vs (callEntryStateHOLFinite u callee) Γ1 r st Γ2 := by
  have hH := hF.hooks
  have hu' := hu
  obtain ⟨hJ, Γ1, p1, hrun, hch, hE, hΦ, h112⟩ := hu
  have hG1 := hrun.2.2.2.2.2.1
  have hp1 := hrun.2.1
  obtain ⟨hargs, hpre⟩ := hA Γ1 p1 hrun hp1 hG1 hch hE
  obtain ⟨Γ2, p2, hrun2, hc, hQ⟩ := run_callT hH hsub hrun hR hg hna hargs hpre
    (fun a ⟨hp, hw⟩ => by
      obtain ⟨q, hq, hord, hL, -⟩ := id hG1
      exact not_kCell_of_pwtopM hord hL (hpw Γ1 a hG1 hp hw))
  refine ⟨kp_step_core hF hfs hgwE hgJ hks hu' (vs := vs) (r := r) hfpk ?_, Γ1, Γ2, hQ⟩
  intro Γ1' p1' hrun' hch' hE'
  have hG1' := hrun'.2.2.2.2.2.1
  have hp1' := hrun'.2.1
  obtain ⟨hargs', hpre'⟩ := hA Γ1' p1' hrun' hp1' hG1' hch' hE'
  obtain ⟨Γ2', p2', hrun2', hc', hQ'⟩ := run_callT hH hsub hrun' hR hg hna hargs' hpre'
    (fun a ⟨hp, hw⟩ => by
      obtain ⟨q, hq, hord, hL, -⟩ := id hG1'
      exact not_kCell_of_pwtopM hord hL (hpw Γ1' a hG1' hp hw))
  refine ⟨Γ2', p2', hrun2', hargs', PW, hc', fun a hp hw => hpw Γ1' a hG1' hp hw, ?_⟩
  rcases hgas with h | h
  · exact Or.inl h
  · exact Or.inr (h Γ1' Γ2' hQ')

/-- **`var rn = f(args); k` from a `KP` state, `k` also receiving the callee's post `Q`.** -/
theorem hoareG_kpDecCallQ (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam}
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
    (hk : ∀ v (st : State σ), KP H gw Γ0 s0 p0 fs e mg st →
      (∃ vs callee Γ1 Γ2, evs u0 args = some vs ∧
        Q vs (callEntryStateHOLFinite u0 callee) Γ1 (.returned v) st Γ2) →
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
      Good (some r) → ¬ Abortive r → KP H gw Γ0 s0 p0 fs e mg st ∧ ∃ Γ1 Γ2,
        Q vs (callEntryStateHOLFinite u0 callee) Γ1 r st Γ2 := by
    intro vs hvs callee r st hR hfk hg hna
    exact kp_stepQ hF hfs hsub hgwE hgJ hks hu hR (hfk hg hna) hg hna
      (fun Γ1 p1 hr hp hG hL hE =>
        ⟨(hA vs hvs Γ1 p1 hr hp hG hL hE).1, (hA vs hvs Γ1 p1 hr hp hG hL hE).2 callee⟩)
      (fun Γ1 a hG hp hw => hpw vs callee Γ1 a hG hp hw)
      (hgas.imp id fun h Γ1 Γ2 hq => h vs callee Γ1 r st Γ2 hq)
  refine hoareG_decCall (FunSpec.and (sumSpecA_relX hspec) hkf) ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨hR, hfk⟩ _ hsh
    subst hs
    obtain ⟨hkp, Γ1, Γ2, hq⟩ := key vs hvs callee _ st hR hfk (by simp [Good]) (not_abortive_ret v)
    exact hk v st hkp ⟨vs, callee, Γ1, Γ2, hvs, hq⟩ hsh
  · intro s _ hs vs hvs callee r st ⟨hR, hfk⟩ _ habn
    subst hs
    refine hab _ _ (by simp) fun r' hr' hna => ?_
    simp only [Option.some.injEq] at hr'
    cases hr'
    exact kp_locals hH (key vs hvs callee r st hR hfk (good_of_abn habn) hna).1 _

/-- **`f(args);` from a `KP` state**, `hA` also gets the run from the start to the current state. -/
theorem hoareG_kpCallDR (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam}
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
        (fld u0.memory e 64).toNat + (fld u0.memory e 192).toNat) :
    HoareG σ X (fun t => t = u0) (callD f args) (PS (KP H gw Γ0 s0 p0 fs e mg) u0.locals) := by
  have hH := hF.hooks
  have key : ∀ vs, evs u0 args = some vs → ∀ callee r st,
      SumRelX guestC H sg Pre (fun vs s Γ a => ProtCell guestC Γ a ∧ PW vs s Γ a) Q vs
        (callEntryStateHOLFinite u0 callee) r st →
      (Good (some r) → ¬ Abortive r →
        st.globals.lookup gFrame = (callEntryStateHOLFinite u0 callee).globals.lookup gFrame) →
      Good (some r) → ¬ Abortive r → KP H gw Γ0 s0 p0 fs e mg st := by
    intro vs hvs callee r st hR hfk hg hna
    exact (kp_stepQ hF hfs hsub hgwE hgJ hks hu hR (hfk hg hna) hg hna
      (fun Γ1 p1 hr hp hG hL hE =>
        ⟨(hA vs hvs Γ1 p1 hr hp hG hL hE).1, (hA vs hvs Γ1 p1 hr hp hG hL hE).2 callee⟩)
      (fun Γ1 a hG hp hw => hpw vs callee Γ1 a hG hp hw)
      (hgas.imp id fun h Γ1 Γ2 hq => h vs callee Γ1 r st Γ2 hq)).1
  refine hoareG_callD (FunSpec.and (sumSpecA_relX hspec) hkf) ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨hR, hfk⟩ _
    subst hs
    exact Or.inl ⟨rfl, kp_locals hH (key vs hvs callee _ st hR hfk (by simp [Good])
      (not_abortive_ret v)) _, rfl⟩
  · intro s _ hs vs hvs callee r st ⟨hR, hfk⟩ _ habn
    subst hs
    refine Or.inr ⟨by simp, fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'
    cases hr'
    exact kp_locals hH (key vs hvs callee r st hR hfk (good_of_abn habn) hna) _

end

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.kp_step_coreF
#print axioms InitECandidate.Solver.MemSafe.D0.kp_step_core
#print axioms InitECandidate.Solver.MemSafe.D0.kp_stepQ
#print axioms InitECandidate.Solver.MemSafe.D0.hoareG_kpDecCallQ
#print axioms InitECandidate.Solver.MemSafe.D0.hoareG_kpCallDR
