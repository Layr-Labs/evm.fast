import InitECandidate.Solver.MemSafe.Hooks.Defs
import InitECandidate.Solver.MemSafe.Annot.DrvCfg

/-!
# The guest hook family satisfies the hook laws

* `guestHooks_lawful : HooksLawful guestC guestHooks`: footprints are `prot` cells, and hooks
  survive every change that keeps their footprint, the protected globals, `memaddrs` and `be`
  (for tables: `tableWF_frameA`).
* `guestHooks_mono : HooksMono guestC guestHooks`.
* `guestHooks_shrinkR : HooksShrinkR guestC guestHooks refG`, the release law of interface
  rev. 6 (rev. 5's `HooksShrink`, here `HooksShrink5`, is unsatisfiable together with
  `EvHook`: `shrink_ev_absurd`).
* `own_unique`: an object owned by two table headers of `Γ` (decision C-b′) belongs to one
  header; `tabReg_disj`: the regions of two different tables of `Γ` are disjoint.
* `guestHooks_ev : EvHook guestC guestHooks sty`, `guestHooks_hookEV`, `guestHooks_hookCK`,
  and **`guestHooks_guest : GuestHooks guestHooks`** (the fold's hypothesis).
* `frameCfg_guestHooks`, `drvCfg_guestHooks`: the frame driver's configuration records.
-/

namespace InitECandidate.Solver.MemSafe.Hooks
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Struct InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.Spec

variable {σ : Type}

/-! ## Layout helpers -/

theorem gamOK_of_layout {p : Ptrs} {Γ : Gam} (hL : Layout guestC p Γ) : GamOK Γ := by
  refine ⟨fun x hx => ?_, fun x hx y hy hne => layout_disj hL hx hy hne⟩
  obtain ⟨a1, a2, a3, a4, a5⟩ := hL.1 x hx
  refine ⟨a1, a2, a3, a4, fun hr => ?_⟩
  rw [hr] at a5
  simp only [Region.Live] at a5
  unfold Obj.hi
  unfold Obj.lo at a5
  omega

theorem gamOK_sub {Γ Γs : Gam} (h : GamOK Γ) (hs : ∀ x ∈ Γs, x ∈ Γ) : GamOK Γs :=
  ⟨fun x hx => h.1 x (hs x hx), fun x hx y hy hne => h.2 x (hs x hx) y (hs y hy) hne⟩

/-- Two objects of `Γ` sharing a byte are equal. -/
theorem gam_eq {Γ : Gam} (hG : GamOK Γ) {x y : Obj} (hx : x ∈ Γ) (hy : y ∈ Γ) {n : Nat}
    (h1 : x.lo ≤ n) (h2 : n < x.hi) (h3 : y.lo ≤ n) (h4 : n < y.hi) : x = y := by
  by_contra hne
  rcases hG.2 x hx y hy hne with h | h <;> omega

theorem cellN {x : Obj} {k : Nat} (h : x.lo + 8 * k < 2 ^ 64) :
    (x.cell k).toNat = x.lo + 8 * k := by
  unfold Obj.cell Obj.lo at *
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : 8 * k < 2 ^ 64),
    Nat.mod_eq_of_lt h]

/-- A slot of a scratch object of `Γ` lies inside the object. -/
theorem scratch_cell {Γ : Gam} (hG : GamOK Γ) {x : Obj} (hx : x ∈ Γ)
    (hr : (guestC.ty x.ty).region = .scratch) {k : Nat} (hk : 8 * k + 8 ≤ x.size) :
    (x.cell k).toNat = x.lo + 8 * k ∧ x.lo ≤ (x.cell k).toNat ∧ (x.cell k).toNat < x.hi := by
  have hb := (hG.1 x hx).2.2.2.2 hr
  have hs : scratchEnd < 2 ^ 64 := by decide
  unfold Obj.hi at hb
  have e := cellN (x := x) (k := k) (by unfold Obj.lo; omega)
  refine ⟨e, ?_, ?_⟩ <;> rw [e] <;> simp only [Obj.hi, Obj.lo] at * <;> omega

/-- An aligned byte of an aligned object is one of its slot cells. -/
theorem slot_of_mem {x : Obj} {a : BitVec 64} (h8 : a.toNat % 8 = 0) (hx8 : x.lo % 8 = 0)
    (hs8 : x.size % 8 = 0) (h1 : x.lo ≤ a.toNat) (h2 : a.toNat < x.hi) :
    ∃ k, x.HasSlot k ∧ a = x.cell k := by
  refine ⟨(a.toNat - x.lo) / 8, ?_, ?_⟩
  · unfold Obj.HasSlot
    unfold Obj.hi Obj.lo at *
    omega
  · apply BitVec.eq_of_toNat_eq
    have ha := a.isLt
    rw [cellN (by unfold Obj.lo at *; omega)]
    unfold Obj.lo at *
    omega

/-! ## Type facts -/

