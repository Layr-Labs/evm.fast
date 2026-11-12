import InitECandidate.Solver.MemSafe.Frames.GkMem
import InitECandidate.Solver.MemSafe.Frames.LogSub

/-!
# `kc_coreK` for a log writer (package L)

`kc_coreKL`: `kc_coreK` with the footprint `PWtopL` (the log lists may be written) and the lists described
by `LogSub` (a hypothesis on the callee's post `Q`). Used by `log_append` (`op_log`), `emit_transfer_log`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64}

section
variable {H : Hooks σ}

/-- **`kc_coreK` for a log writer.** -/
theorem kc_coreKL (hLH : Hooks.LstHooks H) (hF : FrameCfg guestC H tEV tCK) {gw : List MlS}
    {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame}
    (hfs : fs = (e, c) :: rest) {sg : Sig} (hsub : ∀ g, g ∈ sg.gw → g ∈ gw)
    (hgwE : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hgJ : JrOut sg.gw) {ks : List Nat}
    (hks8 : ∀ k ∈ ks, 8 * k + 8 ≤ 280) (hnot : ∀ j ∈ [3, 5, 13], j ∉ ks)
    (hksX : ∀ k ∈ ks, k ∉ evXSlots)
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    {Γ1 : Gam} {p1 : Ptrs} {u : State σ} (hrun : RunT guestC H gw Γ0 s0 Γ1 u p0 p1)
    (hch : ChainL guestC tEV tCK Γ1 u fs) (hE : ChainE GP GR Γ1 u fs) (hJ : JrNZ u)
    {vs : List (ValueHOL 64)} {callee : Locs} {r : PanSemResultExact 64} {st : State σ}
    (hR : SumRelX guestC H sg Pre (fun vs s Γ a => ProtCell guestC Γ a ∧ PW vs s Γ a) Q vs
      (callEntryStateHOLFinite u callee) r st)
    (hfpk : st.globals.lookup gFrame = (callEntryStateHOLFinite u callee).globals.lookup gFrame)
    (hg : Good (some r)) (hna : ¬ Abortive r) (hargs : ArgsOK guestC Γ1 p1 sg.params vs)
    (hpre : Pre vs (callEntryStateHOLFinite u callee) Γ1)
    (hpw : ∀ a, ProtCell guestC Γ1 a → PW vs (callEntryStateHOLFinite u callee) Γ1 a →
      PWtopL tEV tCK ks vs (callEntryStateHOLFinite u callee) Γ1 a)
    (hgas : (8 ∉ ks ∧ 24 ∉ ks) ∨ ∀ Γ2, Q vs (callEntryStateHOLFinite u callee) Γ1 r st Γ2 →
      (fld st.memory e 64).toNat + (fld st.memory e 192).toNat ≤
        (fld u.memory e 64).toNat + (fld u.memory e 192).toNat)
    (hrd : (18 ∉ ks ∧ 27 ∉ ks) ∨ ∀ Γ2, Q vs (callEntryStateHOLFinite u callee) Γ1 r st Γ2 →
      RetOK guestC Γ2 st.memory e)
    (hSubQ : ∀ Γ2 p2, Q vs (callEntryStateHOLFinite u callee) Γ1 r st Γ2 → ptrsOf st = some p2 →
      LogSub Γ1 Γ2 p2.hp u.memory st.memory) :
    ∃ Γ2 p2, RunT guestC H gw Γ0 s0 Γ2 st p0 p2 ∧ ChainL guestC tEV tCK Γ2 st fs ∧
      ChainE GP GR Γ2 st fs ∧ Phi st ≤ Phi u ∧ JrNZ st ∧ act st = act u ∧
      Q vs (callEntryStateHOLFinite u callee) Γ1 r st Γ2 ∧
      (∀ j ∈ evProtSlots, j ∉ ks → fld st.memory e (8 * j) = fld u.memory e (8 * j)) ∧
      (∀ j, j < 13 → fld st.memory c (8 * j) = fld u.memory c (8 * j)) := by
  have hH := hF.hooks
  have hG1 := hrun.2.2.2.2.2.1
  have hp1 := hrun.2.1
  obtain ⟨Γ2, p2, hrun2, hc, hQ⟩ := run_callT hH hsub hrun hR hg hna hargs hpre
    (fun a ⟨hp, hw⟩ => by
      obtain ⟨q, hq, hord, hL, -⟩ := hrun.2.2.2.2.2.1
      exact not_kCell_of_pwtopL hord hL (hpw a hp hw))
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
    sumCore_pwM hc fun a ⟨hp, hw⟩ => ⟨hp, (hpw a hp hw).1⟩
  subst hfs
  have hgas' : (8 ∉ ks ∧ 24 ∉ ks) ∨ (fld st.memory e 64).toNat + (fld st.memory e 192).toNat ≤
      (fld (callEntryStateHOLFinite u callee).memory e 64).toNat +
        (fld (callEntryStateHOLFinite u callee).memory e 192).toNat :=
    hgas.imp id fun h => h Γ2 hQ
  obtain ⟨hch2, hΦ2, hkC, hkE⟩ := pa_coreX hF hGe hche hks8 hnot hgwE hcT hac hfp hgas'
    (hrd.imp id fun h => h Γ2 hQ)
  obtain ⟨e', c', rest', hfs', he', hc', -⟩ := hche.chain
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs'
  obtain ⟨⟨he1, hc1⟩, -⟩ := hfs'
  rw [← he1] at he'
  rw [← hc1] at hc'
  obtain ⟨oe, hoe, hoeb, hoet⟩ := (hche.objs (e, c) (List.mem_cons_self ..)).1
  have hE2 := chainE_sumCoreL hLH hF (by decide) hks8 hksX hGe hc hac
    (fun a hp hw => hpw a hp hw.2) he' ⟨oe, hoe, hoeb, hoet⟩ hche.objs
    (hSubQ Γ2 p2 hQ hc.2.1) hEe
  obtain ⟨e2, c2, rest2, hfs2, he2, hc2, -⟩ := hch2.chain
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs2
  obtain ⟨⟨rfl, rfl⟩, -⟩ := hfs2
  have hact : act st = act u := by
    rw [act_eq he2 hc2, act_eq (s := u) he' hc', hkC 4 (by decide),
      hkE 13 (by simp [evProtSlots]) (hnot 13 (by simp))]
    rfl
  refine ⟨Γ2, p2, hrun2, hch2, hE2, ?_, jrNZ_sumCore (by decide) hgJ hc (jrNZ_congr (s := u) rfl hJ),
    hact, hQ, fun j hj hk => hkE j hj hk, fun j hj => hkC j hj⟩
  rw [phi_locFree.entry] at hΦ2; exact hΦ2

end

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.kc_coreKL
