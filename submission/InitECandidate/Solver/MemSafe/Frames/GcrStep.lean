import InitECandidate.Solver.MemSafe.Frames.GcrCode
import InitECandidate.Solver.MemSafe.Frames.BKeep2

/-!
# Steps on a fixed chain with tracked address blocks (frames10, task 2)

`generic_create` (and the CREATE handlers) run on the running frame `(e, c)` of a fixed chain `fs`
and pass address blocks (`buf 20`) to state callees. The tracked facts:

* **`KG … Bs d u`**: `JrNZ`, a run from the entry, `ChainL` / `ChainE GP GR` of `fs`, `Φ` lowered by
  at least `d`, every block of `Bs` `BufOK 20`, the running frame's stack slots (`EV 16`,
  `EV 232`) unchanged;
* **`KF … u`**: the final facts (a run, `ChainX`, `Φ ≤ Φ_entry + 2`).

* **`kg_core`**: one summarized call (`prot` writes in `PWtopM ks`, `ks` avoiding the memory /
  running / extension slots, gas and `RETDATA` either untouched or re-established by the post)
  keeps the chain, its extension, `JrNZ`, every `BufOK`, and the EV `prot` slots outside `ks`;
* **`kg_top`**: a step confined to the running frame's driver cells (`TopCells`);
* **`hoareG_kgCallD`** / **`hoareG_kgDecCall`**: the two call forms, for any locals-free target
  `K` built from `kg_core`'s facts.
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

/-- **`generic_create`'s tracked facts.** -/
def KG (H : Hooks σ) (gw : List MlS) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (fs : List Frame)
    (e : BitVec 64) (Bs : List (BitVec 64)) (d : Nat) (u : State σ) : Prop :=
  JrNZ u ∧ ∃ Γ1 p1, RunT guestC H gw Γ0 s0 Γ1 u p0 p1 ∧ ChainL guestC tEV tCK Γ1 u fs ∧
    ChainE GP GR Γ1 u fs ∧ Phi u + d ≤ Phi s0 ∧ (∀ b ∈ Bs, BufOK guestC Γ1 p1 b.toNat 20) ∧
    fld u.memory e 16 = fld s0.memory e 16 ∧ fld u.memory e 232 = fld s0.memory e 232

/-- **The final facts** (`Φ` may exceed the entry's by 2: a pushed child's weight). -/
def KF (H : Hooks σ) (gw : List MlS) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (u : State σ) : Prop :=
  ∃ Γ' p', RunT guestC H gw Γ0 s0 Γ' u p0 p' ∧ ChainX guestC tEV tCK GP GR Γ' u ∧
    Phi u ≤ Phi s0 + 2 ∧ RootK s0 u

section
variable {H : Hooks σ}

theorem kg_same (hH : HooksLawful guestC H) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e : BitVec 64} {Bs : List (BitVec 64)} {d : Nat}
    {u t : State σ} (h : KG H gw Γ0 s0 p0 fs e Bs d u) (hm : t.memory = u.memory)
    (hg : t.globals = u.globals) (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) :
    KG H gw Γ0 s0 p0 fs e Bs d t := by
  obtain ⟨hJ, Γ1, p1, hrun, hch, hE, hΦ, hB, h16, h232⟩ := h
  refine ⟨jrNZ_congr hg hJ, Γ1, p1, runT_same hH hrun hm hg hd hbe, chainL_congr hm hg hch,
    chainE_congr hm hg hE, by rw [phi_congrMG hm hg]; exact hΦ, hB, by rw [hm]; exact h16,
    by rw [hm]; exact h232⟩

theorem kg_locF (hH : HooksLawful guestC H) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e : BitVec 64} {Bs : List (BitVec 64)} {d : Nat} :
    ∀ (t : State σ) (l : Locs), KG H gw Γ0 s0 p0 fs e Bs d t →
      KG H gw Γ0 s0 p0 fs e Bs d { t with locals := l } :=
  fun _ _ h => kg_same hH h rfl rfl rfl rfl