theorem ev_scratch : (guestC.ty tEV).region = .scratch := rfl
theorem ck_scratch : (guestC.ty tCK).region = .scratch := rfl

theorem tab_minSz {t : Nat} (h : hkOf t = .tab) : (guestC.ty t).minSz = 88 :=
  hdr_minSz t (hkOf_tab h)

theorem tab_prot {t : Nat} (h : hkOf t = .tab) (k : Nat) : (guestC.ty t).slot k = .prot :=
  hdr_prot t (hkOf_tab h) k

theorem arr_prot {t : Nat} (h : IsArrTy t) (k : Nat) : (guestC.ty t).slot k = .prot := by
  rcases h with rfl | h
  · exact htas_prot k
  · exact own_prot h k

theorem tab_ne {t : Nat} (h : hkOf t = .tab) : t ≠ tEV ∧ t ≠ tCK :=
  ⟨(hdr_small t (hkOf_tab h)).1, (hdr_small t (hkOf_tab h)).2.1⟩

theorem arr_ne {t : Nat} (h : IsArrTy t) : t ≠ tEV ∧ t ≠ tCK := by
  have : tCK < ownBase := by decide
  have h0 : tEV = 0 := rfl
  have h1 : tCK = 1 := rfl
  rcases h with rfl | h
  · decide
  · exact ⟨by omega, by omega⟩

theorem arr_not_hdr {t : Nat} (h : IsArrTy t) : hkOf t ≠ .tab := by
  intro hk
  have := hdr_small t (hkOf_tab hk)
  rcases h with rfl | h
  · exact this.2.2.1 rfl
  · omega

theorem sm_prot : ∀ k ∈ smSlots, (guestC.ty tEV).slot k = .prot := by decide

theorem sm_le {k : Nat} (h : k ∈ smSlots) : k ≤ 29 := by
  simp only [smSlots, List.mem_cons, List.not_mem_nil, or_false] at h
  omega

theorem drv_le {j : Nat} (h : j ∈ evDriverSlots16) : j ≤ 24 := by
  simp only [evDriverSlots16, List.mem_cons, List.not_mem_nil, or_false] at h
  omega

theorem sm_drv {k : Nat} (hk : k ∈ smSlots) (hj : k ∈ evDriverSlots16) : False := by
  simp only [smSlots, evDriverSlots16, List.mem_cons, List.not_mem_nil, or_false] at hk hj
  omega

/-! ## Table regions lie in the table's objects -/

theorem tabTy_ne {t : Nat} (h : IsTabTy t) : t ≠ tEV ∧ t ≠ tCK := by
  rcases h with h | h
  · exact tab_ne h
  · exact arr_ne h

theorem tabTy_prot {t : Nat} (h : IsTabTy t) (k : Nat) : (guestC.ty t).slot k = .prot := by
  rcases h with h | h
  · exact tab_prot h k
  · exact arr_prot h k

/-- The aligned cell holding a byte of a table's region is in the region (the region is a
union of aligned words). -/
theorem tabReg_align {s : State σ} {T a : BitVec 64} (hwf : Spec.Inv.TableWF s T)
    (ha : Spec.Inv.TableRegion s.memory T a) :
    Spec.Inv.TableRegion s.memory T (BitVec.ofNat 64 (a.toNat / 8 * 8)) := by
  have hsep := hwf.1
  simp only [Spec.Inv.Sep] at hsep
  obtain ⟨t8, N8, O8, K8, S8, -⟩ := hsep
  have hlt := a.isLt
  have e : (BitVec.ofNat 64 (a.toNat / 8 * 8)).toNat = a.toNat / 8 * 8 := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  unfold Spec.Inv.TableRegion Spec.Inv.InR at *
  rw [e]
  have hK : ((Spec.Inv.hdr s.memory T 8).toNat * (Spec.Inv.CAP s.memory T + 1)) % 8 = 0 := by
    rw [Nat.mul_mod, S8]; simp
  rcases ha with ⟨h1, h2⟩ | ⟨h1, h2⟩ | ⟨h1, h2⟩ | ⟨h1, h2⟩ <;> omega

/-- An object of `Γ` with the base of a header of `Γ` is that header. -/
theorem base_eq {Γ : Gam} (hG : GamOK Γ) {o x : Obj} (ho : o ∈ Γ) (hx : x ∈ Γ)
    (hb : x.base = o.base) : x = o := by
  have h1 := (hG.1 o ho).2.2.1
  have h2 := (hG.1 x hx).2.2.1
  refine gam_eq hG hx ho (n := o.lo) (by unfold Obj.lo; rw [hb]) ?_ (le_refl _) ?_ <;>
    unfold Obj.hi Obj.lo at * <;> rw [hb] at * <;> omega

