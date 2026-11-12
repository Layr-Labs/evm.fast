import InitECandidate.Solver.MemSafe.Frames.GcrTail

/-!
# `generic_create`'s summary (frames10, task 2)

**`gcr_sumSpecT`**: `generic_create` has the footprint-free summary
`SumSpecT … (sgA 4 (ev :: cur_cont :: gwS)) (PreGCR M) QGCR` from `GcrCallees` (fold entries,
`set_retdata`, `increment_nonce`, `start_child`) and the hand specs of `charge_state_gas`,
`credit_state_gas_refund`, the marks and `child_message`.

Body walk (`GcrCode`): every callee keeps `KG` (the chain, its extension, the address blocks
`[sa, ca]`); `st ev + 64, gl - create_gas` lowers `Φ` by `create_gas` (the child's `MSG_GAS`), so the
pushed child keeps `Φ ≤ Φ_entry + 2`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3200000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64}

theorem argsOK_b20 {Γ : Gam} {p : Ptrs} {b : BitVec 64} (h : BufOK guestC Γ p b.toNat 20) :
    ArgsOK guestC Γ p sgB20.params [.val (.word b)] := by
  refine ⟨rfl, fun i pt w hpt hw => ?_⟩
  rcases i with _ | i
  · simp only [sgB20, List.getElem?_cons_zero, Option.some.injEq] at hpt hw
    subst hpt hw; exact ⟨b, rfl, h⟩
  · simp [sgB20] at hpt

theorem evs_lv1 {s : State σ} {x : MlS} {w : BitVec 64}
    (h : s.locals.lookup x = some (.val (.word w))) {vs : List (ValueHOL 64)}
    (hvs : evs s [lv x] = some vs) : vs = [.val (.word w)] := by
  have : evs s [lv x] = some [.val (.word w)] := evs_cons (ev_lv_eq h) evs_nil
  rw [this] at hvs; exact (Option.some.inj hvs).symm

theorem lk_sv {rn x : MlS} (h : rn ≠ x) (v : ValueHOL 64) (st : State σ) (l : Locs) :
    (setVarHOLFinite rn v { st with locals := l }).locals.lookup x = l.lookup x := by
  rw [lk_set_ne _ _ h]

section
variable {H : Hooks σ} (hD : DrvCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
  {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame} (hfs : fs = (e, c) :: rest)
variable [Fact (ChainOf s0 fs)]
include hD hfs

/-- **A `ks = []` call from a `KG` state.** -/
theorem hoareG_kgC0 {f : MlS} {args : List (ExpHOL 64)} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hspec : SumSpecA σ X guestC H f sg Pre PW Q) (hkf : KeepsFp σ X f)
    (hsub : ∀ g, g ∈ sg.gw → g ∈ gw) (hgwE : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hgJ : JrOut sg.gw)
    {Bs : List (BitVec 64)} {d : Nat} {u0 : State σ} (hu : KG H gw Γ0 s0 p0 fs e Bs d u0)
    (hA : ∀ Γ1 p1, ptrsOf u0 = some p1 → G guestC H Γ1 u0 → ChainL guestC tEV tCK Γ1 u0 fs →
      ChainE GP GR Γ1 u0 fs → (∀ b ∈ Bs, BufOK guestC Γ1 p1 b.toNat 20) → ∀ vs,
      evs u0 args = some vs →
      ArgsOK guestC Γ1 p1 sg.params vs ∧ ∀ callee, Pre vs (callEntryStateHOLFinite u0 callee) Γ1)
    (hpw : ∀ Γ1 vs callee a, G guestC H Γ1 (callEntryStateHOLFinite u0 callee) →
      ProtCell guestC Γ1 a → PW vs (callEntryStateHOLFinite u0 callee) Γ1 a →
      PWtopM tEV tCK [] vs (callEntryStateHOLFinite u0 callee) Γ1 a) :
    HoareG σ X (fun t => t = u0) (callD f args) (PS (KG H gw Γ0 s0 p0 fs e Bs d) u0.locals) := by
  have hFr := hD.fc
  have hH := hFr.hooks
  obtain ⟨hJ, Γ1, p1, hrun, hch, hE, hΦ, hB, h16, h232⟩ := hu
  refine hoareG_kgCallD hFr hfs hspec hkf hsub hgwE hgJ (ks := []) (by simp) (by simp) (by simp)
    hrun hch hE hJ (hA Γ1 p1 hrun.2.1 hrun.2.2.2.2.2.1 hch hE hB)
    (fun vs callee a hp hw => hpw Γ1 vs callee a ((G_locFree hH u0 _ _).mpr hrun.2.2.2.2.2.1) hp hw)
    (Or.inl (by simp)) (Or.inl (by simp)) (kg_locF hH) ?_
  intro Γ2 p2 st hrun2 hch2 hE2 hΦ2 hJ2 hbuf hkE
  exact ⟨hJ2, Γ2, p2, hrun2, hch2, hE2, by omega, fun b hb => hbuf _ _ (hB b hb),
    (hkE 2 (by simp [evProtSlots]) (by simp)).trans h16,
    (hkE 29 (by simp [evProtSlots]) (by simp)).trans h232⟩

