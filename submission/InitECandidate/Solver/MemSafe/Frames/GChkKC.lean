import InitECandidate.Solver.MemSafe.Frames.GChk

/-!
# The gas checker on the `run_frames` chain (frames11, decision 3)

The tracked predicate **`GK … d u`** of a handler run from `s0` on the fixed chain `fs`: `JrNZ`, a
run (`RunT`) with the chain (`ChainL`) and its extension (`ChainE GP GR`) of `fs`, `Φ` lowered by
at least `d`, and the active bit unchanged unless `Φ` already dropped by one.

* **`kc_core`**: `kg_core` with the CK record cells kept (so the active bit is kept);
* **`callSem_kc`**: `CallSem` for the environment `⟨tab, fp, gw⟩` from `CTabSound tab`, `KeepsFp`
  of `fp`, and `charge_gas`'s two hand summaries (`charge_evSpec`, `charge_sumSpec`);
* **`gc_jSpec`**: an accepted handler body (`gc E false body = some b`) gives the handler's
  `run_frames` step spec `JSpec … (PreOpX … M) (QStepX …)`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64}

/-! ## The tracked predicate -/

/-- The `Φ`-free part: `JrNZ`, a run, the chain and its extension. -/
def GKb (H : Hooks σ) (gw : List MlS) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (fs : List Frame)
    (u : State σ) : Prop :=
  JrNZ u ∧ ∃ Γ1 p1, RunT guestC H gw Γ0 s0 Γ1 u p0 p1 ∧ ChainL guestC tEV tCK Γ1 u fs ∧
    ChainE GP GR Γ1 u fs

/-- **The gas checker's tracked facts.** -/
def GK (H : Hooks σ) (gw : List MlS) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (fs : List Frame)
    (d : Nat) (u : State σ) : Prop :=
  GKb H gw Γ0 s0 p0 fs u ∧ Phi u + d ≤ Phi s0 ∧ (act u = act s0 ∨ Phi u + 1 ≤ Phi s0)

theorem act_congr {s t : State σ} (hm : t.memory = s.memory) (hg : t.globals = s.globals) :
    act t = act s := by
  have hR : Ready t ↔ Ready s := by
    unfold Ready DoneZ RunNZ
    rw [hm, gword_congr hg, gword_congr hg]
  unfold act
  by_cases h : Ready s
  · rw [if_pos h, if_pos (hR.mpr h)]
  · rw [if_neg h, if_neg (mt hR.mp h)]

section
variable {H : Hooks σ}

theorem gkb_congr (hH : HooksLawful guestC H) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {u t : State σ} (h : GKb H gw Γ0 s0 p0 fs u)
    (hm : t.memory = u.memory) (hg : t.globals = u.globals) (hd : t.memaddrs = u.memaddrs)
    (hbe : t.be = u.be) : GKb H gw Γ0 s0 p0 fs t := by
  obtain ⟨hJ, Γ1, p1, hrun, hch, hE⟩ := h
  exact ⟨jrNZ_congr hg hJ, Γ1, p1, runT_same hH hrun hm hg hd hbe, chainL_congr hm hg hch,
    chainE_congr hm hg hE⟩

theorem kOK_gk (hH : HooksLawful guestC H) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} : KOK (GK H gw Γ0 s0 p0 fs) where
  congr := fun d u t ⟨hb, hΦ, ha⟩ hm hg hd hbe => by
    refine ⟨gkb_congr hH hb hm hg hd hbe, by rw [phi_congrMG hm hg]; exact hΦ, ?_⟩
    rw [act_congr hm hg, phi_congrMG hm hg]; exact ha
  mono := fun d d' u ⟨hb, hΦ, ha⟩ hd => ⟨hb, by omega, ha⟩

