import InitECandidate.Solver.MemSafe.Ops5.All

/-!
# `GK` with a tracked temporary buffer (sonnet-log)

`GKB .. b n d u` is `GK d u` whose witnesses `(Γ1, p1)` also satisfy `BufOK guestC Γ1 p1 b n`: the
block `[b, b + n)` (a caller temporary, e.g. `alloc`ed inside a window) stays a valid buffer
argument through summarized calls with `grows = false`.

* `kc_coreKB`: `kc_coreK` with the `BufOK` transport;
* `gk_plainAB`: `gk_plainAK` for `GKB`;
* `gkb_of_win`: `gk_of_win` returning `GKB` (the window's `BufOK` at `(Γc, pc)`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

/-- `GK` with the tracked buffer `[b, b + n)`. -/
def GKB (H : Hooks σ) (gw : List MlS) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (fs : List Frame)
    (b n : Nat) (d : Nat) (u : State σ) : Prop :=
  (JrNZ u ∧ ∃ Γ1 p1, RunT guestC H gw Γ0 s0 Γ1 u p0 p1 ∧ ChainL guestC tEV tCK Γ1 u fs ∧
    ChainE GP GR Γ1 u fs ∧ BufOK guestC Γ1 p1 b n) ∧
  Phi u + d ≤ Phi s0 ∧ (act u = act s0 ∨ Phi u + 1 ≤ Phi s0)

section
variable {H : Hooks σ} {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
  {b n : Nat}

theorem gkb_gk {d : Nat} {u : State σ} (h : GKB H gw Γ0 s0 p0 fs b n d u) :
    GK H gw Γ0 s0 p0 fs d u := by
  obtain ⟨⟨hJ, Γ1, p1, hrun, hch, hE, -⟩, hΦ, ha⟩ := h
  exact ⟨⟨hJ, Γ1, p1, hrun, hch, hE⟩, hΦ, ha⟩

theorem kOK_gkb (hH : HooksLawful guestC H) : KOK (GKB H gw Γ0 s0 p0 fs b n) where
  congr := fun d u t ⟨⟨hJ, Γ1, p1, hrun, hch, hE, hb⟩, hΦ, ha⟩ hm hg hd hbe => by
    refine ⟨⟨jrNZ_congr hg hJ, Γ1, p1, runT_same hH hrun hm hg hd hbe, chainL_congr hm hg hch,
      chainE_congr hm hg hE, hb⟩, by rw [phi_congrMG hm hg]; exact hΦ, ?_⟩
    rw [act_congr hm hg, phi_congrMG hm hg]; exact ha
  mono := fun d d' u ⟨hb, hΦ, ha⟩ hd => ⟨hb, by omega, ha⟩

/-- **`kc_coreK` with the tracked buffer.** -/
theorem kc_coreKB (hF : FrameCfg guestC H tEV tCK) {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {e c : BitVec 64} {rest : List Frame}
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
      PWtopM tEV tCK ks vs (callEntryStateHOLFinite u callee) Γ1 a)
    (hgas : (8 ∉ ks ∧ 24 ∉ ks) ∨ ∀ Γ2, Q vs (callEntryStateHOLFinite u callee) Γ1 r st Γ2 →
      (fld st.memory e 64).toNat + (fld st.memory e 192).toNat ≤
        (fld u.memory e 64).toNat + (fld u.memory e 192).toNat)
    (hrd : (18 ∉ ks ∧ 27 ∉ ks) ∨ ∀ Γ2, Q vs (callEntryStateHOLFinite u callee) Γ1 r st Γ2 →
      RetOK guestC Γ2 st.memory e) :
    ∃ Γ2 p2, RunT guestC H gw Γ0 s0 Γ2 st p0 p2 ∧ ChainL guestC tEV tCK Γ2 st fs ∧
      ChainE GP GR Γ2 st fs ∧ Phi st ≤ Phi u ∧ JrNZ st ∧ act st = act u ∧
      Q vs (callEntryStateHOLFinite u callee) Γ1 r st Γ2 ∧
      (∀ j ∈ evProtSlots, j ∉ ks → fld st.memory e (8 * j) = fld u.memory e (8 * j)) ∧
      (∀ j, j < 13 → fld st.memory c (8 * j) = fld u.memory c (8 * j)) ∧
      (sg.grows = false → ∀ b n, BufOK guestC Γ1 p1 b n → BufOK guestC Γ2 p2 b n) := by
  have hH := hF.hooks
  have hG1 := hrun.2.2.2.2.2.1
  have hp1 := hrun.2.1
  obtain ⟨Γ2, p2, hrun2, hc, hQ⟩ := run_callT hH hsub hrun hR hg hna hargs hpre
    (fun a ⟨hp, hw⟩ => by
      obtain ⟨q, hq, hord, hL, -⟩ := hrun.2.2.2.2.2.1
      exact not_kCell_of_pwtopM hord hL (hpw a hp hw))
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
  have hbuf : sg.grows = false → ∀ b n, BufOK guestC Γ1 q b n → BufOK guestC Γ2 p2 b n := by
    intro hgr b n hb
    obtain ⟨q2, hq2, hord2, -⟩ := hc.2.2.2.2.2.1
    obtain rfl : q2 = p2 := Option.some.inj (hq2.symm.trans hc.2.1)
    exact bufOK_stepX hord hord2 hc.2.2.1 hc.2.2.2.1
      (newFresh_mono (mono_refl q) hc.2.2.1 (hc.2.2.2.2.2.2.2.2.1 hgr)) hb
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
  have hE2 := chainE_sumCoreM hF xCfg_guest (by decide) hks8 hksX hGe hc hac
    (fun a hp hw => hpw a hp hw) he' ⟨oe, hoe, hoeb, hoet⟩ hche.objs hEe
  obtain ⟨e2, c2, rest2, hfs2, he2, hc2, -⟩ := hch2.chain
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs2
  obtain ⟨⟨rfl, rfl⟩, -⟩ := hfs2
  have hact : act st = act u := by
    rw [act_eq he2 hc2, act_eq (s := u) he' hc', hkC 4 (by decide),
      hkE 13 (by simp [evProtSlots]) (hnot 13 (by simp))]
    rfl
  refine ⟨Γ2, p2, hrun2, hch2, hE2, ?_, jrNZ_sumCore (by decide) hgJ hc (jrNZ_congr (s := u) rfl hJ),
    hact, hQ, fun j hj hk => hkE j hj hk, fun j hj => hkC j hj, hbuf⟩
  rw [phi_locFree.entry] at hΦ2; exact hΦ2

theorem gk_plainAB (hF : FrameCfg guestC H tEV tCK) {e c : BitVec 64} {rest : List Frame}
    (hfs : fs = (e, c) :: rest) {E : GEnv} (hgw : ∀ g ∈ E.gw, g ∈ gw) {f : MlS} {sg : Sig}
    {cs : List Cap} {args : List (ExpHOL 64)} (hok : PlainOKB E f sg cs args.length)
    (hgr : sg.grows = false)
    {d : Nat} {u0 : State σ} (hu : GKB H gw Γ0 s0 p0 fs b n d u0) {vs : List (ValueHOL 64)}
    (hvs : evs u0 args = some vs)
    (hA : ∀ (Γ1 : Gam) (p1 : Ptrs), RunT guestC H gw Γ0 s0 Γ1 u0 p0 p1 →
      ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs → BufOK guestC Γ1 p1 b n →
      ArgsOK guestC Γ1 p1 sg.params vs)
    {callee : Locs} {r : PanSemResultExact 64} {st : State σ}
    (hR : SumRelX guestC H sg (fun _ s Γ => ReqOK cs s Γ)
      (fun vs s Γ a => ProtCell guestC Γ a ∧ CapPW cs s Γ a) (fun _ _ _ _ _ _ => True) vs
      (callEntryStateHOLFinite u0 callee) r st)
    (hfk : st.globals.lookup gFrame = (callEntryStateHOLFinite u0 callee).globals.lookup gFrame)
    (hg : Good (some r)) (hna : ¬ Abortive r) :
    GKB H gw Γ0 s0 p0 fs b n d st ∧
      (∀ j ∈ evProtSlots, j ∉ evKs cs → fld st.memory e (8 * j) = fld u0.memory e (8 * j)) := by
  obtain ⟨hlen, hsgw, hev, hcc, hjo, -, hcs, hks⟩ := hok
  obtain ⟨⟨hJ, Γ1, p1, hrun, hch, hE, hb⟩, hΦ, hact⟩ := hu
  obtain ⟨o, hevo, -⟩ := gk_head hfs hch
  have hG1 := hrun.2.2.2.2.2.1
  obtain ⟨Γ2, p2, hrun2, hch2, hE2, hΦ2, hJ2, hact2, -, hkE, -, hbuf⟩ := kc_coreKB hF hfs
    (fun g h => hgw g (hsgw g h)) ⟨hev, hcc⟩ hjo (ks := evKs cs)
    (fun k hk => (hks k hk).1)
    (fun j hj hjk => (hks j hjk).2 (ksBad_3 j hj))
    (fun k hk hkx => (hks k hk).2 (ksBad_X k hkx))
    hrun hch hE hJ hR hfk hg hna
    (hA Γ1 p1 hrun hch hE hb)
    (reqOK_cs hG1 hJ hevo hcs)
    (fun a _ hw => capPW_cs (vs := vs) hF ((G_locFree hF.hooks u0 _ _).mpr hG1) hcs
      (fun k hk => (hks k hk).1) hw)
    (Or.inl ⟨fun h => (hks 8 h).2 (by decide), fun h => (hks 24 h).2 (by decide)⟩)
    (Or.inl ⟨fun h => (hks 18 h).2 (by decide), fun h => (hks 27 h).2 (by decide)⟩)
  refine ⟨⟨⟨hJ2, Γ2, p2, hrun2, hch2, hE2, hbuf hgr b n hb⟩, by omega, ?_⟩, hkE⟩
  rw [hact2]; omega

/-- **`gk_of_win` returning `GKB`**: the window's tracked buffer at `(Γc, pc)`. -/
theorem gkb_of_win (hF : FrameCfg guestC H tEV tCK) {e c : BitVec 64} {rest : List Frame}
    (hfs : fs = (e, c) :: rest) {d : Nat} {um : State σ} {m : BitVec 64} {Γc : Gam} {pc : Ptrs}
    {u : State σ} (h : WinI H Γ0 s0 p0 fs d um m Γc pc u) (hb : BufOK guestC Γc pc b n) :
    GKB H [Hooks.gJn] Γ0 s0 p0 fs b n d u := by
  obtain ⟨⟨⟨hJ, -⟩, hΦ, hact⟩, Γ1, pm, hrun1, hch, hE, hm, hrun, hPK, hfp, hnf⟩ := h
  have hG1 := hrun1.2.2.2.2.2.1
  have hSt : (fun _ : Nat => false) tEV = false ∧ (fun _ : Nat => false) tCK = false := ⟨rfl, rfl⟩
  have hPK' : ProtKeep guestC (nst (fun _ : Nat => false) Γ1) um u := protKeep_nst_of hPK
  obtain ⟨hch2, hΦeq⟩ := chain_of_keepT hF hSt (gw := ([] : List MlS))
    ⟨List.not_mem_nil, List.not_mem_nil⟩ hG1 hrun hfp hPK' hch
  obtain ⟨o, hevo, hob⟩ := gk_head hfs hch
  have hcore := winCore hrun hPK hnf
  have hE2 : ChainE GP GR Γc u fs :=
    chainE_sumCoreW hF xCfg_guest (by decide) (sg := sgW) (ks := [])
      (by simp) (by simp) hG1 hcore (fun a ha => absurd ha (argCells_any (ps := sgW.params) (by simp [sgW])))
      (fun a hp hw => absurd hp hw) (top := e) (by rw [← hob]; exact hevo.2.2)
      ⟨o, hevo.1, hob, hevo.2.1⟩ hch.objs hE
  have hJ2 : JrNZ u := jrNZ_runT (by decide) (gw := ([] : List MlS)) (by simp [JrOut]) hrun hJ
  refine ⟨⟨hJ2, Γc, pc, runT_trans hrun1 (runT_gw (by simp) hrun), hch2, hE2, hb⟩, by omega, ?_⟩
  obtain ⟨pq, -, -, hL, -⟩ := id hG1
  have hfk := framesKept_of_protKeepS hF hSt hL hch hPK'
  obtain ⟨e2, c2, rest2, hfs2, he2, hc2, -⟩ := hch2.chain
  obtain ⟨e1, c1, rest1, hfs1, he1, hc1, -⟩ := hch.chain
  rw [hfs1] at hfs2
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs2
  obtain ⟨⟨rfl, rfl⟩, -⟩ := hfs2
  have hactEq : act u = act um := by
    rw [act_eq he2 hc2, act_eq he1 hc1]
    have hf : (e1, c1) ∈ fs := by rw [hfs1]; simp
    rw [fk_ck hfk hf (k := 32) (by simp), fk_ev hfk hf (k := 104) (by simp)]
  rcases hact with h | h
  · exact Or.inl (by rw [hactEq]; exact h)
  · exact Or.inr (by omega)

end

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.kc_coreKB
#print axioms InitECandidate.Solver.MemSafe.Frames.gk_plainAB
#print axioms InitECandidate.Solver.MemSafe.Frames.gkb_of_win
#print axioms InitECandidate.Solver.MemSafe.Frames.kOK_gkb