/-- **A `ks = []` declaring call from a `KG` state.** -/
theorem hoareG_kgDC0 {f : MlS} {args : List (ExpHOL 64)} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hspec : SumSpecA σ X guestC H f sg Pre PW Q) (hkf : KeepsFp σ X f)
    (hsub : ∀ g, g ∈ sg.gw → g ∈ gw) (hgwE : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hgJ : JrOut sg.gw)
    {Bs : List (BitVec 64)} {d : Nat} {u0 : State σ} (hu : KG H gw Γ0 s0 p0 fs e Bs d u0)
    (hA : ∀ Γ1 p1, ptrsOf u0 = some p1 → G guestC H Γ1 u0 → ChainL guestC tEV tCK Γ1 u0 fs →
      ChainE GP GR Γ1 u0 fs → (∀ b ∈ Bs, BufOK guestC Γ1 p1 b.toNat 20) → ∀ vs,
      evs u0 args = some vs →
      ArgsOK guestC Γ1 p1 sg.params vs ∧ ∀ callee, Pre vs (callEntryStateHOLFinite u0 callee) Γ1)
    (hpw : ∀ Γ1 vs callee a, G guestC H Γ1 (callEntryStateHOLFinite u0 callee) →
      ProtCell guestC Γ1 a → PW vs (callEntryStateHOLFinite u0 callee) Γ1 a →
      PWtopM tEV tCK [] vs (callEntryStateHOLFinite u0 callee) Γ1 a)
    {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64}
    (hk : ∀ v (st : State σ), KG H gw Γ0 s0 p0 fs e Bs d st →
      HoareG σ X (fun t => t = setVarHOLFinite rn v { st with locals := u0.locals }) k
        (QB H gw Γ0 s0 p0)) :
    HoareG σ X (fun t => t = u0) (.decCall rn sh f args k) (QB H gw Γ0 s0 p0) := by
  have hFr := hD.fc
  have hH := hFr.hooks
  obtain ⟨hJ, Γ1, p1, hrun, hch, hE, hΦ, hB, h16, h232⟩ := hu
  refine hoareG_kgDecCall hFr hfs hspec hkf hsub hgwE hgJ (ks := []) (by simp) (by simp) (by simp)
    hrun hch hE hJ (hA Γ1 p1 hrun.2.1 hrun.2.2.2.2.2.1 hch hE hB)
    (fun vs callee a hp hw => hpw Γ1 vs callee a ((G_locFree hH u0 _ _).mpr hrun.2.2.2.2.2.1) hp hw)
    (Or.inl (by simp)) (Or.inl (by simp)) (kg_locF hH) ?_
    (fun v st hst => hoareG_conseq (hk v st hst) (fun _ _ h => h) (fun _ _ _ _ h => qb_locF hH h _))
    (fun ro t _ h => qb_of_kf fun r hr hna => kf_of_kg (h r hr hna))
  intro Γ2 p2 st hrun2 hch2 hE2 hΦ2 hJ2 hbuf hkE
  exact ⟨hJ2, Γ2, p2, hrun2, hch2, hE2, by omega, fun b hb => hbuf _ _ (hB b hb),
    (hkE 2 (by simp [evProtSlots]) (by simp)).trans h16,
    (hkE 29 (by simp [evProtSlots]) (by simp)).trans h232⟩