theorem kf_same (hH : HooksLawful guestC H) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {u t : State σ} (h : KF H gw Γ0 s0 p0 u) (hm : t.memory = u.memory)
    (hg : t.globals = u.globals) (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) :
    KF H gw Γ0 s0 p0 t := by
  obtain ⟨Γ1, p1, hrun, hx, hΦ, hRt⟩ := h
  exact ⟨Γ1, p1, runT_same hH hrun hm hg hd hbe, chainX_congr hm hg hx,
    by rw [phi_congrMG hm hg]; exact hΦ, rootK_congr rfl rfl hm hg hRt⟩

theorem kf_locF (hH : HooksLawful guestC H) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} : ∀ (t : State σ) (l : Locs), KF H gw Γ0 s0 p0 t → KF H gw Γ0 s0 p0 { t with locals := l } :=
  fun _ _ h => kf_same hH h rfl rfl rfl rfl

theorem kf_of_kg {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    [hs0 : Fact (ChainOf s0 fs)] {e : BitVec 64} {Bs : List (BitVec 64)} {d : Nat} {u : State σ}
    (h : KG H gw Γ0 s0 p0 fs e Bs d u) : KF H gw Γ0 s0 p0 u :=
  let ⟨_, Γ1, p1, hrun, hch, hE, hΦ, _⟩ := h
  ⟨Γ1, p1, hrun, ⟨fs, hch, hE⟩, by omega, rootK_of_same hs0.out hch.chain⟩

/-- **One summarized call on the fixed chain `fs`.** -/
theorem kg_core (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
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
      ChainE GP GR Γ2 st fs ∧ Phi st ≤ Phi u ∧ JrNZ st ∧
      (∀ b n, BufOK guestC Γ1 p1 b n → BufOK guestC Γ2 p2 b n) ∧
      (∀ j ∈ evProtSlots, j ∉ ks → fld st.memory e (8 * j) = fld u.memory e (8 * j)) ∧
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
  have hBuf : ∀ b n, BufOK guestC Γ1 q b n → BufOK guestC Γ2 p2 b n :=
    fun b n hb => bufOK_sumCore hGe hc hb
  subst hfs
  have hgas' : (8 ∉ ks ∧ 24 ∉ ks) ∨ (fld st.memory e 64).toNat + (fld st.memory e 192).toNat ≤
      (fld (callEntryStateHOLFinite u callee).memory e 64).toNat +
        (fld (callEntryStateHOLFinite u callee).memory e 192).toNat :=
    hgas.imp id fun h => h Γ2 hQ
  obtain ⟨hch2, hΦ2, -, hkE⟩ := pa_coreX hF hGe hche hks8 hnot hgwE hcT hac hfp hgas'
    (hrd.imp id fun h => h Γ2 hQ)
  obtain ⟨e', c', rest', hfs', he', -, -⟩ := hche.chain
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs'
  obtain ⟨⟨he1, -⟩, -⟩ := hfs'
  rw [← he1] at he'
  obtain ⟨oe, hoe, hoeb, hoet⟩ := (hche.objs (e, c) (List.mem_cons_self ..)).1
  have hE2 := chainE_sumCoreM hF xCfg_guest (by decide) hks8 hksX hGe hc hac
    (fun a hp hw => hpw a hp hw) he' ⟨oe, hoe, hoeb, hoet⟩ hche.objs hEe
  refine ⟨Γ2, p2, hrun2, hch2, hE2, ?_, jrNZ_sumCore (by decide) hgJ hc (jrNZ_congr (s := u) rfl hJ),
    hBuf, hkE, hQ⟩
  rw [phi_locFree.entry] at hΦ2; exact hΦ2

/-- **A step confined to the running frame's driver cells.** -/
theorem kg_top (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame}
    (hfs : fs = (e, c) :: rest) {Γ1 : Gam} {p1 : Ptrs} {u t : State σ}
    (hrun : RunT guestC H gw Γ0 s0 Γ1 u p0 p1) (hch : ChainL guestC tEV tCK Γ1 u fs)
    (hE : ChainE GP GR Γ1 u fs) (hmod : ModifiesOnly (TopCells e c) u.memory t.memory)
    (hglob : t.globals = u.globals) (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) :
    RunT guestC H gw Γ0 s0 Γ1 t p0 p1 ∧ ChainL guestC tEV tCK Γ1 t fs ∧ ChainE GP GR Γ1 t fs ∧
      wsum t.memory rest = wsum u.memory rest ∧ fld t.memory e 16 = fld u.memory e 16 ∧
      fld t.memory e 232 = fld u.memory e 232 := by
  have hG1 := hrun.2.2.2.2.2.1
  obtain ⟨p, hrunw, hch2, hrest⟩ := top_write (gw := gw) hF hG1 hch hfs hmod hglob hd hbe
  have ⟨q, hq, hord, hL, _⟩ := hG1
  obtain rfl : q = p1 := Option.some.inj (hq.symm.trans hrun.2.1)
  obtain rfl : p = q := Option.some.inj (hrunw.1.symm.trans hrun.2.1)
  have htop : (e, c) ∈ fs := by rw [hfs]; exact List.mem_cons_self ..
  obtain ⟨oe, hoe, hoeb, hoet⟩ := ev_obj hch htop
  obtain ⟨oc, hoc, hocb, hoct⟩ := ck_obj hch htop
  dsimp only at hoeb hocb
  subst hoeb hocb
  have hse := ev_size hF hL hoe hoet
  have hsc := ck_size hF hL hoc hoct
  have hne : oe.base ≠ oc.base := base_ne_of_ty hL hoe hoc (by rw [hoet, hoct]; exact hF.ne)
  have keepE : ∀ k, k < 280 → (∀ j ∈ evDriverSlots, k ≠ 8 * j) →
      fld t.memory oe.base k = fld u.memory oe.base k := fun k hk hj =>
    fld_mod hmod (not_topCells hord hL hoe hoc hoe hse hsc (by omega) (Or.inr hj) (Or.inl hne))
  have hbk : BKeep guestC Γ1 u t := by
    refine bkeep_of_keepTys fun o ho hty k hk' hpr => ?_
    have hi : 8 * k < o.size := by unfold Obj.HasSlot at hk'; omega
    have hbe : o.base ≠ oe.base := base_ne_of_ty hL ho hoe
      (by intro h; apply hF.evK; rw [← hoet, ← h]; exact hty)
    have hbc : o.base ≠ oc.base := base_ne_of_ty hL ho hoc
      (by intro h; apply hF.ckK; rw [← hoct, ← h]; exact hty)
    have := hmod _ (not_topCells hord hL hoe hoc ho hse hsc hi (Or.inl hbe) (Or.inl hbc))
    unfold rd Obj.cell
    rw [this]
  refine ⟨runT_trans hrun (runT_of_run hrunw hbk), hch2,
    chainE_top hF xCfg_guest (by decide) hG1 hch hfs hmod hglob hE, hrest,
    keepE 16 (by omega) (by decide), keepE 232 (by omega) (by decide)⟩

/-- **Eon: `kg_top` with `EV_OUTPUT_N` of the running frame written (bounded word `hv`).** -/
theorem kg_top16 (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame}
    (hfs : fs = (e, c) :: rest) {Γ1 : Gam} {p1 : Ptrs} {u t : State σ}
    (hrun : RunT guestC H gw Γ0 s0 Γ1 u p0 p1) (hch : ChainL guestC tEV tCK Γ1 u fs)
    (hE : ChainE GP GR Γ1 u fs) (hmod : ModifiesOnly (TopCells16 e c) u.memory t.memory)
    (hv : (rd t.memory (e + BitVec.ofNat 64 128)).toNat < 2 ^ 32)
    (hglob : t.globals = u.globals) (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) :
    RunT guestC H gw Γ0 s0 Γ1 t p0 p1 ∧ ChainL guestC tEV tCK Γ1 t fs ∧ ChainE GP GR Γ1 t fs ∧
      wsum t.memory rest = wsum u.memory rest ∧ fld t.memory e 16 = fld u.memory e 16 ∧
      fld t.memory e 232 = fld u.memory e 232 := by
  have hG1 := hrun.2.2.2.2.2.1
  obtain ⟨p, hrunw, hch2, hrest⟩ := top_write16 (gw := gw) hF hG1 hch hfs hmod hv hglob hd hbe
  have ⟨q, hq, hord, hL, _⟩ := hG1
  obtain rfl : q = p1 := Option.some.inj (hq.symm.trans hrun.2.1)
  obtain rfl : p = q := Option.some.inj (hrunw.1.symm.trans hrun.2.1)
  have htop : (e, c) ∈ fs := by rw [hfs]; exact List.mem_cons_self ..
  obtain ⟨oe, hoe, hoeb, hoet⟩ := ev_obj hch htop
  obtain ⟨oc, hoc, hocb, hoct⟩ := ck_obj hch htop
  dsimp only at hoeb hocb
  subst hoeb hocb
  have hse := ev_size hF hL hoe hoet
  have hsc := ck_size hF hL hoc hoct
  have hne : oe.base ≠ oc.base := base_ne_of_ty hL hoe hoc (by rw [hoet, hoct]; exact hF.ne)
  have keepE : ∀ k, k < 280 → (∀ j ∈ evDriverSlots16, k ≠ 8 * j) →
      fld t.memory oe.base k = fld u.memory oe.base k := fun k hk hj =>
    fld_mod hmod (not_topCells16 hord hL hoe hoc hoe hse hsc (by omega) (Or.inr hj) (Or.inl hne))
  have hbk : BKeep guestC Γ1 u t := by
    refine bkeep_of_keepTys fun o ho hty k hk' hpr => ?_
    have hi : 8 * k < o.size := by unfold Obj.HasSlot at hk'; omega
    have hbe : o.base ≠ oe.base := base_ne_of_ty hL ho hoe
      (by intro h; apply hF.evK; rw [← hoet, ← h]; exact hty)
    have hbc : o.base ≠ oc.base := base_ne_of_ty hL ho hoc
      (by intro h; apply hF.ckK; rw [← hoct, ← h]; exact hty)
    have := hmod _ (not_topCells16 hord hL hoe hoc ho hse hsc hi (Or.inl hbe) (Or.inl hbc))
    unfold rd Obj.cell
    rw [this]
  refine ⟨runT_trans hrun (runT_of_run hrunw hbk), hch2,
    chainE_top16 hF xCfg_guest (by decide) hG1 hch hfs hmod hglob hE, hrest,
    keepE 16 (by omega) (by decide), keepE 232 (by omega) (by decide)⟩


/-- **`f(args);` on the fixed chain**, for a locals-free target `K` built from `kg_core`'s facts. -/
theorem hoareG_kgCallD (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam}
    {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame}
    (hfs : fs = (e, c) :: rest) {f : MlS} {args : List (ExpHOL 64)} {sg : Sig} {ks : List Nat}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hspec : SumSpecA σ X guestC H f sg Pre PW Q) (hkf : KeepsFp σ X f)
    (hsub : ∀ g, g ∈ sg.gw → g ∈ gw) (hgwE : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hgJ : JrOut sg.gw)
    (hks8 : ∀ k ∈ ks, 8 * k + 8 ≤ 280) (hnot : ∀ j ∈ [3, 5, 13], j ∉ ks)
    (hksX : ∀ k ∈ ks, k ∉ evXSlots) {Γ1 : Gam} {p1 : Ptrs} {u0 : State σ}
    (hrun : RunT guestC H gw Γ0 s0 Γ1 u0 p0 p1) (hch : ChainL guestC tEV tCK Γ1 u0 fs)
    (hE : ChainE GP GR Γ1 u0 fs) (hJ : JrNZ u0)
    (hA : ∀ vs, evs u0 args = some vs →
      ArgsOK guestC Γ1 p1 sg.params vs ∧ ∀ callee, Pre vs (callEntryStateHOLFinite u0 callee) Γ1)
    (hpw : ∀ vs callee a, ProtCell guestC Γ1 a → PW vs (callEntryStateHOLFinite u0 callee) Γ1 a →
      PWtopM tEV tCK ks vs (callEntryStateHOLFinite u0 callee) Γ1 a)
    (hgas : (8 ∉ ks ∧ 24 ∉ ks) ∨ ∀ vs callee r st Γ2,
      Q vs (callEntryStateHOLFinite u0 callee) Γ1 r st Γ2 →
      (fld st.memory e 64).toNat + (fld st.memory e 192).toNat ≤
        (fld u0.memory e 64).toNat + (fld u0.memory e 192).toNat)
    (hrd : (18 ∉ ks ∧ 27 ∉ ks) ∨ ∀ vs callee r st Γ2,
      Q vs (callEntryStateHOLFinite u0 callee) Γ1 r st Γ2 → RetOK guestC Γ2 st.memory e)
    {K : State σ → Prop} (hKl : ∀ (t : State σ) (l : Locs), K t → K { t with locals := l })
    (hmk : ∀ Γ2 p2 (st : State σ), RunT guestC H gw Γ0 s0 Γ2 st p0 p2 →
      ChainL guestC tEV tCK Γ2 st fs → ChainE GP GR Γ2 st fs → Phi st ≤ Phi u0 → JrNZ st →
      (∀ b n, BufOK guestC Γ1 p1 b n → BufOK guestC Γ2 p2 b n) →
      (∀ j ∈ evProtSlots, j ∉ ks → fld st.memory e (8 * j) = fld u0.memory e (8 * j)) → K st) :
    HoareG σ X (fun t => t = u0) (callD f args) (PS K u0.locals) := by
  have key : ∀ vs, evs u0 args = some vs → ∀ callee r st,
      SumRelX guestC H sg Pre (fun vs s Γ a => ProtCell guestC Γ a ∧ PW vs s Γ a) Q vs
        (callEntryStateHOLFinite u0 callee) r st →
      (Good (some r) → ¬ Abortive r →
        st.globals.lookup gFrame = (callEntryStateHOLFinite u0 callee).globals.lookup gFrame) →
      Good (some r) → ¬ Abortive r → K st := by
    intro vs hvs callee r st hR hfk hg hna
    obtain ⟨Γ2, p2, h1, h2, h3, h4, h5, h6, h7, -⟩ := kg_core hF hfs hsub hgwE hgJ hks8 hnot hksX
      hrun hch hE hJ hR (hfk hg hna) hg hna (hA vs hvs).1 ((hA vs hvs).2 callee)
      (fun a hp hw => hpw vs callee a hp hw) (hgas.imp id fun h Γ2 hq => h vs callee r st Γ2 hq)
      (hrd.imp id fun h Γ2 hq => h vs callee r st Γ2 hq)
    exact hmk Γ2 p2 st h1 h2 h3 h4 h5 h6 h7
  refine hoareG_callD (FunSpec.and (sumSpecA_relX hspec) hkf) ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨hR, hfk⟩ _
    subst hs
    exact Or.inl ⟨rfl, hKl _ _ (key vs hvs callee _ st hR hfk (by simp [Good])
      (not_abortive_ret v)), rfl⟩
  · intro s _ hs vs hvs callee r st ⟨hR, hfk⟩ _ habn
    subst hs
    refine Or.inr ⟨by simp, fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'
    cases hr'
    exact hKl _ _ (key vs hvs callee r st hR hfk (good_of_abn habn) hna)

/-- **`var rn = f(args); k` on the fixed chain.** -/
theorem hoareG_kgDecCall (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam}
    {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame}
    (hfs : fs = (e, c) :: rest) {f : MlS} {args : List (ExpHOL 64)} {sg : Sig} {ks : List Nat}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hspec : SumSpecA σ X guestC H f sg Pre PW Q) (hkf : KeepsFp σ X f)
    (hsub : ∀ g, g ∈ sg.gw → g ∈ gw) (hgwE : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hgJ : JrOut sg.gw)
    (hks8 : ∀ k ∈ ks, 8 * k + 8 ≤ 280) (hnot : ∀ j ∈ [3, 5, 13], j ∉ ks)
    (hksX : ∀ k ∈ ks, k ∉ evXSlots) {Γ1 : Gam} {p1 : Ptrs} {u0 : State σ}
    (hrun : RunT guestC H gw Γ0 s0 Γ1 u0 p0 p1) (hch : ChainL guestC tEV tCK Γ1 u0 fs)
    (hE : ChainE GP GR Γ1 u0 fs) (hJ : JrNZ u0)
    (hA : ∀ vs, evs u0 args = some vs →
      ArgsOK guestC Γ1 p1 sg.params vs ∧ ∀ callee, Pre vs (callEntryStateHOLFinite u0 callee) Γ1)
    (hpw : ∀ vs callee a, ProtCell guestC Γ1 a → PW vs (callEntryStateHOLFinite u0 callee) Γ1 a →
      PWtopM tEV tCK ks vs (callEntryStateHOLFinite u0 callee) Γ1 a)
    (hgas : (8 ∉ ks ∧ 24 ∉ ks) ∨ ∀ vs callee r st Γ2,
      Q vs (callEntryStateHOLFinite u0 callee) Γ1 r st Γ2 →
      (fld st.memory e 64).toNat + (fld st.memory e 192).toNat ≤
        (fld u0.memory e 64).toNat + (fld u0.memory e 192).toNat)
    (hrd : (18 ∉ ks ∧ 27 ∉ ks) ∨ ∀ vs callee r st Γ2,
      Q vs (callEntryStateHOLFinite u0 callee) Γ1 r st Γ2 → RetOK guestC Γ2 st.memory e)
    {K : State σ → Prop} (hKl : ∀ (t : State σ) (l : Locs), K t → K { t with locals := l })
    (hmk : ∀ Γ2 p2 (st : State σ), RunT guestC H gw Γ0 s0 Γ2 st p0 p2 →
      ChainL guestC tEV tCK Γ2 st fs → ChainE GP GR Γ2 st fs → Phi st ≤ Phi u0 → JrNZ st →
      (∀ b n, BufOK guestC Γ1 p1 b n → BufOK guestC Γ2 p2 b n) →
      (∀ j ∈ evProtSlots, j ∉ ks → fld st.memory e (8 * j) = fld u0.memory e (8 * j)) → K st)
    {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64}
    {Qk : Option (PanSemResultExact 64) → State σ → Prop}
    (hk : ∀ v (st : State σ), K st →
      HoareG σ X (fun t => t = setVarHOLFinite rn v { st with locals := u0.locals }) k
        (fun r t => Qk r { t with locals := t.locals.resVarEq (rn, u0.locals.lookup rn) }))
    (hab : ∀ ro (t : State σ), ro ≠ none → (∀ r, ro = some r → ¬ Abortive r → K t) → Qk ro t) :
    HoareG σ X (fun t => t = u0) (.decCall rn sh f args k) Qk := by
  have key : ∀ vs, evs u0 args = some vs → ∀ callee r st,
      SumRelX guestC H sg Pre (fun vs s Γ a => ProtCell guestC Γ a ∧ PW vs s Γ a) Q vs
        (callEntryStateHOLFinite u0 callee) r st →
      (Good (some r) → ¬ Abortive r →
        st.globals.lookup gFrame = (callEntryStateHOLFinite u0 callee).globals.lookup gFrame) →
      Good (some r) → ¬ Abortive r → K st := by
    intro vs hvs callee r st hR hfk hg hna
    obtain ⟨Γ2, p2, h1, h2, h3, h4, h5, h6, h7, -⟩ := kg_core hF hfs hsub hgwE hgJ hks8 hnot hksX
      hrun hch hE hJ hR (hfk hg hna) hg hna (hA vs hvs).1 ((hA vs hvs).2 callee)
      (fun a hp hw => hpw vs callee a hp hw) (hgas.imp id fun h Γ2 hq => h vs callee r st Γ2 hq)
      (hrd.imp id fun h Γ2 hq => h vs callee r st Γ2 hq)
    exact hmk Γ2 p2 st h1 h2 h3 h4 h5 h6 h7
  refine hoareG_decCall (FunSpec.and (sumSpecA_relX hspec) hkf) ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨hR, hfk⟩ _ _
    subst hs
    exact hk v st (key vs hvs callee _ st hR hfk (by simp [Good]) (not_abortive_ret v))
  · intro s _ hs vs hvs callee r st ⟨hR, hfk⟩ _ habn
    subst hs
    refine hab _ _ (by simp) fun r' hr' hna => ?_
    simp only [Option.some.injEq] at hr'
    cases hr'
    exact hKl _ _ (key vs hvs callee r st hR hfk (good_of_abn habn) hna)

end

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.kg_core
#print axioms InitECandidate.Solver.MemSafe.Frames.kg_top
#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_kgCallD
#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_kgDecCall
