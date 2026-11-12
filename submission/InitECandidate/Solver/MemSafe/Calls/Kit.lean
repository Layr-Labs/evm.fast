import InitECandidate.Solver.MemSafeFrames
import InitECandidate.Solver.MemSafe.Ops.All
import InitECandidate.Solver.MemSafe.Ops2.All
import InitECandidate.Solver.MemSafe.Calls.Dlg
import InitECandidate.Solver.MemSafe.Hooks.Rec
import InitECandidate.Solver.MemSafe.Frames.BKeep2

/-!
# The CALL handlers' Hoare kit (frames14)

The CALL handlers end in `generic_call`, which may push a child frame: the final chain is not the
entry chain, so `gk_opStepB` (whose body post `GQ (GK … fs)` fixes the chain) does not apply.

* **`QCall Γ0 s0`**: the body post at `JSpec` level (any result: `G` and `QStepX`);
  `qcall_loc`; **`opStepB_qcall`** (`OpStepB` from a body proof against `QCall`);
  `qcall_of_gk` (a `GK d` state closes any result with `rbd r ≤ d`).
* **`KCall … Bs d u`**: `GK d u` with the `BufOK 20` of the blocks `Bs` in the same run typing;
  `kcall_gk`, `kcall_of_gk`, `kcall_congr`, `kcall_mono`.
* **`kc_coreB`**: `kc_coreK` plus the `BufOK` transport.
* `kcall_tab`: a tab26 callee step (`PlainOKB`) on `KCall`, with the kept running-EV `prot`
  slots.
* `hq_decCall` / `hq_callD`: `var x = f(args); k` / `f(args); k` against any `FunSpec` and any
  locals-free post.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Calls
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-! ## The body post -/