omit hD hfs in
/-- The abnormal half of a `PS` post is `QB`. -/
theorem qb_of_ps {Bs : List (BitVec 64)} {d : Nat} {L : Locs} {ro : Option (PanSemResultExact 64)}
    {t : State σ} (hro : ro ≠ none) (h : PS (KG H gw Γ0 s0 p0 fs e Bs d) L ro t) :
    QB H gw Γ0 s0 p0 ro t := by
  rcases h with ⟨h0, -⟩ | ⟨-, h⟩
  · exact absurd h0 hro
  · exact qb_of_kf fun r hr hna => kf_of_kg (h r hr hna)

end

section
variable {H : Hooks σ} (hD : DrvCfg guestC H tEV tCK) (hFo : FoldOK σ X guestC H)
  (hK : Shards.GuestHooks H) (hMH : ∀ Γ (s : State σ) o, o.ty = tMSGs → H.wf Γ s o)
  {M : Nat} {gwS gw : List MlS} (hKc : GcrCallees σ X H M gwS)
  (hgS : ∀ g, g ∈ (sgSC gwS).gw → g ∈ gw)
  {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame}
  (hfs : fs = (e, c) :: rest)
variable [Fact (ChainOf s0 fs)]
include hD hFo hK hMH hKc hgS hfs

omit hD hFo hK hMH hfs in
theorem gJn_gw : Hooks.gJn ∈ gw := hgS _ (by simp [hKc.gwJn])

omit hFo hK hMH in
/-- `increment_nonce(sender_address)` from a `KG` state. -/
theorem gcr_inc {sa ca : BitVec 64} {d : Nat} {u0 : State σ}
    (hu : KG H gw Γ0 s0 p0 fs e [sa, ca] d u0)
    (lsa : u0.locals.lookup (nm "sender_address") = some (.val (.word sa))) :
    HoareG σ X (fun t => t = u0) (callD (nm "increment_nonce") [lv (nm "sender_address")])
      (PS (KG H gw Γ0 s0 p0 fs e [sa, ca] d) u0.locals) := by
  refine hoareG_kgC0 hD hfs hKc.inc hKc.incF (fun g h => by
    simp only [List.mem_singleton] at h; subst h; exact gJn_gw hKc hgS) (by decide)
    (by decide) hu ?_ (fun _ _ _ _ _ _ h => h)
  intro Γ1 p1 _ _ _ _ hB vs hvs
  rw [evs_lv1 lsa hvs]
  exact ⟨argsOK_b20 (hB sa (by simp)), fun _ => jrNZ_congr rfl hu.1⟩

omit hFo hK hMH hgS hKc in
/-- An account function `f(contract_address)` (table entry, `sgB20`, `tblCaps`). -/
theorem gcr_acctC {f : MlS} (hf : CSumm σ X guestC H f sgB20 tblCaps) (hfF : KeepsFp σ X f)
    {Bs : List (BitVec 64)} {b : BitVec 64} (hb : b ∈ Bs) {x : MlS} {d : Nat} {u0 : State σ}
    (hu : KG H gw Γ0 s0 p0 fs e Bs d u0)
    (lx : u0.locals.lookup x = some (.val (.word b))) :
    HoareG σ X (fun t => t = u0) (callD f [lv x]) (PS (KG H gw Γ0 s0 p0 fs e Bs d) u0.locals) := by
  refine hoareG_kgC0 hD hfs hf hfF (by simp [sgB20]) (by decide) (by decide) hu ?_
    (fun _ _ _ _ hG _ hw => tblCaps_pw hG hw)
  intro Γ1 p1 _ _ _ _ hB vs hvs
  rw [evs_lv1 lx hvs]
  exact ⟨argsOK_b20 (hB b hb), fun _ => tblCaps_req⟩