/-- **One summarized call on the fixed chain** (`kg_core` without block tracking, with the active
bit kept). -/
theorem kc_core (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
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
      PWtopM tEV tCK ks vs (callEntryStateHOLFinite u callee) Γ1 a)
    (hgas : (8 ∉ ks ∧ 24 ∉ ks) ∨ ∀ Γ2, Q vs (callEntryStateHOLFinite u callee) Γ1 r st Γ2 →
      (fld st.memory e 64).toNat + (fld st.memory e 192).toNat ≤
        (fld u.memory e 64).toNat + (fld u.memory e 192).toNat)
    (hrd : (18 ∉ ks ∧ 27 ∉ ks) ∨ ∀ Γ2, Q vs (callEntryStateHOLFinite u callee) Γ1 r st Γ2 →
      RetOK guestC Γ2 st.memory e) :
    ∃ Γ2 p2, RunT guestC H gw Γ0 s0 Γ2 st p0 p2 ∧ ChainL guestC tEV tCK Γ2 st fs ∧
      ChainE GP GR Γ2 st fs ∧ Phi st ≤ Phi u ∧ JrNZ st ∧ act st = act u ∧
      Q vs (callEntryStateHOLFinite u callee) Γ1 r st Γ2 := by
  have hH := hF.hooks
  have hG1 := hrun.2.2.2.2.2.1
  have hp1 := hrun.2.1
  obtain ⟨Γ2, p2, hrun2, hc, hQ⟩ := run_callT hH hsub hrun hR hg hna hargs hpre
    (fun a ⟨hp, hw⟩ => by
      obtain ⟨q, hq, hord, hL, -⟩ := hG1
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
    hact, hQ⟩
  rw [phi_locFree.entry] at hΦ2; exact hΦ2

end

/-! ## Capabilities of plain callees -/

section caps
variable {H : Hooks σ}

theorem reqOK_cs {Γ : Gam} {s : State σ} (hG : G guestC H Γ s) (hJ : JrNZ s) {o : Obj}
    (hev : EvRun tEV Γ s o) {cs : List Cap} (hcs : ∀ c ∈ cs, CapEv c ∨ CapSt c) :
    ReqOK cs s Γ := by
  intro c hc hne
  rcases hcs c hc with ⟨hg, ht, -⟩ | ⟨-, -, hj⟩
  · exact ⟨o, hev.1, by rw [ht]; exact hev.2.1, by rw [hg]; exact hev.2.2⟩
  · rcases hj hne with ⟨hg, ht⟩ | ⟨hg, ht⟩
    · obtain ⟨e, he, het, heb⟩ := jr_obj hG hJ
      exact ⟨e, he, het ▸ ht.symm ▸ rfl, hg ▸ heb⟩
    · obtain ⟨e, he, het, heb⟩ := sk_obj hG hJ
      exact ⟨e, he, het ▸ ht.symm ▸ rfl, hg ▸ heb⟩

theorem mem_evKs {cs : List Cap} {c : Cap} (hc : c ∈ cs) (he : CapEv c) {k : Nat} (hk : k ∈ c.ks) :
    k ∈ evKs cs :=
  List.mem_flatMap.mpr ⟨c, List.mem_filter.mpr ⟨hc, decide_eq_true he⟩, hk⟩

theorem capPW_cs (hF : FrameCfg guestC H tEV tCK) {Γ : Gam} {s : State σ} (hG : G guestC H Γ s)
    {cs : List Cap} (hcs : ∀ c ∈ cs, CapEv c ∨ CapSt c) (hks : ∀ k ∈ evKs cs, 8 * k + 8 ≤ 280)
    {vs : List (ValueHOL 64)} {a : BitVec 64} (hw : CapPW cs s Γ a) :
    PWtopM tEV tCK (evKs cs) vs s Γ a := by
  obtain ⟨p, -, hord, hL, -⟩ := id hG
  obtain ⟨c, hc, ⟨e, ⟨he, het, heg⟩, k, hk, rfl⟩ | ⟨hall, e, he, hty, k, hks', rfl⟩⟩ := hw
  · rcases hcs c hc with hce | ⟨hks0, -, -⟩
    · have hkk := mem_evKs hc hce hk
      obtain ⟨hg, ht, -⟩ := hce
      have het' : e.ty = tEV := het.trans ht
      have hsz := ev_size hF hL he het'
      have h8 := hks k hkk
      refine ⟨Or.inl ⟨e, ⟨he, het', ?_⟩, k, hkk, rfl⟩,
        noMsg_of_ty hL he (by rw [het']; decide) (inO_cell hord hL he (by omega))⟩
      rcases heg with h | h
      · rw [hg] at h; exact absurd h (by decide)
      · rw [hg] at h; exact h
    · rw [hks0] at hk; cases hk
  · rcases hcs c hc with ⟨-, -, hal⟩ | ⟨-, hst, -⟩
    · rw [hal] at hall; cases hall
    · have hS : guestSt e.ty = true := by
        rcases hty with h | h
        · rw [h]; exact hst hall
        · exact guestSt_own _ h
      obtain ⟨h1 | h1, h2⟩ := stCell_pwM (vs := vs) hG he hks' hS
      · obtain ⟨-, -, j, hj, -⟩ := h1; cases hj
      · exact ⟨Or.inr h1, h2⟩

end caps

/-! ## The call steps -/

section calls
variable {H : Hooks σ}

theorem gk_head {fs : List Frame}
    {e c : BitVec 64} {rest : List Frame} (hfs : fs = (e, c) :: rest) {u : State σ}
    {Γ1 : Gam} (hch : ChainL guestC tEV tCK Γ1 u fs) :
    ∃ o, EvRun tEV Γ1 u o ∧ o.base = e := evRun_of_chainL (hfs ▸ hch)

theorem ksBad_3 : ∀ j ∈ [3, 5, 13], j ∈ ksBad := by decide
theorem ksBad_X : ∀ j ∈ evXSlots, j ∈ ksBad := by decide

/-- **A plain call** keeps `GK` with the same bound. -/
theorem gk_plain (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame}
    (hfs : fs = (e, c) :: rest) {E : GEnv} (hgw : ∀ g ∈ E.gw, g ∈ gw) {f : MlS} {sg : Sig}
    {cs : List Cap} {args : List (ExpHOL 64)} (hok : PlainOK E f sg cs args.length)
    {d : Nat} {u0 : State σ} (hu : GK H gw Γ0 s0 p0 fs d u0) {vs : List (ValueHOL 64)}
    (hvs : evs u0 args = some vs) {callee : Locs} {r : PanSemResultExact 64} {st : State σ}
    (hR : SumRelX guestC H sg (fun _ s Γ => ReqOK cs s Γ)
      (fun vs s Γ a => ProtCell guestC Γ a ∧ CapPW cs s Γ a) (fun _ _ _ _ _ _ => True) vs
      (callEntryStateHOLFinite u0 callee) r st)
    (hfk : st.globals.lookup gFrame = (callEntryStateHOLFinite u0 callee).globals.lookup gFrame)
    (hg : Good (some r)) (hna : ¬ Abortive r) :
    GK H gw Γ0 s0 p0 fs d st := by
  obtain ⟨hlen, hany, hsgw, hev, hcc, hjo, -, hcs, hks⟩ := hok
  obtain ⟨⟨hJ, Γ1, p1, hrun, hch, hE⟩, hΦ, hact⟩ := hu
  obtain ⟨o, hevo, -⟩ := gk_head hfs hch
  have hG1 := hrun.2.2.2.2.2.1
  obtain ⟨Γ2, p2, hrun2, hch2, hE2, hΦ2, hJ2, hact2, -⟩ := kc_core hF hfs
    (fun g h => hgw g (hsgw g h)) ⟨hev, hcc⟩ hjo (ks := evKs cs)
    (fun k hk => (hks k hk).1)
    (fun j hj hjk => (hks j hjk).2 (ksBad_3 j hj))
    (fun k hk hkx => (hks k hk).2 (ksBad_X k hkx))
    hrun hch hE hJ hR hfk hg hna
    (argsOK_any hany (by rw [evs_len hvs, hlen]))
    (reqOK_cs hG1 hJ hevo hcs)
    (fun a _ hw => capPW_cs (vs := vs) hF ((G_locFree hF.hooks u0 _ _).mpr hG1) hcs
      (fun k hk => (hks k hk).1) hw)
    (Or.inl ⟨fun h => (hks 8 h).2 (by decide), fun h => (hks 24 h).2 (by decide)⟩)
    (Or.inl ⟨fun h => (hks 18 h).2 (by decide), fun h => (hks 27 h).2 (by decide)⟩)
  refine ⟨⟨hJ2, Γ2, p2, hrun2, hch2, hE2⟩, by omega, ?_⟩
  rw [hact2]; omega

/-- `charge_gas`'s exact-footprint post (`charge_evSpec`). -/
def QCh (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (r : PanSemResultExact 64)
    (t : State σ) (Γ' : Gam) : Prop :=
  Γ' = Γ ∧ ptrsOf t = ptrsOf s ∧ t.globals = s.globals ∧
    ∃ e a, gword s nmEv = some e ∧ vs = [.val (.word a)] ∧
      ((r = .exception nmEvmErr (.val (.word 4)) ∧ fld s.memory e 64 < a ∧ t.memory = s.memory) ∨
        (r = .returned (.val (.word 0)) ∧ a ≤ fld s.memory e 64 ∧
          t.memory = chargeMem s.memory e a))

/-- `charge_sumSpec`'s relation. -/
def RCh (C : Cfg) (H : Hooks σ) (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64)
    (t : State σ) : Prop :=
  Good (some r) → ∀ Γ, G C H Γ s → (∃ p, ptrsOf s = some p ∧ ArgsOK C Γ p (sg1 []).params vs) →
    Chain C tEV tCK Γ s →
      ∃ Γ' p p', SumCore C H (sg1 []) (fun a => ProtCell C Γ a ∧ ¬ KCell C Γ a) Γ s vs r t Γ' p p' ∧
        ∃ a, vs = [.val (.word a)] ∧ Chain C tEV tCK Γ' t ∧ act t = act s ∧
          ((r = .returned (.val (.word 0)) ∧ Phi t + a.toNat = Phi s) ∨
            (r = .exception nmEvmErr (.val (.word 4)) ∧ Phi t = Phi s))

/-- **A `charge_gas` call**: `GK` kept with `Φ` not raised, and on a return `Φ` lowered by the
amount. -/
theorem gk_charge (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame}
    (hfs : fs = (e, c) :: rest) {d : Nat} {u0 : State σ} (hu : GK H gw Γ0 s0 p0 fs d u0)
    {x : ExpHOL 64} {vs : List (ValueHOL 64)} (hvs : evs u0 [x] = some vs) {callee : Locs}
    {r : PanSemResultExact 64} {st : State σ}
    (hR : SumRelX guestC H sg1n (fun _ s Γ => ∃ e, EvRun tEV Γ s e)
      (fun vs s Γ a => ProtCell guestC Γ a ∧ PWrun tEV [8, 23] vs s Γ a) QCh vs
      (callEntryStateHOLFinite u0 callee) r st)
    (hfk : st.globals.lookup gFrame = (callEntryStateHOLFinite u0 callee).globals.lookup gFrame)
    (hΦR : RCh guestC H vs (callEntryStateHOLFinite u0 callee) r st)
    (hg : Good (some r)) (hna : ¬ Abortive r) :
    GKb H gw Γ0 s0 p0 fs st ∧ Phi st ≤ Phi u0 ∧ act st = act u0 ∧
      ∀ v, r = .returned v → ∃ a, vs = [.val (.word a)] ∧ Phi st + a.toNat = Phi u0 := by
  obtain ⟨⟨hJ, Γ1, p1, hrun, hch, hE⟩, -, -⟩ := hu
  obtain ⟨o, hevo, hob⟩ := gk_head hfs hch
  have hG1 := hrun.2.2.2.2.2.1
  have hGe : G guestC H Γ1 (callEntryStateHOLFinite u0 callee) := (G_locFree hF.hooks u0 _ _).mpr hG1
  have hlen : vs.length = 1 := by rw [evs_len hvs]; rfl
  have hargs : ∀ ps : List PT, (∀ pt ∈ ps, pt = .any) → ps.length = 1 →
      ArgsOK guestC Γ1 p1 ps vs := fun ps hps hl => argsOK_any hps (by rw [hlen, hl])
  have he0 : gword u0 nmEv = some e := by rw [← hob]; exact hevo.2.2
  obtain ⟨Γ2, p2, hrun2, hch2, hE2, hΦ2, hJ2, hact2, -⟩ := kc_core hF hfs (sg := sg1n)
    (fun g h => by simp [sg1n] at h) (by simp [sg1n]) (by simp [sg1n, jrOut_iff]) (ks := [8, 23])
    (by decide) (by decide) (by decide) hrun hch hE hJ hR hfk hg hna
    (hargs _ (by simp [sg1n]) rfl) ⟨o, hevo⟩
    (fun a _ ⟨e', ⟨he', het', heb'⟩, k, hk, ha⟩ => by
      subst ha
      obtain ⟨q, -, hord, hL, -⟩ := id hGe
      have hsz := ev_size hF hL he' het'
      have hk' : k = 8 ∨ k = 23 := by simpa using hk
      exact ⟨Or.inl ⟨e', ⟨he', het', heb'⟩, k, hk, rfl⟩,
        noMsg_of_ty hL he' (by rw [het']; decide)
          (inO_cell hord hL he' (by rcases hk' with rfl | rfl <;> omega))⟩)
    (Or.inr fun Γ2 hq => by
      obtain ⟨-, -, -, e', a, he', -, hcase⟩ := hq
      have he'' : e' = e := Option.some.inj (he'.symm.trans he0)
      subst he''
      rcases hcase with ⟨-, -, hm⟩ | ⟨-, hle, hm⟩
      · rw [hm]; exact le_refl _
      · rw [hm]; exact gs_charge hle)
    (Or.inl (by decide))
  refine ⟨⟨hJ2, Γ2, p2, hrun2, hch2, hE2⟩, hΦ2, hact2, fun v hv => ?_⟩
  obtain ⟨Γ', -, -, -, a, hva, -, -, hcase⟩ := hΦR hg Γ1 hGe
    ⟨p1, (ptrsOf_congr rfl).trans hrun.2.1, hargs _ (by simp [sg1]) rfl⟩ ⟨fs, chainL_congr (s := u0) (s' := callEntryStateHOLFinite u0 callee) rfl rfl hch⟩
  refine ⟨a, hva, ?_⟩
  rcases hcase with ⟨-, h⟩ | ⟨hr, -⟩
  · rw [phi_locFree.entry] at h; exact h
  · rw [hv] at hr; cases hr

theorem cbd_le (b : Bool) (r : PanSemResultExact 64) : cbd b r ≤ bd b := by
  cases r <;> simp [cbd]

theorem evs_const1 {u : State σ} {n : BitVec 64} {vs : List (ValueHOL 64)}
    (h : evs u [.const n] = some vs) : vs = [.val (.word n)] := by
  obtain ⟨v, vs', rfl, hv, h'⟩ := evs_cons_inv h
  rw [evs_zero h']
  rw [ev_const] at hv
  cases hv; rfl

/-- **`CallSem` for the run_frames chain**, from the callee table, the `KeepsFp` list and
`charge_gas`'s hand summaries. -/
theorem callSem_gk (hC : X.code.lookup = guestCode) (hF : FrameCfg guestC H tEV tCK)
    {tab : CTab} {fp gwE : List MlS} (hT : CTabSound σ X guestC H tab)
    (hfp : ∀ f ∈ fp, KeepsFp σ X f) (hcg : KeepsFp σ X (nm "charge_gas")) {gw : List MlS}
    {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
    {rest : List Frame} (hfs : fs = (e, c) :: rest) (hgw : ∀ g ∈ gwE, g ∈ gw) :
    CallSem σ X ⟨tab, fp, gwE⟩ (GK H gw Γ0 s0 p0 fs) := by
  intro b b' f args h
  unfold callCl at h
  split at h
  · rename_i hf
    subst hf
    refine ⟨fun vs s r t => (SumRelX guestC H sg1n (fun _ s Γ => ∃ e, EvRun tEV Γ s e)
        (fun vs s Γ a => ProtCell guestC Γ a ∧ PWrun tEV [8, 23] vs s Γ a) QCh vs s r t ∧
        (Good (some r) → ¬ Abortive r → t.globals.lookup gFrame = s.globals.lookup gFrame)) ∧
        RCh guestC H vs s r t,
      FunSpec.and (FunSpec.and (sumSpecA_relX (sumSpecA_of_sumSpec (charge_evSpec hC hF))) hcg)
        (charge_sumSpec hC hF), ?_⟩
    intro u0 hu vs hvs callee r st ⟨⟨hR, hfk⟩, hΦR⟩ hg hna
    obtain ⟨-, hΦ0, hact0⟩ := id hu
    have key : ∀ x, args = [x] → GKb H gw Γ0 s0 p0 fs st ∧ Phi st ≤ Phi u0 ∧ act st = act u0 ∧
        ∀ v, r = .returned v → ∃ a, vs = [.val (.word a)] ∧ Phi st + a.toNat = Phi u0 := by
      intro x hx
      subst hx
      exact gk_charge hF hfs hu hvs hR (hfk hg hna) hΦR hg hna
    have hactF : ∀ (hb : act st = act u0) (hΦ : Phi st ≤ Phi u0),
        act st = act s0 ∨ Phi st + 1 ≤ Phi s0 := by
      intro hb hΦ
      rw [hb]; rcases hact0 with h | h
      · exact Or.inl h
      · exact Or.inr (by omega)
    split at h
    · rename_i n
      simp only [Option.some.injEq] at h
      subst h
      obtain ⟨hb, hΦ1, hact1, hret⟩ := key _ rfl
      refine ⟨hb, ?_, hactF hact1 hΦ1⟩
      cases r with
      | returned v =>
          obtain ⟨a, hva, hΦa⟩ := hret v rfl
          rw [evs_const1 hvs] at hva
          simp only [List.cons.injEq, and_true] at hva
          injection hva with h1
          injection h1 with h2
          subst h2
          show Phi st + bd (b || decide (n ≠ 0)) ≤ Phi s0
          by_cases ha : n = 0
          · subst ha; simp only [ne_eq, not_true_eq_false, decide_false, Bool.or_false]; omega
          · have : n.toNat ≠ 0 := fun h0 => ha (BitVec.eq_of_toNat_eq (by rw [h0]; rfl))
            have hbd : bd (b || decide (n ≠ 0)) ≤ 1 := by unfold bd; split <;> omega
            have hbd0 : bd b ≤ 1 := by unfold bd; split <;> omega
            omega
      | _ => simp only [cbd]; omega
    · simp only [Option.some.injEq] at h
      subst h
      rename_i x _
      obtain ⟨hb, hΦ1, hact1, -⟩ := key _ rfl
      exact ⟨hb, by have := cbd_le b r; omega, hactF hact1 hΦ1⟩
    · cases h
  · split at h
    · rename_i f' sg cs hfind
      split at h
      · rename_i hok
        simp only [Option.some.injEq] at h
        subst h
        have hmem := List.mem_of_find?_eq_some hfind
        have hname : f' = f := by simpa using List.find?_some hfind
        subst hname
        refine ⟨fun vs s r t => SumRelX guestC H sg (fun _ s Γ => ReqOK cs s Γ)
            (fun vs s Γ a => ProtCell guestC Γ a ∧ CapPW cs s Γ a) (fun _ _ _ _ _ _ => True) vs s r t ∧
            (Good (some r) → ¬ Abortive r → t.globals.lookup gFrame = s.globals.lookup gFrame),
          FunSpec.and (sumSpecA_relX (hT _ _ _ hmem)) (hfp f' hok.2.2.2.2.2.2.1), ?_⟩
        intro u0 hu vs hvs callee r st ⟨hR, hfk⟩ hg hna
        exact (kOK_gk hF.hooks).mono _ _ _
          (gk_plain hF hfs hgw hok hu hvs hR (hfk hg hna) hg hna) (cbd_le b r)
      · cases h
    · cases h

end calls

/-! ## Handlers -/

section handlers
variable {H : Hooks σ}

/-- **An accepted handler is a `run_frames` step**: `QStepX` (a return lowers `Φ`, an `EvmErr`
keeps `Φ` and the chain extension), from `PreOpX`. -/
theorem gc_jSpec (hC : X.code.lookup = guestCode) (hF : FrameCfg guestC H tEV tCK)
    {tab : CTab} {fp gwE : List MlS} (hT : CTabSound σ X guestC H tab)
    (hfp : ∀ f ∈ fp, KeepsFp σ X f) (hcg : KeepsFp σ X (nm "charge_gas")) {f : MlS}
    {ps : List (MlS × ShapeHOL)} {body : ProgHOL 64} {sh : ShapeHOL}
    (hcode : guestCode f = some (ps, body, sh)) {b : Bool}
    (hchk : gc ⟨tab, fp, gwE⟩ false body = some b) (M : Nat) :
    JSpec σ X guestC H f (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ)
      (QStepX guestC tEV tCK GP GR) := by
  intro vs body' callee rs hl s0 hs0 hloc r hr hg hna Γ hG hpre
  obtain ⟨⟨⟨fs, hch, hE⟩, -, hrdy⟩, hJ⟩ := hpre
  rw [hC] at hl
  obtain ⟨ps', hps, -⟩ := lookupCode_k hl
  rw [hcode] at hps
  simp only [Option.some.injEq, Prod.mk.injEq] at hps
  obtain ⟨-, rfl, -⟩ := hps
  obtain ⟨e, c, rest, hfs, -, -, -⟩ := hch.chain
  obtain ⟨p, hps0, -⟩ := id hG
  have hk0 : GK H gwE Γ s0 p fs (bd false) s0 :=
    ⟨⟨hJ, Γ, p, runT_refl hG hps0, hch, hE⟩, by simp [bd], Or.inl rfl⟩
  have H0 := gc_sound (kOK_gk hF.hooks) (callSem_gk hC hF hT hfp hcg hfs (fun g h => h)) body
    false b hchk s0 hk0 s0 hs0 rfl (by rw [hr]; exact hg)
  rw [hr] at H0
  obtain ⟨⟨hJt, Γ', p', hrun, hch', hE'⟩, hΦt, hactt⟩ := H0.2 r rfl hna
  have ha0 : act s0 = 1 := by unfold act; rw [if_pos hrdy]
  refine ⟨Γ', hrun.2.2.2.2.2.1, ⟨fun v hv => ?_, fun v hv => ?_⟩, fun _ _ => hJt, fun _ _ => hJt,
    fun _ _ => keepH_of_runT hrun, fun _ _ => keepH_of_runT hrun,
    fun _ _ => rootK_of_same hch.chain hch'.chain, fun _ _ => rootK_of_same hch.chain hch'.chain,
    fun _ _ => bkeep_of_runT hrun, fun _ _ => bkeep_of_runT hrun⟩
  · subst hv
    exact ⟨⟨fs, hch', hE'⟩, by simp only [rbd] at hΦt; omega⟩
  · subst hv
    refine ⟨⟨fs, hch', hE'⟩, ?_⟩
    simp only [rbd] at hΦt
    rcases hactt with h | h
    · rw [h, ha0]; omega
    · omega

end handlers

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.kOK_gk
#print axioms InitECandidate.Solver.MemSafe.Frames.kc_core
#print axioms InitECandidate.Solver.MemSafe.Frames.gk_plain
#print axioms InitECandidate.Solver.MemSafe.Frames.gk_charge
#print axioms InitECandidate.Solver.MemSafe.Frames.callSem_gk
#print axioms InitECandidate.Solver.MemSafe.Frames.gc_jSpec