/-- **The handler body's post**: every non-abortive result ends in a `G` state with `QStepX`. -/
def QCall (Γ0 : Gam) (s0 : State σ) (ro : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ r, ro = some r → ¬ Abortive r → ∃ Γ', G guestC (Hooks.guestHooksR (σ := σ)) Γ' t ∧
    QStepX guestC tEV tCK GP GR [] s0 Γ0 r t Γ'

theorem qcall_loc {Γ0 : Gam} {s0 : State σ} {ro : Option (PanSemResultExact 64)} {t : State σ}
    (h : QCall Γ0 s0 ro t) (l : Locs) : QCall Γ0 s0 ro { t with locals := l } := by
  intro r hr hna
  obtain ⟨Γ', hG, hq⟩ := h r hr hna
  exact ⟨Γ', (G_locFree Hooks.frameCfg_guestHooksR.hooks t l t.clock).mpr hG,
    qStepX_congr (t := t) (t' := { t with locals := l }) rfl rfl hq⟩

/-- **A handler's bounded step spec from a body proof against `QCall`.** -/
theorem opStepB_qcall {f : MlS} {ps : List (MlS × ShapeHOL)} {body : ProgHOL 64} {sh : ShapeHOL}
    (hcode : guestCode f = some (ps, body, sh))
    (hbody : ∀ (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (fs : List Frame) (e c : BitVec 64)
      (rest : List Frame), fs = (e, c) :: rest → Ready s0 → Phi s0 < 2 ^ 64 →
      GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs 0 s0 →
        HoareG σ guestCtx (fun t => t = s0) body (QCall Γ0 s0)) :
    OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) f := by
  intro M hM vs body' callee rs hl s0 hs0 hloc r hr hg hna Γ hG hpre
  obtain ⟨⟨⟨fs, hch, hE⟩, hΦM, hrdy⟩, hJ⟩ := hpre
  rw [guestCtx_code] at hl
  obtain ⟨ps', hps, -⟩ := lookupCode_k hl
  rw [hcode] at hps
  simp only [Option.some.injEq, Prod.mk.injEq] at hps
  obtain ⟨-, rfl, -⟩ := hps
  obtain ⟨e, c, rest, hfs, -, -, -⟩ := hch.chain
  obtain ⟨p, hps0, -⟩ := id hG
  have hk0 : GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ s0 p fs 0 s0 :=
    ⟨⟨hJ, Γ, p, runT_refl hG hps0, hch, hE⟩, by omega, Or.inl rfl⟩
  have H0 := hbody Γ s0 p fs e c rest hfs hrdy (by omega) hk0 s0 hs0 rfl (by rw [hr]; exact hg)
  rw [hr] at H0
  exact H0 r rfl hna

/-- A `GK d` state closes every result with `rbd r ≤ d`. -/
theorem qcall_of_gk {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    [hs0 : Fact (ChainOf s0 fs)] (ha0 : act s0 = 1) {d : Nat} {t : State σ}
    (hk : GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs d t) {r : PanSemResultExact 64}
    (hd : rbd r ≤ d) : QCall Γ0 s0 (some r) t := by
  intro r' hr' hna
  cases hr'
  obtain ⟨⟨hJt, Γ1, p1, hrun, hch, hE⟩, hΦ, hact⟩ := hk
  refine ⟨Γ1, hrun.2.2.2.2.2.1, ⟨fun v hv => ⟨⟨fs, hch, hE⟩, ?_⟩, fun v hv => ⟨⟨fs, hch, hE⟩, ?_⟩⟩,
    fun _ _ => hJt, fun _ _ => hJt, fun _ _ => keepH_of_runT hrun, fun _ _ => keepH_of_runT hrun,
    fun _ _ => rootK_of_same hs0.out hch.chain, fun _ _ => rootK_of_same hs0.out hch.chain,
    fun _ _ => bkeep_of_runT hrun, fun _ _ => bkeep_of_runT hrun⟩
  · subst hv; simp only [rbd] at hd; omega
  · rcases hact with h | h
    · rw [h, ha0]; omega
    · omega

/-! ## The tracked facts with blocks -/

section kc
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}

/-- **`GK d` with the `BufOK 20` blocks `Bs`** (in the run's typing). -/
def KCall (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (fs : List Frame) (Bs : List (BitVec 64))
    (d : Nat) (u : State σ) : Prop :=
  JrNZ u ∧ (∃ Γ1 p1, RunT guestC (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 Γ1 u p0 p1 ∧
    ChainL guestC tEV tCK Γ1 u fs ∧ ChainE GP GR Γ1 u fs ∧
    ∀ b ∈ Bs, BufOK guestC Γ1 p1 b.toNat 20) ∧
  Phi u + d ≤ Phi s0 ∧ (act u = act s0 ∨ Phi u + 1 ≤ Phi s0)

theorem kcall_gk {Bs : List (BitVec 64)} {d : Nat} {u : State σ} (h : KCall Γ0 s0 p0 fs Bs d u) :
    GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs d u :=
  let ⟨hJ, ⟨Γ1, p1, hrun, hch, hE, _⟩, hΦ, ha⟩ := h
  ⟨⟨hJ, Γ1, p1, hrun, hch, hE⟩, hΦ, ha⟩

theorem kcall_of_gk {d : Nat} {u : State σ}
    (h : GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs d u) : KCall Γ0 s0 p0 fs [] d u :=
  let ⟨⟨hJ, Γ1, p1, hrun, hch, hE⟩, hΦ, ha⟩ := h
  ⟨hJ, ⟨Γ1, p1, hrun, hch, hE, fun b hb => by cases hb⟩, hΦ, ha⟩

theorem kcall_congr {Bs : List (BitVec 64)} {d : Nat} {u t : State σ}
    (h : KCall Γ0 s0 p0 fs Bs d u) (hm : t.memory = u.memory) (hg : t.globals = u.globals)
    (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) : KCall Γ0 s0 p0 fs Bs d t := by
  obtain ⟨hJ, ⟨Γ1, p1, hrun, hch, hE, hB⟩, hΦ, ha⟩ := h
  refine ⟨jrNZ_congr hg hJ, ⟨Γ1, p1, runT_same Hooks.frameCfg_guestHooksR.hooks hrun hm hg hd hbe,
    chainL_congr hm hg hch, chainE_congr hm hg hE, hB⟩, by rw [phi_congrMG hm hg]; exact hΦ, ?_⟩
  rw [act_congr hm hg, phi_congrMG hm hg]; exact ha

theorem kcall_loc {Bs : List (BitVec 64)} {d : Nat} {u : State σ} (h : KCall Γ0 s0 p0 fs Bs d u)
    (l : Locs) : KCall Γ0 s0 p0 fs Bs d { u with locals := l } :=
  kcall_congr h rfl rfl rfl rfl

theorem kcall_mono {Bs : List (BitVec 64)} {d d' : Nat} {u : State σ}
    (h : KCall Γ0 s0 p0 fs Bs d u) (hd : d' ≤ d) : KCall Γ0 s0 p0 fs Bs d' u :=
  let ⟨hJ, hR, hΦ, ha⟩ := h
  ⟨hJ, hR, by omega, ha⟩

theorem kcall_nil {Bs : List (BitVec 64)} {d : Nat} {u : State σ} (h : KCall Γ0 s0 p0 fs Bs d u) :
    KCall Γ0 s0 p0 fs [] d u :=
  kcall_of_gk (kcall_gk h)

end kc

/-! ## `kc_coreK` with the `BufOK` transport -/

section core
variable {H : Hooks σ}

theorem kc_coreB (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
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
      Frames.RetOK guestC Γ2 st.memory e) :
    ∃ Γ2 p2, RunT guestC H gw Γ0 s0 Γ2 st p0 p2 ∧ ChainL guestC tEV tCK Γ2 st fs ∧
      ChainE GP GR Γ2 st fs ∧ Phi st ≤ Phi u ∧ JrNZ st ∧ act st = act u ∧
      Q vs (callEntryStateHOLFinite u callee) Γ1 r st Γ2 ∧
      (∀ b n, BufOK guestC Γ1 p1 b n → BufOK guestC Γ2 p2 b n) ∧
      (∀ j ∈ evProtSlots, j ∉ ks → fld st.memory e (8 * j) = fld u.memory e (8 * j)) ∧
      (∀ j, j < 13 → fld st.memory c (8 * j) = fld u.memory c (8 * j)) ∧
      (∀ j ∈ evXSlots, fld st.memory e (8 * j) = fld u.memory e (8 * j)) := by
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
  have hBuf : ∀ b n, BufOK guestC Γ1 q b n → BufOK guestC Γ2 p2 b n :=
    fun b n hb => bufOK_sumCore hGe hc hb
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
  have hX : ∀ j ∈ evXSlots, fld st.memory e (8 * j) = fld u.memory e (8 * j) := by
    have hpk := sumCore_prot hcT hGe hac
    have hesz : ∀ x ∈ Γ1, x.ty = tEV → ∀ k ∈ ks, x.HasSlot k := by
      intro x hx hxt k hk
      have := ev_size hF hL hx hxt
      unfold Obj.HasSlot; have := hks8 k hk; omega
    have hk := evX_keep (C := guestC) (tEV := tEV) (tCK := tCK) hord hL (by decide) hksX hesz hpk
      hoe hoet (ev_size hF hL hoe hoet)
    intro j hj
    have := hk j hj
    rw [show oe.base = e from hoeb] at this
    exact this
  obtain ⟨e2, c2, rest2, hfs2, he2, hc2, -⟩ := hch2.chain
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs2
  obtain ⟨⟨rfl, rfl⟩, -⟩ := hfs2
  have hact : act st = act u := by
    rw [act_eq he2 hc2, act_eq (s := u) he' hc', hkC 4 (by decide),
      hkE 13 (by simp [evProtSlots]) (hnot 13 (by simp))]
    rfl
  refine ⟨Γ2, p2, hrun2, hch2, hE2, ?_, jrNZ_sumCore (by decide) hgJ hc (jrNZ_congr (s := u) rfl hJ),
    hact, hQ, hBuf, fun j hj hk => hkE j hj hk, fun j hj => hkC j hj, hX⟩
  rw [phi_locFree.entry] at hΦ2; exact hΦ2

end core

/-! ## A tab26 callee on `KCall` -/

section tab
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}
variable [Fact (ChainOf s0 fs)]

/-- **A tab26 callee keeps `KCall`** and the running EV's `prot` slots outside its EV
capability slots. -/
theorem kcall_tab (hfs : fs = (e, c) :: rest) {E : GEnv} (hgw : ∀ g ∈ E.gw, g ∈ [Hooks.gJn])
    {f : MlS} {sg : Sig} {cs : List Cap} {n : Nat} (hok : PlainOKB E f sg cs n)
    {Bs : List (BitVec 64)} {d : Nat} {u : State σ} (hu : KCall Γ0 s0 p0 fs Bs d u)
    {vs : List (ValueHOL 64)}
    (hA : ∀ (Γ1 : Gam) (p1 : Ptrs),
      RunT guestC (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 Γ1 u p0 p1 →
      ChainL guestC tEV tCK Γ1 u fs → ChainE GP GR Γ1 u fs →
      (∀ b ∈ Bs, BufOK guestC Γ1 p1 b.toNat 20) → ArgsOK guestC Γ1 p1 sg.params vs)
    {callee : Locs} {r : PanSemResultExact 64} {st : State σ}
    (hR : SumRelX guestC (Hooks.guestHooksR (σ := σ)) sg (fun _ s Γ => ReqOK cs s Γ)
      (fun vs s Γ a => ProtCell guestC Γ a ∧ CapPW cs s Γ a) (fun _ _ _ _ _ _ => True) vs
      (callEntryStateHOLFinite u callee) r st)
    (hfk : st.globals.lookup gFrame = (callEntryStateHOLFinite u callee).globals.lookup gFrame)
    (hg : Good (some r)) (hna : ¬ Abortive r) :
    KCall Γ0 s0 p0 fs Bs d st ∧
      (∀ j ∈ evProtSlots, j ∉ evKs cs → fld st.memory e (8 * j) = fld u.memory e (8 * j)) ∧
      fld st.memory e 112 = fld u.memory e 112 := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  obtain ⟨hlen, hsgw, hev, hcc, hjo, -, hcs, hks⟩ := hok
  obtain ⟨hJ, ⟨Γ1, p1, hrun, hch, hE, hB⟩, hΦ, hact⟩ := hu
  obtain ⟨o, hevo, -⟩ := gk_head hfs hch
  have hG1 := hrun.2.2.2.2.2.1
  obtain ⟨Γ2, p2, hrun2, hch2, hE2, hΦ2, hJ2, hact2, -, hBuf, hkE, -, hX⟩ := kc_coreB hF hfs
    (fun g h => hgw g (hsgw g h)) ⟨hev, hcc⟩ hjo (ks := evKs cs)
    (fun k hk => (hks k hk).1)
    (fun j hj hjk => (hks j hjk).2 (ksBad_3 j hj))
    (fun k hk hkx => (hks k hk).2 (ksBad_X k hkx))
    hrun hch hE hJ hR hfk hg hna
    (hA Γ1 p1 hrun hch hE hB)
    (reqOK_cs hG1 hJ hevo hcs)
    (fun a _ hw => capPW_cs (vs := vs) hF ((G_locFree hF.hooks u _ _).mpr hG1) hcs
      (fun k hk => (hks k hk).1) hw)
    (Or.inl ⟨fun h => (hks 8 h).2 (by decide), fun h => (hks 24 h).2 (by decide)⟩)
    (Or.inl ⟨fun h => (hks 18 h).2 (by decide), fun h => (hks 27 h).2 (by decide)⟩)
  refine ⟨⟨hJ2, ⟨Γ2, p2, hrun2, hch2, hE2, fun b hb => hBuf _ _ (hB b hb)⟩, by omega, ?_⟩, hkE,
    hX 14 (by decide)⟩
  rw [hact2]; omega

end tab

/-! ## Calls against any spec and any locals-free post -/

section calls
variable {Q : Option (PanSemResultExact 64) → State σ → Prop}

/-- **`var rn = f(args); k`** against a `FunSpec` `R` and a locals-free post. -/
theorem hq_decCall {f rn : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : FunSpec σ guestCtx f R)
    (hQ : ∀ ro (t : State σ) (l : Locs), Q ro t → Q ro { t with locals := l }) {u0 : State σ}
    (habn : ∀ vs, evs u0 args = some vs → ∀ callee r st,
      R vs (callEntryStateHOLFinite u0 callee) r st → Abn r → Q (some r) st)
    (hk : ∀ vs, evs u0 args = some vs → ∀ callee v st,
      R vs (callEntryStateHOLFinite u0 callee) (.returned v) st →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite rn v { st with locals := u0.locals }) k Q) :
    HoareG σ guestCtx (fun t => t = u0) (.decCall rn sh f args k) Q := by
  refine hoareG_decCall hf ?_ ?_
  · intro s _ hs vs hvs callee v st hR _ hsh
    subst s
    exact hoareG_conseq (hk vs hvs callee v st hR hsh) (fun _ _ h => h)
      fun r t _ _ hq => hQ r t _ hq
  · intro s _ hs vs hvs callee r st hR _ habn'
    subst s
    exact hQ _ _ _ (habn vs hvs callee r st hR habn')

/-- **`f(args); k`** against a `FunSpec` `R` and a locals-free post. -/
theorem hq_callD {f : MlS} {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : FunSpec σ guestCtx f R)
    (hQ : ∀ r (t : State σ) (l : Locs), Q (some r) t → Q (some r) { t with locals := l })
    {u0 : State σ}
    (habn : ∀ vs, evs u0 args = some vs → ∀ callee r st,
      R vs (callEntryStateHOLFinite u0 callee) r st → Abn r → Q (some r) st)
    (hk : ∀ vs, evs u0 args = some vs → ∀ callee v st,
      R vs (callEntryStateHOLFinite u0 callee) (.returned v) st →
      HoareG σ guestCtx (fun t => t = { st with locals := u0.locals }) k Q) :
    HoareG σ guestCtx (fun t => t = u0) (.seq (callD f args) k) Q := by
  refine hoareG_seq (R := fun ro t => (ro = none ∧ ∃ vs callee v st, evs u0 args = some vs ∧
      R vs (callEntryStateHOLFinite u0 callee) (.returned v) st ∧
      t = { st with locals := u0.locals }) ∨ (ro ≠ none ∧ Q ro t)) (hoareG_callD hf ?_ ?_) ?_ ?_
  · intro s _ hs vs hvs callee v st hR _
    subst s
    exact Or.inl ⟨rfl, vs, callee, v, st, hvs, hR, rfl⟩
  · intro s _ hs vs hvs callee r st hR _ habn'
    subst s
    exact Or.inr ⟨by simp, hQ _ _ _ (habn vs hvs callee r st hR habn')⟩
  · intro r t _ hr _ h
    rcases h with ⟨h, -⟩ | ⟨-, h⟩
    · exact absurd h hr
    · exact h
  · intro t ht hP hg
    rcases hP with ⟨-, vs, callee, v, st, hvs, hR, rfl⟩ | ⟨h, -⟩
    · exact hk vs hvs callee v st hR _ ht rfl hg
    · exact absurd rfl h

end calls

end InitECandidate.Solver.MemSafe.Calls

#print axioms InitECandidate.Solver.MemSafe.Calls.qcall_loc
#print axioms InitECandidate.Solver.MemSafe.Calls.opStepB_qcall
#print axioms InitECandidate.Solver.MemSafe.Calls.qcall_of_gk
#print axioms InitECandidate.Solver.MemSafe.Calls.kc_coreB
#print axioms InitECandidate.Solver.MemSafe.Calls.kcall_tab
#print axioms InitECandidate.Solver.MemSafe.Calls.hq_decCall
#print axioms InitECandidate.Solver.MemSafe.Calls.hq_callD