omit hFo hK hMH hgS hKc in
/-- `var rn = f(x)` for an account function. -/
theorem gcr_acctDC {f : MlS} (hf : CSumm σ X guestC H f sgB20 tblCaps) (hfF : KeepsFp σ X f)
    {Bs : List (BitVec 64)} {b : BitVec 64} (hb : b ∈ Bs) {x : MlS} {d : Nat} {u0 : State σ}
    (hu : KG H gw Γ0 s0 p0 fs e Bs d u0)
    (lx : u0.locals.lookup x = some (.val (.word b))) {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64}
    (hk : ∀ v (st : State σ), KG H gw Γ0 s0 p0 fs e Bs d st →
      HoareG σ X (fun t => t = setVarHOLFinite rn v { st with locals := u0.locals }) k
        (QB H gw Γ0 s0 p0)) :
    HoareG σ X (fun t => t = u0) (.decCall rn sh f [lv x] k) (QB H gw Γ0 s0 p0) := by
  refine hoareG_kgDC0 hD hfs hf hfF (by simp [sgB20]) (by decide) (by decide) hu ?_
    (fun _ _ _ _ hG _ hw => tblCaps_pw hG hw) hk
  intro Γ1 p1 _ _ _ _ hB vs hvs
  rw [evs_lv1 lx hvs]
  exact ⟨argsOK_b20 (hB b hb), fun _ => tblCaps_req⟩

/-- **From `var reservoir`** (`gcrTail`). -/
theorem gcr_tail {sa ca cg mz nac : BitVec 64} {u : State σ}
    (hu : KG H gw Γ0 s0 p0 fs e [sa, ca] cg.toNat u)
    (lsa : u.locals.lookup (nm "sender_address") = some (.val (.word sa)))
    (lca : u.locals.lookup (nm "contract_address") = some (.val (.word ca)))
    (lcg : u.locals.lookup (nm "create_gas") = some (.val (.word cg)))
    (lmz : u.locals.lookup (nm "msize") = some (.val (.word mz)))
    (lnac : u.locals.lookup (nm "new_account_charged") = some (.val (.word nac)))
    (hmz : mz.toNat ≤ 131072)
    (hsp0 : (fld s0.memory e evSp).toNat < (fld s0.memory e evStackCap).toNat)
    (hΦM : Phi s0 + 2 ≤ M) :
    HoareG σ X (fun t => t = u) gcrTail (QB H gw Γ0 s0 p0) := by
  have hFr := hD.fc
  have hH := hFr.hooks
  unfold gcrTail
  refine hoareG_dec fun s _ hs vr _ _ => ?_
  subst hs
  refine hoareG_conseq (Q := QB H gw Γ0 s0 p0) ?_ (fun _ _ h => h) (fun _ _ _ _ h => qb_locF hH h _)
  set u1 := setVarHOLFinite (nm "reservoir") vr s with hu1d
  have hu1 : KG H gw Γ0 s0 p0 fs e [sa, ca] cg.toNat u1 := kg_locF hH _ _ hu
  have L1 : ∀ x, x ≠ nm "reservoir" → u1.locals.lookup x = s.locals.lookup x :=
    fun x hx => lk_set_ne _ _ (Ne.symm hx)
  refine hoareG_seq (R := fun ro t => ro = none ∧ KG H gw Γ0 s0 p0 fs e [sa, ca] cg.toNat t ∧
      t.locals = u1.locals)
    (gcr_stOther hFr hfs (k := 72) (Or.inl rfl) hu1 fun v hv => ⟨0, by rw [ev_cw] at hv; cases hv; rfl⟩)
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoareG_pt fun u2 h2 => ?_
  obtain ⟨-, hu2, hl2⟩ := h2
  have L2 : ∀ x, x ≠ nm "reservoir" → u2.locals.lookup x = s.locals.lookup x :=
    fun x hx => by rw [hl2]; exact L1 x hx
  refine hoareG_seq (R := PS (KG H gw Γ0 s0 p0 fs e [sa, ca] cg.toNat) u2.locals)
    (gcr_inc hD hKc hgS hfs hu2 ((L2 _ (by decide)).trans lsa))
    (fun _ _ _ hr _ h => qb_of_ps hr h) ?_
  refine hoareG_pt fun u3 h => ?_
  rcases h with ⟨-, hu3, hl3⟩ | ⟨h0, -⟩
  swap; · exact absurd rfl h0
  have L3 : ∀ x, x ≠ nm "reservoir" → u3.locals.lookup x = s.locals.lookup x :=
    fun x hx => by rw [hl3]; exact L2 x hx
  exact gcr_marks hD hFo hK hMH hKc.sc hgS hfs hu3 ((L3 _ (by decide)).trans lsa)
    ((L3 _ (by decide)).trans lca) ((L3 _ (by decide)).trans lcg) ((L3 _ (by decide)).trans lmz)
    ((L3 _ (by decide)).trans lnac) hmz hsp0 hΦM