/-- The objects a table owns have table types. -/
theorem owns_tabTy {Γ : Gam} (hG : GamOK Γ) {o x : Obj} (ho : o ∈ Γ) (hk : hkOf o.ty = .tab)
    (hx : x ∈ Γ) (h : Owns o x) : IsTabTy x.ty := by
  rcases h with h | h | ⟨h, -⟩
  · rw [base_eq hG ho hx h]; exact Or.inl hk
  · exact Or.inr (Or.inr (h ▸ tOwn_ge _))
  · exact Or.inr (Or.inl h)

/-- A byte of a table's region lies in an object of `Γ` the table owns. -/
theorem tab_obj {Γ : Gam} {s : State σ} {o : Obj} (hw : tabW Γ s o) (hk : hkOf o.ty = .tab)
    {a : BitVec 64} (ha : Spec.Inv.TableRegion s.memory o.base a) :
    ∃ x ∈ Γ, Owns o x ∧ IsTabTy x.ty ∧ x.lo ≤ a.toNat ∧ a.toNat < x.hi := by
  obtain ⟨ho, hG, hwf, harr, -⟩ := hw
  have hlt := a.isLt
  have e : (BitVec.ofNat 64 (a.toNat / 8 * 8)).toNat = a.toNat / 8 * 8 := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  obtain ⟨x, hx, ht, h1, h2⟩ := harr _ (tabReg_align hwf ha) (by rw [e]; omega)
  rw [e] at h1 h2
  obtain ⟨x8, s8, -⟩ := hG.1 x hx
  refine ⟨x, hx, ht, owns_tabTy hG ho hk hx ht, ?_, ?_⟩ <;> unfold Obj.hi Obj.lo at * <;> omega