omit hK hMH in
/-- **The undeployable branch** (`gcrUndep`): it always ends with `return 0` (or abnormally). -/
theorem gcr_undep {sa ca : BitVec 64} {d : Nat} {u : State σ}
    (hu : KG H gw Γ0 s0 p0 fs e [sa, ca] d u)
    (lsa : u.locals.lookup (nm "sender_address") = some (.val (.word sa))) :
    HoareG σ X (fun t => t = u) gcrUndep (fun ro t => ro ≠ none ∧ QB H gw Γ0 s0 p0 ro t) := by
  have hFr := hD.fc
  have hH := hFr.hooks
  unfold gcrUndep
  refine hoareG_seq (R := PS (KG H gw Γ0 s0 p0 fs e [sa, ca] d) u.locals)
    (gcr_inc hD hKc hgS hfs hu lsa) (fun _ _ _ hr _ h => ⟨hr, qb_of_ps hr h⟩) ?_
  refine hoareG_pt fun u1 h => ?_
  rcases h with ⟨-, hu1, hl1⟩ | ⟨h0, -⟩
  swap; · exact absurd rfl h0
  refine hoareG_seq (R := fun ro t => ro = none ∧ KG H gw Γ0 s0 p0 fs e [sa, ca] d t ∧
      t.locals = u1.locals)
    (gcr_stOther hFr hfs (k := 184) (Or.inr rfl) hu1 fun v hv => ev_op_word hv)
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoareG_pt fun u2 h2 => ?_
  obtain ⟨-, hu2, hl2⟩ := h2
  refine hoareG_seq (R := PS (KG H gw Γ0 s0 p0 fs e [sa, ca] d) u2.locals) ?_
    (fun _ _ _ hr _ h => ⟨hr, qb_of_ps hr h⟩) ?_
  · refine hoareG_ite ?_ ?_
    · exact hoareG_pre (gcr_credit hFr hfs hFo.hX hu2) fun _ _ h => h.1
    · exact hoareG_skip fun _ _ h => by rw [h.1]; exact Or.inl ⟨rfl, hu2, rfl⟩
  · refine hoareG_pt fun u3 h => ?_
    rcases h with ⟨-, hu3, -⟩ | ⟨h0, -⟩
    swap; · exact absurd rfl h0
    exact hoareG_conseq (gcr_push0 hFr hfs hKc.sp hKc.spF hu3) (fun _ _ h => h)
      (fun _ _ _ _ h => ⟨h.1, qb_of_kf h.2⟩)

/-- **From `var gl`** (`gcrGas`). -/
theorem gcr_gas {sa ca mz nac : BitVec 64} {u : State σ}
    (hu : KG H gw Γ0 s0 p0 fs e [sa, ca] 0 u)
    (lsa : u.locals.lookup (nm "sender_address") = some (.val (.word sa)))
    (lca : u.locals.lookup (nm "contract_address") = some (.val (.word ca)))
    (lmz : u.locals.lookup (nm "msize") = some (.val (.word mz)))
    (lnac : u.locals.lookup (nm "new_account_charged") = some (.val (.word nac)))
    (hmz : mz.toNat ≤ 131072)
    (hsp0 : (fld s0.memory e evSp).toNat < (fld s0.memory e evStackCap).toNat)
    (hΦM : Phi s0 + 2 ≤ M) :
    HoareG σ X (fun t => t = u) gcrGas (QB H gw Γ0 s0 p0) := by
  have hFr := hD.fc
  have hH := hFr.hooks
  obtain ⟨he, -⟩ := kg_head hfs hu
  unfold gcrGas
  refine hoareG_dec fun s _ hs vgl hvgl _ => ?_
  subst hs
  obtain ⟨rfl, -⟩ := ev_gLoad_eq he hvgl
  refine hoareG_conseq (Q := QB H gw Γ0 s0 p0) ?_ (fun _ _ h => h) (fun _ _ _ _ h => qb_locF hH h _)
  have lgl1 : (setVarHOLFinite (nm "gl") (.val (.word (fld s.memory e 64))) s).locals.lookup (nm "gl") =
      some (.val (.word (fld s.memory e 64))) := lk_set_self _ _ _
  refine hoareG_dec fun s1 _ hs1 vcg hvcg _ => ?_
  rw [hs1] at hvcg ⊢
  obtain ⟨y, z, hy, hz, rfl⟩ := ev_op_sub_inv hvcg
  rw [ev_lv_eq lgl1, Option.some.injEq] at hy
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hy
  subst hy
  rw [ev_shift (ev_lv_eq lgl1) (ev_cw _ 6)] at hz
  have hz' : z = fld s.memory e 64 >>> (6 : Nat) := by
    simp [Flapjack.wordShiftHOL] at hz
    exact hz.symm
  subst hz'
  refine hoareG_conseq (Q := QB H gw Γ0 s0 p0) ?_ (fun _ _ h => h) (fun _ _ _ _ h => qb_locF hH h _)
  set gl := fld s.memory e 64 with hgl
  set cg := gl - (gl >>> (6 : Nat)) with hcgd
  have hcg : cg ≤ gl := by
    have h1 : (gl >>> (6 : Nat)).toNat ≤ gl.toNat := by
      rw [BitVec.toNat_ushiftRight, Nat.shiftRight_eq_div_pow]; exact Nat.div_le_self _ _
    have h2 : gl >>> (6 : Nat) ≤ gl := by rw [BitVec.le_def]; exact h1
    rw [BitVec.le_def, hcgd, BitVec.toNat_sub_of_le h2]
    omega
  set u2 := setVarHOLFinite (nm "create_gas") (.val (.word cg))
    (setVarHOLFinite (nm "gl") (.val (.word gl)) s) with hu2d
  have hu2 : KG H gw Γ0 s0 p0 fs e [sa, ca] 0 u2 := kg_locF hH _ _ (kg_locF hH _ _ hu)
  have L2 : ∀ x, x ≠ nm "create_gas" → x ≠ nm "gl" → u2.locals.lookup x = s.locals.lookup x := by
    intro x h1 h2
    show (setVarHOLFinite _ _ _).locals.lookup x = _
    rw [lk_set_ne _ _ (Ne.symm h1)]
    exact lk_set_ne _ _ (Ne.symm h2)
  have lgl2 : u2.locals.lookup (nm "gl") = some (.val (.word (fld u2.memory e 64))) := by
    show (setVarHOLFinite _ _ _).locals.lookup _ = _
    rw [lk_set_ne _ _ (by decide)]; exact lgl1
  have lcg2 : u2.locals.lookup (nm "create_gas") = some (.val (.word cg)) := lk_set_self _ _ _
  refine hoareG_pre (P := fun t => t = u2) ?_ (fun _ _ h => h)
  refine hoareG_seq (R := fun ro t => ro = none ∧ KG H gw Γ0 s0 p0 fs e [sa, ca] (0 + cg.toNat) t ∧
      t.locals = u2.locals) (gcr_st64 hFr hfs hu2 lgl2 lcg2 hcg) (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoareG_pt fun u3 h3 => ?_
  obtain ⟨-, hu3, hl3⟩ := h3
  rw [Nat.zero_add] at hu3
  have L3 : ∀ x, x ≠ nm "create_gas" → x ≠ nm "gl" → u3.locals.lookup x = s.locals.lookup x :=
    fun x h1 h2 => by rw [hl3]; exact L2 x h1 h2
  refine gcr_acctDC hD hfs hKc.dep hKc.depF (b := ca) (by simp) hu3
    ((L3 _ (by decide) (by decide)).trans lca) fun v st hst => ?_
  set u4 := setVarHOLFinite (nm "deployable") v { st with locals := u3.locals } with hu4d
  have L4 : ∀ x, x ≠ nm "deployable" → u4.locals.lookup x = u3.locals.lookup x :=
    fun x hx => lk_sv (Ne.symm hx) _ _ _
  have hu4 : KG H gw Γ0 s0 p0 fs e [sa, ca] cg.toNat u4 := kg_locF hH _ _ (kg_locF hH _ _ hst)
  refine hoareG_seq (R := fun ro t => (ro = none ∧ t = u4) ∨ (ro ≠ none ∧ QB H gw Γ0 s0 p0 ro t))
    ?_ (fun _ _ _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)) ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_conseq (gcr_undep hD hFo hKc hgS hfs hu4 ?_) (fun _ _ h => h.1)
        (fun _ _ _ _ h => Or.inr h)
      rw [L4 _ (by decide), L3 _ (by decide) (by decide)]; exact lsa
    · exact hoareG_skip fun _ _ h => Or.inl ⟨rfl, h.1⟩
  · refine hoareG_pt fun u5 h => ?_
    rcases h with ⟨-, rfl⟩ | ⟨h0, -⟩
    swap; · exact absurd rfl h0
    refine gcr_tail hD hFo hK hMH hKc hgS hfs (nac := nac) hu4 ?_ ?_ ?_ ?_ ?_ hmz hsp0 hΦM
    · rw [L4 _ (by decide), L3 _ (by decide) (by decide)]; exact lsa
    · rw [L4 _ (by decide), L3 _ (by decide) (by decide)]; exact lca
    · rw [L4 _ (by decide), hl3]; exact lcg2
    · rw [L4 _ (by decide), L3 _ (by decide) (by decide)]; exact lmz
    · rw [L4 _ (by decide), L3 _ (by decide) (by decide)]; exact lnac