/-- **Tables never share objects** (C-b′): an object owned by two headers of `Γ` belongs to
one header. -/
theorem own_unique {Γ : Gam} (hG : GamOK Γ) {o o' x : Obj} (ho : o ∈ Γ) (ho' : o' ∈ Γ)
    (hk : hkOf o.ty = .tab) (hk' : hkOf o'.ty = .tab) (hx : x ∈ Γ) (h : Owns o x)
    (h' : Owns o' x) : o = o' := by
  have hs := hdr_small o.ty (hkOf_tab hk)
  have hs' := hdr_small o'.ty (hkOf_tab hk')
  have hpos := (hG.1 o ho).2.2.1
  have hpos' := (hG.1 o' ho').2.2.1
  have hown := tOwn_ge o.base
  have hown' := tOwn_ge o'.base
  have hb : o.base = o'.base := by
    rcases h with h | h | ⟨h, h2⟩ <;> rcases h' with h' | h' | ⟨h', h2'⟩
    · exact h.symm.trans h'
    · have := base_eq hG ho hx h; subst this; omega
    · have := base_eq hG ho hx h; subst this; exact absurd h' hs.2.2.1
    · have := base_eq hG ho' hx h'; subst this; omega
    · exact tOwn_inj (h.symm.trans h')
    · rw [h] at h'; have : (14 : Nat) < ownBase := by decide
      have : tHTAs = 14 := rfl
      omega
    · have := base_eq hG ho' hx h'; subst this; exact absurd h hs'.2.2.1
    · rw [h] at h'; have : (14 : Nat) < ownBase := by decide
      have : tHTAs = 14 := rfl
      omega
    · exact BitVec.eq_of_toNat_eq (by unfold Obj.lo at h2 h2'; omega)
  exact (base_eq hG ho ho' hb.symm).symm

/-- **The regions of two different tables of `Γ` are disjoint** (C-b′). -/
theorem tabReg_disj {Γ : Gam} {s : State σ} {o o' : Obj} (hk : hkOf o.ty = .tab)
    (hk' : hkOf o'.ty = .tab) (hw : tabW Γ s o) (hw' : tabW Γ s o') (hne : o ≠ o')
    {a : BitVec 64} (ha : Spec.Inv.TableRegion s.memory o.base a)
    (ha' : Spec.Inv.TableRegion s.memory o'.base a) : False := by
  obtain ⟨x, hx, hox, -, h1, h2⟩ := tab_obj hw hk ha
  obtain ⟨x', hx', hox', -, h3, h4⟩ := tab_obj hw' hk' ha'
  have e := gam_eq hw.2.1 hx hx' h1 h2 h3 h4
  subst e
  exact hne (own_unique hw.2.1 hw.1 hw'.1 hk hk' hx hox hox')

/-- A byte of a table's region is not in an EV or CK object of `Γ`. -/
theorem tab_not_evck {Γ : Gam} {s : State σ} {o : Obj} (hw : tabW Γ s o) (hk : hkOf o.ty = .tab)
    {a : BitVec 64} (ha : Spec.Inv.TableRegion s.memory o.base a) {y : Obj} (hy : y ∈ Γ)
    (hty : y.ty = tEV ∨ y.ty = tCK) (h1 : y.lo ≤ a.toNat) (h2 : a.toNat < y.hi) : False := by
  obtain ⟨x, hx, -, hxt, h3, h4⟩ := tab_obj hw hk ha
  have e := gam_eq hw.2.1 hx hy h3 h4 h1 h2
  subst e
  have := tabTy_ne hxt
  rcases hty with h | h <;> simp_all

/-! ## Framing a table hook -/

section tabFrame
variable {s s' : State σ} {T : BitVec 64}

theorem hdr_frameA (hwf : Spec.Inv.TableWF s T)
    (h : ∀ a, Spec.Inv.TableRegion s.memory T a → a.toNat % 8 = 0 → s'.memory a = s.memory a)
    {o : Nat} (ho : o < 88 ∧ o % 8 = 0) : Spec.Inv.hdr s'.memory T o = Spec.Inv.hdr s.memory T o := by
  obtain ⟨hsep, -⟩ := hwf
  have hs8 : (Spec.Inv.hdr s.memory T 40).toNat % 8 = 0 ∧ (Spec.Inv.hdr s.memory T 48).toNat % 8 = 0 := by
    simp only [Spec.Inv.Sep] at hsep
    exact ⟨hsep.2.1, hsep.2.2.1⟩
  exact Spec.Inv.fr_hdrA (Spec.Inv.lay_of_sep hsep) hs8 h ho

theorem leafVal_frameA (hwf : Spec.Inv.TableWF s T)
    (h : ∀ a, Spec.Inv.TableRegion s.memory T a → a.toNat % 8 = 0 → s'.memory a = s.memory a)
    (w : BitVec 64) : Spec.Inv.LeafVal s'.memory T w ↔ Spec.Inv.LeafVal s.memory T w := by
  obtain ⟨hsep, L, hsh, -⟩ := hwf
  have hl := Spec.Inv.lay_of_sep hsep
  have hs8 : (Spec.Inv.hdr s.memory T 40).toNat % 8 = 0 ∧ (Spec.Inv.hdr s.memory T 48).toNat % 8 = 0 := by
    simp only [Spec.Inv.Sep] at hsep
    exact ⟨hsep.2.1, hsep.2.2.1⟩
  have cn := Spec.Inv.fr_cntA hl hs8 h
  have key : ∀ j : BitVec 64, j.toNat < Spec.Inv.CNT s.memory T →
      Spec.Inv.LEFT s'.memory T (Spec.Inv.ORD s'.memory T j) =
        Spec.Inv.LEFT s.memory T (Spec.Inv.ORD s.memory T j) := by
    intro j hj
    have bj : j.toNat ≤ Spec.Inv.CAP s.memory T := by have := hsh.cnt_le; omega
    rw [Spec.Inv.fr_ordA hl hs8 h bj]
    exact Spec.Inv.frLA hl hs8 h (Spec.Inv.live_le hsh (hsh.order_live j hj).1)
  unfold Spec.Inv.LeafVal
  rw [cn]
  constructor
  · rintro ⟨j, hj, hv⟩; exact ⟨j, hj, (key j hj).symm.trans hv⟩
  · rintro ⟨j, hj, hv⟩; exact ⟨j, hj, (key j hj).trans hv⟩

/-- **The table hook is framed by the aligned cells of its region.** -/
theorem tabOK_frame {Γ : Gam} {o : Obj} (hw : TabOK Γ s o) (hd : s'.memaddrs = s.memaddrs)
    (hbe : s'.be = s.be)
    (h : ∀ a, Spec.Inv.TableRegion s.memory o.base a → a.toNat % 8 = 0 → s'.memory a = s.memory a) :
    TabOK Γ s' o ∧ Spec.Inv.TableRegion s'.memory o.base = Spec.Inv.TableRegion s.memory o.base := by
  obtain ⟨hwf, harr, hval, hkl⟩ := hw
  obtain ⟨hwf', hreg⟩ := Spec.Inv.tableWF_frameA hwf hd hbe h
  refine ⟨⟨hwf', fun a ha h8 => harr a (hreg ▸ ha) h8,
    fun w hl => hval w ((leafVal_frameA hwf h w).1 hl), ?_⟩, hreg⟩
  unfold KLOK at *
  rw [hdr_frameA hwf h (by decide : 0 < 88 ∧ 0 % 8 = 0)]
  exact hkl

end tabFrame

/-! ## `EvSM` depends on the object only through its base -/

theorem evSM_of_base {T : STy} {Γ : Gam} {m : Mem} {e e' : Obj} (hb : e'.base = e.base)
    (h : EvSM T Γ m e) : EvSM T Γ m e' := by
  have hc : ∀ k, e'.cell k = e.cell k := fun k => by unfold Obj.cell; rw [hb]
  unfold EvSM StkOK MemOK fSTK fSP fMEM fLEN fMCAP fCAP at *
  simp only [hc]
  exact h

/-! ## `HooksLawful` -/

theorem guestHooks_lawful : HooksLawful guestC (guestHooks (σ := σ)) := by
  refine ⟨fun Γ s o a ho hw hf => ?_, fun Γ s s' o hw hd hbe hfp hpg => ?_⟩
  · rw [guestHooks_fp] at hf
    cases hk : hkOf o.ty with
    | ev =>
      obtain ⟨⟨-, hG, -⟩, k, hk', rfl⟩ := (gfp_ev hk).1 hf
      have ht := hkOf_ev hk
      have hm := (hG.1 o ho).2.2.2.1
      rw [ht] at hm
      have : (guestC.ty tEV).minSz = 280 := rfl
      have := sm_le hk'
      refine ⟨o, ho, k, ?_, by rw [ht]; exact sm_prot k hk', rfl⟩
      unfold Obj.HasSlot; omega
    | tab =>
      obtain ⟨hw', hr, h8⟩ := (gfp_tab hk).1 hf
      obtain ⟨x, hx, -, hxt, h1, h2⟩ := tab_obj hw' hk hr
      obtain ⟨a1, a2, -⟩ := hw'.2.1.1 x hx
      obtain ⟨k, hks, rfl⟩ := slot_of_mem h8 a1 a2 h1 h2
      exact ⟨x, hx, k, hks, tabTy_prot hxt k, rfl⟩
    | none => exact absurd hf (gfp_none hk)
  · rw [guestHooks_wf] at hw
    rw [guestHooks_fp] at hfp
    rw [guestHooks_wf, guestHooks_fp, guestHooks_fp]
    cases hk : hkOf o.ty with
    | ev =>
      have hw' := (gwf_ev hk).1 hw
      have hs : EvSM Shards.sty Γ s'.memory o :=
        evSM_congr (fun a ha => hfp a ((gfp_ev hk).2 ⟨hw', ha⟩)) hw'.2.2
      have hw2 : evW Γ s' o := ⟨hw'.1, hw'.2.1, hs⟩
      refine ⟨(gwf_ev hk).2 hw2, ?_⟩
      funext a
      apply propext
      rw [gfp_ev hk, gfp_ev hk]
      exact ⟨fun h => ⟨hw', h.2⟩, fun h => ⟨hw2, h.2⟩⟩
    | tab =>
      have hw' := (gwf_tab hk).1 hw
      obtain ⟨ht', hreg⟩ := tabOK_frame hw'.2.2 hd hbe
        (fun a ha h8 => hfp a ((gfp_tab hk).2 ⟨hw', ha, h8⟩))
      have hw2 : tabW Γ s' o := ⟨hw'.1, hw'.2.1, ht'⟩
      refine ⟨(gwf_tab hk).2 hw2, ?_⟩
      funext a
      apply propext
      rw [gfp_tab hk, gfp_tab hk, hreg]
      exact ⟨fun h => ⟨hw', h.2⟩, fun h => ⟨hw2, h.2⟩⟩
    | none =>
      refine ⟨gwf_none hk, ?_⟩
      funext a
      apply propext
      exact ⟨fun h => absurd h (gfp_none hk), fun h => absurd h (gfp_none hk)⟩

/-! ## `HooksMono` -/

theorem guestHooks_mono : HooksMono guestC (guestHooks (σ := σ)) := by
  intro Γ Γ' s p o o' hL hx ho ho' hb ht hw
  rw [guestHooks_wf] at hw ⊢
  have hk' : hkOf o'.ty = hkOf o.ty := by rw [ht]
  cases hk : hkOf o.ty with
  | ev =>
    rw [hk] at hk'
    obtain ⟨-, -, hsm⟩ := (gwf_ev hk).1 hw
    exact (gwf_ev hk').2 ⟨ho', gamOK_of_layout hL, evSM_of_base hb (evSM_ext hx hsm)⟩
  | tab =>
    rw [hk] at hk'
    obtain ⟨-, -, hwf, harr, hval, hkl⟩ := (gwf_tab hk).1 hw
    refine (gwf_tab hk').2 ⟨ho', gamOK_of_layout hL, ?_, ?_, ?_, ?_⟩
    · rw [hb]; exact hwf
    · intro a ha h8
      rw [hb] at ha
      obtain ⟨x, hxΓ, ht', h1, h2⟩ := harr a ha h8
      obtain ⟨x', hx', hb', ht'', hs⟩ := hx x hxΓ
      have hown : Owns o' x' := by
        rcases ht' with h | h | ⟨h, h2⟩
        · exact Or.inl (hb'.trans (h.trans hb.symm))
        · exact Or.inr (Or.inl (by rw [ht'', h, hb]))
        · refine Or.inr (Or.inr ⟨ht''.trans h, ?_⟩)
          have hne : x' ≠ o' := fun e => by
            have h3 := hdr_small o'.ty (hkOf_tab hk')
            rw [← e, ht'', h] at h3
            exact h3.2.2.1 rfl
          obtain ⟨i, hi, hie⟩ := List.mem_iff_getElem.mp hx'
          obtain ⟨j, hj, hje⟩ := List.mem_iff_getElem.mp ho'
          have hij : i ≠ j := fun e => hne (by rw [← hie, ← hje]; subst e; rfl)
          have hd := hL.2 i j hi hj hij
          rw [hie, hje] at hd
          have hpos := (hL.1 o' ho').2.2.1
          unfold Obj.lo Obj.hi at *
          rw [hb', hb] at *
          omega
      refine ⟨x', hx', hown, ?_, ?_⟩ <;> unfold Obj.lo Obj.hi at * <;> rw [hb'] <;> omega
    · intro w hl
      rw [hb] at hl
      rw [ht]
      exact fits_ext hx (hval w hl)
    · unfold KLOK at *; rw [hb, ht]; exact hkl
  | none =>
    rw [hk] at hk'
    exact gwf_none hk'

/-! ## The release law (interface rev. 6, `HooksShrinkR` in `Summary.lean`) -/

/-- Rev. 5's release law (no dependency condition), replaced in rev. 6. -/
def HooksShrink5 (_C : Cfg) (H : Hooks σ) : Prop :=
  ∀ (Γ Γs : Gam) (s : State σ) (o : Obj), (∀ o' ∈ Γs, o' ∈ Γ) → o ∈ Γs → H.wf Γ s o →
    H.wf Γs s o

/-- `HooksShrink5` (rev. 5) with `EvHook` makes every EV hook false, so `G` never holds with an EV
object in `Γ`. -/
theorem shrink_ev_absurd {C : Cfg} {H : Hooks σ} {T : STy} (hS : HooksShrink5 C H)
    (hE : EvHook C H T) (hC : EvCfg C T) (Γ : Gam) (s : State σ) (o : Obj) (ho : o ∈ Γ)
    (ht : o.ty = T.ev) : ¬ H.wf Γ s o := by
  intro hw
  have h1 : H.wf [o] s o := hS Γ [o] s o (by simp [ho]) (by simp) hw
  obtain ⟨⟨-, -, -, x, hx, -, hxt, -⟩, -⟩ := hE.get [o] s o (by simp) ht h1
  simp only [List.mem_singleton] at hx
  subst hx
  exact hC.ev_stk (ht.symm.trans hxt)

/-- A fitting word still fits after dropping objects, if the objects at its base are kept. -/
theorem fits_shrink_of {Γ Γs : Gam} {k : FK} {w : BitVec 64} (h : Fits Γ k w)
    (hk : ∀ x ∈ Γ, x.base = w → x ∈ Γs) : Fits Γs k w := by
  cases k with
  | scalar => trivial
  | prot => trivial
  | bnd => exact h
  | ptr t =>
    obtain ⟨x, hx, hb, ht⟩ := h
    exact ⟨x, hk x hx hb, hb, ht⟩
  | nptr t =>
    rcases h with h | ⟨x, hx, hb, ht⟩
    · exact Or.inl h
    · exact Or.inr ⟨x, hk x hx hb, hb, ht⟩
  | uptr ts =>
    rcases h with h | ⟨x, hx, hb, ht⟩
    · exact Or.inl h
    · exact Or.inr ⟨x, hk x hx hb, hb, ht⟩

theorem guestHooks_shrinkR : HooksShrinkR guestC (guestHooks (σ := σ)) refG := by
  intro Γ Γs s o hsub ho hw hc
  rw [guestHooks_wf] at hw ⊢
  cases hk : hkOf o.ty with
  | ev =>
    have hr : ∀ x ∈ Γ, (x.base = fSTK s.memory o ∨ x.base = fMEM s.memory o) → x ∈ Γs :=
      fun x hx h => hc x hx (by simp only [refG, hk]; exact h)
    obtain ⟨-, hG, ⟨a1, a2, a3, x, hx, hxb, hxt, hxs⟩, ⟨b1, b2, b3, y, hy, hyb, hyt, hys⟩⟩ :=
      (gwf_ev hk).1 hw
    exact (gwf_ev hk).2 ⟨ho, gamOK_sub hG hsub, ⟨a1, a2, a3, x, hr x hx (Or.inl hxb), hxb, hxt, hxs⟩,
      ⟨b1, b2, b3, y, hr y hy (Or.inr hyb), hyb, hyt, hys⟩⟩
  | tab =>
    obtain ⟨-, hG, hwf, harr, hval, hkl⟩ := (gwf_tab hk).1 hw
    have hr : ∀ x ∈ Γ, ((∃ y ∈ Γ, y.base = x.base ∧ Owns o y ∧ ∃ a : BitVec 64,
        Spec.Inv.TableRegion s.memory o.base a ∧ a.toNat % 8 = 0 ∧ y.lo ≤ a.toNat ∧ a.toNat < y.hi) ∨
        (valK o.ty ≠ .scalar ∧ Spec.Inv.LeafVal s.memory o.base x.base)) → x ∈ Γs :=
      fun x hx h => hc x hx (by simp only [refG, hk]; exact h)
    refine (gwf_tab hk).2 ⟨ho, gamOK_sub hG hsub, hwf, ?_, ?_, hkl⟩
    · intro a ha h8
      obtain ⟨x, hx, ht, h1, h2⟩ := harr a ha h8
      exact ⟨x, hr x hx (Or.inl ⟨x, hx, rfl, ht, a, ha, h8, h1, h2⟩), ht, h1, h2⟩
    · intro w hl
      by_cases hsc : valK o.ty = .scalar
      · rw [hsc]; trivial
      · exact fits_shrink_of (hval w hl) fun x hx hb => hr x hx (Or.inr ⟨hsc, hb ▸ hl⟩)
  | none => exact gwf_none hk

/-! ## `EvHook` and the frame driver's hook clauses -/

/-- The table footprint misses every slot of every EV and CK object. -/
theorem tab_fp_evck {Γ : Gam} {s : State σ} {o y : Obj} (hk : hkOf o.ty = .tab) {a : BitVec 64}
    (hf : gfp Γ s o a) (hy : y ∈ Γ) (hty : y.ty = tEV ∨ y.ty = tCK) {k : Nat}
    (hks : 8 * k + 8 ≤ y.size) (ha : a = y.cell k) : False := by
  obtain ⟨hw, hr, -⟩ := (gfp_tab hk).1 hf
  have hreg : (guestC.ty y.ty).region = .scratch := by rcases hty with h | h <;> rw [h] <;> rfl
  obtain ⟨-, h1, h2⟩ := scratch_cell hw.2.1 hy hreg hks
  subst ha
  exact tab_not_evck hw hk hr hy hty h1 h2

theorem ev_size {Γ : Gam} (hG : GamOK Γ) {e : Obj} (he : e ∈ Γ) (ht : e.ty = tEV) :
    280 ≤ e.size := by
  have hm := (hG.1 e he).2.2.2.1
  rw [ht] at hm
  exact hm

theorem guestHooks_ev : EvHook guestC (guestHooks (σ := σ)) Shards.sty := by
  refine ⟨fun Γ s o ho ht hw => ?_, fun Γ s t o ho ht hw hs hd hbe hpg hfp => ?_,
    fun Γ s o o' a ho ho' ht' hw hf hsm => ?_, fun Γ s o ht => ?_, fun Γ s o ht => ?_⟩
  · have hk : hkOf o.ty = .ev := by rw [ht]; rfl
    exact ((gwf_ev hk).1 hw).2.2
  · have hk : hkOf o.ty = .ev := by rw [ht]; rfl
    have hw' := (gwf_ev hk).1 hw
    exact (gwf_ev hk).2 ⟨hw'.1, hw'.2.1, hs⟩
  · rw [guestHooks_fp] at hf
    obtain ⟨k', hk', rfl⟩ := hsm
    have ht'' : o'.ty = tEV := ht'
    cases hk : hkOf o.ty with
    | ev =>
      obtain ⟨⟨-, hG, -⟩, k, hkk, he⟩ := (gfp_ev hk).1 hf
      have ht := hkOf_ev hk
      obtain ⟨-, h1, h2⟩ := scratch_cell hG ho (by rw [ht]; rfl)
        (k := k) (by have := ev_size hG ho ht; have := sm_le hkk; omega)
      obtain ⟨-, h3, h4⟩ := scratch_cell hG ho' (by rw [ht'']; rfl)
        (k := k') (by have := ev_size hG ho' ht''; have := sm_le hk'; omega)
      rw [← he] at h1 h2
      exact gam_eq hG ho ho' h1 h2 h3 h4
    | tab =>
      exact (tab_fp_evck hk hf ho' (Or.inl ht'')
        (by have := ev_size ((gfp_tab hk).1 hf).1.2.1 ho' ht''; have := sm_le hk'; omega)
        rfl).elim
    | none => exact absurd hf (gfp_none hk)
  · show gwf Γ s o
    exact gwf_none (by rw [ht]; rfl)
  · show gwf Γ s o
    exact gwf_none (by rw [ht]; rfl)

theorem guestHooks_hookEV : ∀ (Γ : Gam) (s : State σ) (o o' : Obj), o' ∈ Γ → o'.ty = tEV →
    ∀ j ∈ evDriverSlots16, ¬ (guestHooks (σ := σ)).fp Γ s o (o'.cell j) := by
  intro Γ s o o' ho' ht' j hj hf
  rw [guestHooks_fp] at hf
  cases hk : hkOf o.ty with
  | ev =>
    obtain ⟨⟨ho, hG, -⟩, k, hkk, he⟩ := (gfp_ev hk).1 hf
    have ht := hkOf_ev hk
    obtain ⟨e1, h1, h2⟩ := scratch_cell hG ho (by rw [ht]; rfl)
      (k := k) (by have := ev_size hG ho ht; have := sm_le hkk; omega)
    obtain ⟨e2, h3, h4⟩ := scratch_cell hG ho' (by rw [ht']; rfl)
      (k := j) (by have := ev_size hG ho' ht'; have := drv_le hj; omega)
    rw [he] at h3 h4 e2
    have e := gam_eq hG ho ho' h1 h2 h3 h4
    subst e
    rw [e1] at e2
    have hkj : k = j := by omega
    subst hkj
    exact sm_drv hkk hj
  | tab =>
    exact tab_fp_evck hk hf ho' (Or.inl ht')
      (by have := ev_size ((gfp_tab hk).1 hf).1.2.1 ho' ht'; have := drv_le hj; omega) rfl
  | none => exact gfp_none hk hf

theorem guestHooks_hookCK : ∀ (Γ : Gam) (s : State σ) (o o' : Obj), o' ∈ Γ → o'.ty = tCK →
    ∀ j, j < 13 → ¬ (guestHooks (σ := σ)).fp Γ s o (o'.cell j) := by
  intro Γ s o o' ho' ht' j hj hf
  rw [guestHooks_fp] at hf
  have ck_size : ∀ {Γ : Gam}, GamOK Γ → o' ∈ Γ → 104 ≤ o'.size := fun hG ho' => by
    have hm := (hG.1 o' ho').2.2.2.1
    rw [ht'] at hm
    exact hm
  cases hk : hkOf o.ty with
  | ev =>
    obtain ⟨⟨ho, hG, -⟩, k, hkk, he⟩ := (gfp_ev hk).1 hf
    have ht := hkOf_ev hk
    obtain ⟨-, h1, h2⟩ := scratch_cell hG ho (by rw [ht]; rfl)
      (k := k) (by have := ev_size hG ho ht; have := sm_le hkk; omega)
    obtain ⟨-, h3, h4⟩ := scratch_cell hG ho' (by rw [ht']; rfl)
      (k := j) (by have := ck_size hG ho'; omega)
    rw [he] at h3 h4
    have e := gam_eq hG ho ho' h1 h2 h3 h4
    subst e
    rw [ht] at ht'
    exact absurd ht' (by decide)
  | tab =>
    exact tab_fp_evck hk hf ho' (Or.inr ht')
      (by have := ck_size ((gfp_tab hk).1 hf).1.2.1 ho'; omega) rfl
  | none => exact gfp_none hk hf

/-- **The guest hook family meets the fold's hook hypothesis.** -/
theorem guestHooks_guest : Shards.GuestHooks (guestHooks (σ := σ)) :=
  ⟨guestHooks_ev, guestHooks_mono, guestHooks_hookEV, guestHooks_hookCK⟩

/-! ## The frame driver's configuration records -/

theorem guestHooks_ckWf : ∀ (Γ : Gam) (s : State σ) (o : Obj), o.ty = tCK →
    (guestHooks (σ := σ)).wf Γ s o := fun Γ s o ht => by
  show gwf Γ s o
  exact gwf_none (by rw [ht]; rfl)

/-- The hooks read no globals. -/
theorem guestHooks_glob : ∀ (Γ : Gam) (s t : State σ) (o : Obj), (guestHooks (σ := σ)).wf Γ s o →
    t.memory = s.memory → t.memaddrs = s.memaddrs → t.be = s.be → (guestHooks (σ := σ)).wf Γ t o := by
  intro Γ s t o hw hm hd hbe
  rw [guestHooks_wf] at hw ⊢
  cases hk : hkOf o.ty with
  | ev =>
    have hw' := (gwf_ev hk).1 hw
    exact (gwf_ev hk).2 ⟨hw'.1, hw'.2.1, by rw [hm]; exact hw'.2.2⟩
  | tab =>
    have hw' := (gwf_tab hk).1 hw
    obtain ⟨hwf, harr, hval, hkl⟩ := hw'.2.2
    refine (gwf_tab hk).2 ⟨hw'.1, hw'.2.1, ?_, by rw [hm]; exact harr, by rw [hm]; exact hval,
      by unfold KLOK at *; rw [hm]; exact hkl⟩
    exact Spec.Inv.tableWF_memOnly s t o.base hm hd hbe hwf
  | none => exact gwf_none hk

theorem frameCfg_guestHooks : FrameCfg guestC (guestHooks (σ := σ)) tEV tCK :=
  Annot.frameCfg_guest guestHooks_lawful guestHooks_hookEV guestHooks_hookCK

theorem drvCfg_guestHooks : DrvCfg guestC (guestHooks (σ := σ)) tEV tCK :=
  Annot.drvCfg_guest frameCfg_guestHooks guestHooks_mono guestHooks_ckWf
    (fun Γ s t o hw hm hd hbe _ => guestHooks_glob Γ s t o hw hm hd hbe)

end InitECandidate.Solver.MemSafe.Hooks