/-- **From `warm_address`** (`gcrAlive`). -/
theorem gcr_alive {sa ca mz : BitVec 64} {u : State σ}
    (hu : KG H gw Γ0 s0 p0 fs e [sa, ca] 0 u)
    (lsa : u.locals.lookup (nm "sender_address") = some (.val (.word sa)))
    (lca : u.locals.lookup (nm "contract_address") = some (.val (.word ca)))
    (lmz : u.locals.lookup (nm "msize") = some (.val (.word mz)))
    (hmz : mz.toNat ≤ 131072)
    (hsp0 : (fld s0.memory e evSp).toNat < (fld s0.memory e evStackCap).toNat)
    (hΦM : Phi s0 + 2 ≤ M) :
    HoareG σ X (fun t => t = u) gcrAlive (QB H gw Γ0 s0 p0) := by
  have hFr := hD.fc
  have hH := hFr.hooks
  unfold gcrAlive
  refine hoareG_seq (R := PS (KG H gw Γ0 s0 p0 fs e [sa, ca] 0) u.locals)
    (gcr_acctC hD hfs hKc.wa hKc.waF (b := ca) (by simp) hu lca)
    (fun _ _ _ hr _ h => qb_of_ps hr h) ?_
  refine hoareG_pt fun u1 h => ?_
  rcases h with ⟨-, hu1, hl1⟩ | ⟨h0, -⟩
  swap; · exact absurd rfl h0
  refine gcr_acctDC hD hfs hKc.al hKc.alF (b := ca) (by simp) hu1 (by rw [hl1]; exact lca)
    fun v st hst => ?_
  refine hoareG_dec fun s _ hs vn hvn _ => ?_
  rw [hs] at hvn ⊢
  rw [ev_cw, Option.some.injEq] at hvn
  subst hvn
  refine hoareG_conseq (Q := QB H gw Γ0 s0 p0) ?_ (fun _ _ h => h) (fun _ _ _ _ h => qb_locF hH h _)
  set u2 := setVarHOLFinite (nm "new_account_charged") (.val (.word (BitVec.ofNat 64 0)))
    (setVarHOLFinite (nm "alive") v { st with locals := u1.locals }) with hu2d
  have hu2 : KG H gw Γ0 s0 p0 fs e [sa, ca] 0 u2 :=
    kg_locF hH _ _ (kg_locF hH _ _ (kg_locF hH _ _ hst))
  have L2 : ∀ x, x ≠ nm "new_account_charged" → x ≠ nm "alive" →
      u2.locals.lookup x = u.locals.lookup x := by
    intro x h1 h2
    show (setVarHOLFinite _ _ _).locals.lookup x = _
    rw [lk_set_ne _ _ (Ne.symm h1), lk_sv (Ne.symm h2), hl1]
  refine hoareG_pre (P := fun t => t = u2) ?_ (fun _ _ h => h)
  -- `if alive == 0 { new_account_charged = 1; charge_state_gas(183600); }`
  let RC : Option (PanSemResultExact 64) → State σ → Prop := fun ro t =>
    (ro = none ∧ KG H gw Γ0 s0 p0 fs e [sa, ca] 0 t ∧
      (∃ nac : BitVec 64, t.locals.lookup (nm "new_account_charged") = some (.val (.word nac))) ∧
      ∀ x, x ≠ nm "new_account_charged" → x ≠ nm "alive" → t.locals.lookup x = u.locals.lookup x) ∨
    (ro ≠ none ∧ QB H gw Γ0 s0 p0 ro t)
  refine hoareG_seq (R := RC) ?_
    (fun _ _ _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)) ?_
  · unfold gcrCharge
    refine hoareG_ite ?_ ?_
    · refine hoareG_pre (P := fun t => t = u2) ?_ fun _ _ h => h.1
      refine hoareG_seq (R := fun ro t => ro = none ∧
          t = setVarHOLFinite (nm "new_account_charged") (.val (.word (BitVec.ofNat 64 1))) u2)
        ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
      · refine hoareG_assign fun s _ hs v1 hv1 _ => ?_
        rw [hs, ev_cw, Option.some.injEq] at *
        subst hv1
        exact ⟨rfl, by rw [hs]⟩
      · refine hoareG_pt fun u3 ⟨_, hu3⟩ => ?_
        subst hu3
        have hk3 : KG H gw Γ0 s0 p0 fs e [sa, ca] 0
            (setVarHOLFinite (nm "new_account_charged") (.val (.word (BitVec.ofNat 64 1))) u2) :=
          kg_locF hH _ _ hu2
        refine hoareG_conseq (gcr_csg hFr hfs hFo.hX hk3) (fun _ _ h => h) fun r t _ _ h => ?_
        rcases h with ⟨h0, hk, hl⟩ | ⟨h0, h⟩
        · refine Or.inl ⟨h0, hk, ⟨BitVec.ofNat 64 1, by rw [hl]; exact lk_set_self _ _ _⟩,
            fun x h1 h2 => ?_⟩
          rw [hl]
          show (setVarHOLFinite _ _ _).locals.lookup x = _
          rw [lk_set_ne _ _ (Ne.symm h1)]
          exact L2 x h1 h2
        · exact Or.inr ⟨h0, qb_of_kf fun r' hr' hna => kf_of_kg (h r' hr' hna)⟩
    · exact hoareG_skip fun _ _ h => by
        rw [h.1]
        exact Or.inl ⟨rfl, hu2, ⟨BitVec.ofNat 64 0, lk_set_self _ _ _⟩, L2⟩
  · refine hoareG_pt fun u3 h => ?_
    rcases h with ⟨-, hu3, ⟨nac, lnac⟩, L3⟩ | ⟨h0, -⟩
    swap; · exact absurd rfl h0
    exact gcr_gas hD hFo hK hMH hKc hgS hfs hu3 ((L3 _ (by decide) (by decide)).trans lsa)
      ((L3 _ (by decide) (by decide)).trans lca) ((L3 _ (by decide) (by decide)).trans lmz) lnac hmz
      hsp0 hΦM

end

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.gcr_tail
#print axioms InitECandidate.Solver.MemSafe.Frames.gcr_undep
#print axioms InitECandidate.Solver.MemSafe.Frames.gcr_gas
#print axioms InitECandidate.Solver.MemSafe.Frames.gcr_alive
