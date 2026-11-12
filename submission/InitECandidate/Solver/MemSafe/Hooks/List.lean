import InitECandidate.Solver.MemSafe.Hooks.Journal

/-!
# The list hook

`guestHooksJL` is `guestHooksJ` plus an invariant on every growable-list header (`lstTys`, each
with a fixed element size `lstE`): for a header `o` with `PTR = o[0]`, `N = o[8]`, `CAP = o[16]`,

* `N ≤ CAP` and `0 < CAP`,
* `PTR` is the base of a `Γ` list array of at least `lstE o.ty · CAP` bytes: a heap array
  (`tLSTAh`) or a scratch array (`tLSTAs`) that ends where the header starts (the layout of
  `lst_new_scratch`; the frame release keeps adjacent-below arrays with their header),
* the header lies below `scratchEnd` (its cells do not wrap).

The footprint is the three header cells (`LCell`); the array's contents are read by no hook, so
element stores by callers never touch an invariant. The dependency relation is
`refGJL = refGJ ∨ lref` (a header depends on its array).

The element size is per type because the list stores none; the list header types and their
element sizes are `lstTys` / `lstE` below (`tLSTh`: heap logs, `tLSTs`: frame logs, both 8; the
BAL lists of 40 / 16 / 24 bytes get their own header types with the BAL record typing).

Laws: `guestHooksJL_lawful`, `_mono`, `_shrinkR` (with `refGJL`), `_ev`, `_hookEV`, `_hookCK`,
**`guestHooksJL_guest : GuestHooks guestHooksJL`**, `_ckWf`, `_glob`, `frameCfg_guestHooksJL`,
`drvCfg_guestHooksJL`, **`htabHooks_guestJL`**, and **`lstHooks_guestJL : LstHooks guestHooksJL`**
(the requirements of the list entries).
-/

namespace InitECandidate.Solver.MemSafe.Hooks
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Struct InitECandidate.Solver.MemSafe.HtabEntries
open InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.Spec

variable {σ : Type}

/-! ## List types -/

/-- The list header types. -/
def lstTys : List Nat := [tLSTh, tLSTs, tLSTc, tLSTn, tLSTk]

/-- The element size of a list header type. -/
def lstE (t : Nat) : Nat :=
  if t = tLSTh then 8 else if t = tLSTs then 8 else if t = tLSTc then 40 else if t = tLSTn then 16 else
    if t = tLSTk then 24 else 0

/-- The list array types. -/
def IsLstA (t : Nat) : Prop := t = tLSTAh ∨ t = tLSTAs

theorem lst_prot : ∀ t ∈ lstTys, ∀ k, (guestC.ty t).slot k = .prot := by
  intro t ht k
  simp only [lstTys, List.mem_cons, List.not_mem_nil, or_false] at ht
  rcases ht with rfl | rfl | rfl | rfl | rfl
  · exact lsth_prot k
  · exact lsts_prot k
  all_goals exact slot_all (by decide) rfl k

theorem lst_minSz : ∀ t ∈ lstTys, (guestC.ty t).minSz = 24 := by decide

theorem lst_untagged : ∀ t ∈ lstTys, guestC.tags.lookup t = none := by decide

theorem lst_region : ∀ t ∈ lstTys, (guestC.ty t).region = .heap ∨ (guestC.ty t).region = .scratch := by
  decide

theorem lstE_pos : ∀ t ∈ lstTys, 0 < lstE t ∧ lstE t % 8 = 0 ∧ lstE t ≤ 64 := by decide

theorem lst_ne : ∀ t ∈ lstTys, t ≠ tEV ∧ t ≠ tCK ∧ t ≠ tJOURNAL ∧ t ≠ tB8 ∧ t ≠ tSTACK ∧
    t ≠ tMEM ∧ t ≠ tLSTAh ∧ t ≠ tLSTAs ∧ hkOf t = .none ∧ t ≠ tHTAs ∧ t < ownBase := by decide

theorem lst_not_tab {t : Nat} (ht : t ∈ lstTys) : ¬ IsTabTy t := by
  have h := lst_ne t ht
  rintro (hk | rfl | hk)
  · rw [h.2.2.2.2.2.2.2.2.1] at hk; cases hk
  · exact h.2.2.2.2.2.2.2.2.2.1 rfl
  · exact absurd hk (by omega)

theorem lstA_ne {t : Nat} (h : IsLstA t) : t ≠ tEV ∧ t ≠ tCK ∧ t ≠ tJOURNAL ∧ t ∉ lstTys ∧
    ¬ IsTabTy t := by
  rcases h with rfl | rfl
  · refine ⟨by decide, by decide, by decide, by decide, ?_⟩
    rintro (hk | hk | hk)
    · revert hk; decide
    · revert hk; decide
    · revert hk; decide
  · refine ⟨by decide, by decide, by decide, by decide, ?_⟩
    rintro (hk | hk | hk)
    · revert hk; decide
    · revert hk; decide
    · revert hk; decide

theorem lstA_prot {t : Nat} (h : IsLstA t) (k : Nat) : (guestC.ty t).slot k = .prot := by
  rcases h with rfl | rfl
  · exact lstah_prot k
  · exact lstas_prot k

theorem lstA_untagged {t : Nat} (h : IsLstA t) : guestC.tags.lookup t = none := by
  rcases h with rfl | rfl <;> decide

theorem tEV_not_lst : tEV ∉ lstTys := by decide
theorem tCK_not_lst : tCK ∉ lstTys := by decide
theorem tJ_not_lst : tJOURNAL ∉ lstTys := by decide

/-! ## The hook -/

/-- `PTR`, `N`, `CAP` of the list header `o`. -/
def lP (m : Mem) (o : Obj) : BitVec 64 := rd m (o.cell 0)
def lN (m : Mem) (o : Obj) : BitVec 64 := rd m (o.cell 1)
def lC (m : Mem) (o : Obj) : BitVec 64 := rd m (o.cell 2)

/-- `P` is the base of a list array of `Γ` of at least `sz` bytes: a heap array, or a scratch array
directly below the header `o`. -/
def LArr (Γ : Gam) (o : Obj) (P : BitVec 64) (sz : Nat) : Prop :=
  ∃ x ∈ Γ, x.base = P ∧ (x.ty = tLSTAh ∨ (x.ty = tLSTAs ∧ x.hi = o.lo)) ∧ sz ≤ x.size

/-- The list invariant of the header `o`. -/
def LstOK (Γ : Gam) (m : Mem) (o : Obj) : Prop :=
  o.lo + 24 ≤ scratchEnd ∧ (lN m o).toNat ≤ (lC m o).toNat ∧ 0 < (lC m o).toNat ∧
    LArr Γ o (lP m o) (lstE o.ty * (lC m o).toNat)

def lstW (Γ : Gam) (s : State σ) (o : Obj) : Prop := o ∈ Γ ∧ GamOK Γ ∧ LstOK Γ s.memory o

/-- The three header cells. -/
def LCell (o : Obj) (a : BitVec 64) : Prop := a = o.cell 0 ∨ a = o.cell 1 ∨ a = o.cell 2

def lfp (Γ : Gam) (s : State σ) (o : Obj) (a : BitVec 64) : Prop :=
  o.ty ∈ lstTys ∧ lstW Γ s o ∧ LCell o a

def gwfJL (Γ : Gam) (s : State σ) (o : Obj) : Prop := gwfJ Γ s o ∧ (o.ty ∈ lstTys → lstW Γ s o)
def gfpJL (Γ : Gam) (s : State σ) (o : Obj) (a : BitVec 64) : Prop := gfpJ Γ s o a ∨ lfp Γ s o a

/-- **The guest hook family with the journal and list hooks.** -/
def guestHooksJL : Hooks σ := ⟨gwfJL, gfpJL⟩

/-- A list header depends on its array. -/
def lref (_Γ : Gam) (s : State σ) (o : Obj) (b : BitVec 64) : Prop :=
  o.ty ∈ lstTys ∧ b = lP s.memory o

def refGJL (Γ : Gam) (s : State σ) (o : Obj) (b : BitVec 64) : Prop := refGJ Γ s o b ∨ lref Γ s o b

theorem guestHooksJL_wf (Γ : Gam) (s : State σ) (o : Obj) :
    (guestHooksJL (σ := σ)).wf Γ s o = gwfJL Γ s o := rfl
theorem guestHooksJL_fp (Γ : Gam) (s : State σ) (o : Obj) :
    (guestHooksJL (σ := σ)).fp Γ s o = gfpJL Γ s o := rfl

/-! ## Cells -/

theorem lst_size {Γ : Gam} (hG : GamOK Γ) {o : Obj} (ho : o ∈ Γ) (ht : o.ty ∈ lstTys) :
    24 ≤ o.size := by
  have h := (hG.1 o ho).2.2.2.1
  rw [lst_minSz _ ht] at h
  exact h

/-- A header cell: slot `k < 3` of the header, inside it, not wrapping. -/
theorem lcell_in {Γ : Gam} (hG : GamOK Γ) {o : Obj} (ho : o ∈ Γ) (ht : o.ty ∈ lstTys)
    (hlo : o.lo + 24 ≤ scratchEnd) {a : BitVec 64} (ha : LCell o a) :
    ∃ k, k < 3 ∧ o.HasSlot k ∧ a = o.cell k ∧ a.toNat = o.lo + 8 * k ∧ o.lo ≤ a.toNat ∧
      a.toNat < o.hi := by
  have hs := lst_size hG ho ht
  have hse : scratchEnd < 2 ^ 64 := by decide
  have key : ∀ k, k < 3 → a = o.cell k → ∃ k, k < 3 ∧ o.HasSlot k ∧ a = o.cell k ∧
      a.toNat = o.lo + 8 * k ∧ o.lo ≤ a.toNat ∧ a.toNat < o.hi := by
    intro k hk he
    have e := cellN (x := o) (k := k) (by omega)
    refine ⟨k, hk, by unfold Obj.HasSlot; omega, he, by rw [he, e], by rw [he, e]; omega, ?_⟩
    rw [he, e]; unfold Obj.hi; unfold Obj.lo; unfold Obj.lo at hs; omega
  rcases ha with h | h | h
  · exact key 0 (by omega) h
  · exact key 1 (by omega) h
  · exact key 2 (by omega) h

/-- The three header cells are distinct. -/
theorem lcell_ne {o : Obj} (hlo : o.lo + 24 ≤ scratchEnd) {i j : Nat} (hi : i < 3) (hj : j < 3)
    (hij : i ≠ j) : o.cell i ≠ o.cell j := by
  intro h
  have hse : scratchEnd < 2 ^ 64 := by decide
  have e1 := cellN (x := o) (k := i) (by omega)
  have e2 := cellN (x := o) (k := j) (by omega)
  have := congrArg BitVec.toNat h
  omega

theorem lstOK_congr {Γ : Gam} {m m' : Mem} {o : Obj} (h0 : rd m' (o.cell 0) = rd m (o.cell 0))
    (h1 : rd m' (o.cell 1) = rd m (o.cell 1)) (h2 : rd m' (o.cell 2) = rd m (o.cell 2))
    (h : LstOK Γ m o) : LstOK Γ m' o := by
  unfold LstOK lP lN lC at *
  rw [h0, h1, h2]
  exact h

theorem lArr_ext {Γ Γ' : Gam} {p : Ptrs} (hL : Layout guestC p Γ') (hx : Ext Γ Γ') {o o' : Obj}
    (ho' : o' ∈ Γ') (hb : o'.base = o.base) (ht : o'.ty ∈ lstTys) {P : BitVec 64} {sz : Nat}
    (h : LArr Γ o P sz) : LArr Γ' o' P sz := by
  obtain ⟨x, hxΓ, hxb, hxt, hxs⟩ := h
  obtain ⟨x', hx', hxb', hxt', hxs'⟩ := hx x hxΓ
  have hlo : o'.lo = o.lo := by unfold Obj.lo; rw [hb]
  refine ⟨x', hx', hxb'.trans hxb, ?_, by omega⟩
  rcases hxt with h | ⟨h, hhi⟩
  · exact Or.inl (hxt'.trans h)
  · refine Or.inr ⟨hxt'.trans h, ?_⟩
    have hne : x' ≠ o' := fun e => by
      have := (lst_ne _ ht).2.2.2.2.2.2.2.1
      rw [← e, hxt', h] at this
      exact this rfl
    have hd := layout_disj hL hx' ho' hne
    have hpos := (hL.1 o' ho').2.2.1
    have hpx := (hL.1 x' hx').2.2.1
    simp only [Obj.hi, Obj.lo] at hd hhi ⊢
    rw [hxb', hb] at hd ⊢
    rcases hd with hd | hd <;> omega

/-! ## Footprints -/

/-- A byte of a `guestHooksJ` footprint lies in an EV, table or journal object of `Γ`. -/
theorem fpJ_obj {Γ : Gam} {s : State σ} {o : Obj} {a : BitVec 64} (hf : gfpJ Γ s o a) :
    GamOK Γ ∧ ∃ x ∈ Γ, x.lo ≤ a.toNat ∧ a.toNat < x.hi ∧
      (x.ty = tEV ∨ IsTabTy x.ty ∨ x.ty = tJOURNAL) := by
  rcases hf with hf | ⟨ht, hj, hc⟩
  · cases hk : hkOf o.ty with
    | ev =>
      obtain ⟨⟨ho, hG, -⟩, k, hkk, rfl⟩ := (gfp_ev hk).1 hf
      have hto := hkOf_ev hk
      obtain ⟨-, h1, h2⟩ := scratch_cell hG ho (by rw [hto]; rfl) (k := k)
        (by have := ev_size hG ho hto; have := sm_le hkk; omega)
      exact ⟨hG, o, ho, h1, h2, Or.inl hto⟩
    | tab =>
      obtain ⟨hw, hr, -⟩ := (gfp_tab hk).1 hf
      obtain ⟨x, hx, -, hxt, h1, h2⟩ := tab_obj hw hk hr
      exact ⟨hw.2.1, x, hx, h1, h2, Or.inr (Or.inl hxt)⟩
    | none => exact absurd hf (gfp_none hk)
  · have hJ := hj hc.1
    obtain ⟨q, -, -, h1, h2⟩ := jcell_in hJ hc
    exact ⟨hJ.2.1, o, hJ.1, h1, h2, Or.inr (Or.inr ht)⟩

/-- **A byte of a `guestHooksJL` footprint** lies in an EV, table or journal object of `Γ`, or in
the list header whose footprint it is. -/
theorem fpJL_obj {Γ : Gam} {s : State σ} {o : Obj} {a : BitVec 64} (hf : gfpJL Γ s o a) :
    GamOK Γ ∧ ∃ x ∈ Γ, x.lo ≤ a.toNat ∧ a.toNat < x.hi ∧
      (x.ty = tEV ∨ IsTabTy x.ty ∨ x.ty = tJOURNAL ∨ (x = o ∧ o.ty ∈ lstTys)) := by
  rcases hf with hf | ⟨ht, ⟨ho, hG, hok⟩, hc⟩
  · obtain ⟨hG, x, hx, h1, h2, h3⟩ := fpJ_obj hf
    refine ⟨hG, x, hx, h1, h2, ?_⟩
    rcases h3 with h | h | h
    · exact Or.inl h
    · exact Or.inr (Or.inl h)
    · exact Or.inr (Or.inr (Or.inl h))
  · obtain ⟨-, -, -, -, -, h1, h2⟩ := lcell_in hG ho ht hok.1 hc
    exact ⟨hG, o, ho, h1, h2, Or.inr (Or.inr (Or.inr ⟨rfl, ht⟩))⟩

/-- A byte of a list header or list array of `Γ` in a footprint: the footprint is the header's. -/
theorem fpJL_lst {Γ : Gam} {s : State σ} {o y : Obj} {a : BitVec 64} (hf : gfpJL Γ s o a)
    (hy : y ∈ Γ) (h1 : y.lo ≤ a.toNat) (h2 : a.toNat < y.hi) (hyt : y.ty ∈ lstTys ∨ IsLstA y.ty) :
    y = o ∧ y.ty ∈ lstTys := by
  obtain ⟨hG, x, hx, h3, h4, hk⟩ := fpJL_obj hf
  have e := gam_eq hG hy hx h1 h2 h3 h4
  subst e
  have hne : y.ty ≠ tEV ∧ ¬ IsTabTy y.ty ∧ y.ty ≠ tJOURNAL := by
    rcases hyt with h | h
    · exact ⟨(lst_ne _ h).1, lst_not_tab h, (lst_ne _ h).2.2.1⟩
    · exact ⟨(lstA_ne h).1, (lstA_ne h).2.2.2.2, (lstA_ne h).2.2.1⟩
  rcases hk with h | h | h | ⟨rfl, h⟩
  · exact absurd h hne.1
  · exact absurd h hne.2.1
  · exact absurd h hne.2.2
  · exact ⟨rfl, h⟩

/-! ## The laws -/

theorem guestHooksJL_lawful : HooksLawful guestC (guestHooksJL (σ := σ)) := by
  refine ⟨fun Γ s o a ho hw hf => ?_, fun Γ s s' o hw hd hbe hfp hpg => ?_⟩
  · rcases hf with hf | ⟨ht, ⟨-, hG, hok⟩, hc⟩
    · exact guestHooksJ_lawful.1 Γ s o a ho hw.1 hf
    · obtain ⟨k, -, hks, rfl, -⟩ := lcell_in hG ho ht hok.1 hc
      exact ⟨o, ho, k, hks, lst_prot _ ht k, rfl⟩
  · obtain ⟨hw1, hgfp⟩ := guestHooksJ_lawful.2 Γ s s' o hw.1 hd hbe (fun a h => hfp a (Or.inl h)) hpg
    have hl' : o.ty ∈ lstTys → lstW Γ s' o := by
      intro ht
      obtain ⟨ho, hG, hok⟩ := hw.2 ht
      have hc : ∀ k, k < 3 → rd s'.memory (o.cell k) = rd s.memory (o.cell k) := by
        intro k hk
        have hlc : LCell o (o.cell k) := by
          rcases k with _ | _ | _ | k
          · exact Or.inl rfl
          · exact Or.inr (Or.inl rfl)
          · exact Or.inr (Or.inr rfl)
          · omega
        unfold rd
        rw [hfp _ (Or.inr ⟨ht, hw.2 ht, hlc⟩)]
      exact ⟨ho, hG, lstOK_congr (hc 0 (by omega)) (hc 1 (by omega)) (hc 2 (by omega)) hok⟩
    refine ⟨⟨hw1, hl'⟩, ?_⟩
    funext a
    apply propext
    show (gfpJ Γ s' o a ∨ lfp Γ s' o a) ↔ (gfpJ Γ s o a ∨ lfp Γ s o a)
    rw [show gfpJ Γ s' o a = gfpJ Γ s o a from congrFun hgfp a]
    constructor
    · rintro (h | ⟨ht, -, hc⟩)
      · exact Or.inl h
      · exact Or.inr ⟨ht, hw.2 ht, hc⟩
    · rintro (h | ⟨ht, -, hc⟩)
      · exact Or.inl h
      · exact Or.inr ⟨ht, hl' ht, hc⟩

theorem guestHooksJL_mono : HooksMono guestC (guestHooksJL (σ := σ)) := by
  intro Γ Γ' s p o o' hL hx ho ho' hb ht hw
  refine ⟨guestHooksJ_mono Γ Γ' s p o o' hL hx ho ho' hb ht hw.1, fun ht' => ?_⟩
  obtain ⟨-, -, hlo, hnc, hc0, harr⟩ := hw.2 (ht ▸ ht')
  have hcell : ∀ k, o'.cell k = o.cell k := fun k => by unfold Obj.cell; rw [hb]
  have hlo' : o'.lo = o.lo := by unfold Obj.lo; rw [hb]
  refine ⟨ho', gamOK_of_layout hL, by rw [hlo']; exact hlo, ?_, ?_, ?_⟩
  · unfold lN lC; rw [hcell, hcell]; exact hnc
  · unfold lC; rw [hcell]; exact hc0
  · unfold lP lC; rw [hcell, hcell, ht]
    exact lArr_ext hL hx ho' hb ht' harr

theorem guestHooksJL_shrinkR : HooksShrinkR guestC (guestHooksJL (σ := σ)) refGJL := by
  intro Γ Γs s o hsub ho hw hc
  refine ⟨guestHooksJ_shrinkR Γ Γs s o hsub ho hw.1 (fun x hx h => hc x hx (Or.inl h)), fun ht => ?_⟩
  obtain ⟨-, hG, hlo, hnc, hc0, x, hxΓ, hxb, hxt, hxs⟩ := hw.2 ht
  exact ⟨ho, gamOK_sub hG hsub, hlo, hnc, hc0,
    x, hc x hxΓ (Or.inr ⟨ht, hxb⟩), hxb, hxt, hxs⟩

theorem guestHooksJL_ev : EvHook guestC (guestHooksJL (σ := σ)) Shards.sty := by
  refine ⟨fun Γ s o ho ht hw => guestHooksJ_ev.get Γ s o ho ht hw.1,
    fun Γ s t o ho ht hw hs hd hbe hpg hfp => ⟨guestHooksJ_ev.put Γ s t o ho ht hw.1 hs hd hbe hpg
      (fun a h hn => hfp a (Or.inl h) hn), fun ht' => by rw [ht] at ht'; exact absurd ht' tEV_not_lst⟩,
    fun Γ s o o' a ho ho' ht' hw hf hsm => ?_,
    fun Γ s o ht => ⟨guestHooksJ_ev.stk_wf Γ s o ht, fun ht' => by rw [ht] at ht'; exact absurd ht' (by decide)⟩,
    fun Γ s o ht => ⟨guestHooksJ_ev.mem_wf Γ s o ht, fun ht' => by rw [ht] at ht'; exact absurd ht' (by decide)⟩⟩
  rcases hf with hf | ⟨ht, ⟨-, hG, hok⟩, hc⟩
  · exact guestHooksJ_ev.loc Γ s o o' a ho ho' ht' hw.1 hf hsm
  · obtain ⟨-, -, -, -, -, h1, h2⟩ := lcell_in hG ho ht hok.1 hc
    obtain ⟨k', hk', rfl⟩ := hsm
    have ht'' : o'.ty = tEV := ht'
    obtain ⟨-, h3, h4⟩ := scratch_cell hG ho' (by rw [ht'']; rfl)
      (k := k') (by have := ev_size hG ho' ht''; have := sm_le hk'; omega)
    exact gam_eq hG ho ho' h1 h2 h3 h4

/-- A footprint byte in an EV or CK slot is a `guestHooksJ` footprint byte. -/
theorem lfp_evck {Γ : Gam} {s : State σ} {o y : Obj} {a : BitVec 64} (hf : lfp Γ s o a) (hy : y ∈ Γ)
    (hty : y.ty = tEV ∨ y.ty = tCK) {k : Nat} (hks : 8 * k + 8 ≤ y.size) (ha : a = y.cell k) : False := by
  obtain ⟨ht, ⟨ho, hG, hok⟩, hc⟩ := hf
  obtain ⟨-, -, -, -, -, h1, h2⟩ := lcell_in hG ho ht hok.1 hc
  obtain ⟨-, h3, h4⟩ := scratch_cell hG hy (by rcases hty with h | h <;> rw [h] <;> rfl) hks
  rw [← ha] at h3 h4
  have e := gam_eq hG ho hy h1 h2 h3 h4
  subst e
  rcases hty with h | h
  · exact (lst_ne _ ht).1 h
  · exact (lst_ne _ ht).2.1 h

theorem guestHooksJL_hookEV : ∀ (Γ : Gam) (s : State σ) (o o' : Obj), o' ∈ Γ → o'.ty = tEV →
    ∀ j ∈ evDriverSlots16, ¬ (guestHooksJL (σ := σ)).fp Γ s o (o'.cell j) := by
  intro Γ s o o' ho' ht' j hj hf
  rcases hf with hf | hf
  · exact guestHooksJ_hookEV Γ s o o' ho' ht' j hj hf
  · have hG := hf.2.1.2.1
    exact lfp_evck hf ho' (Or.inl ht') (by have := ev_size hG ho' ht'; have := drv_le hj; omega) rfl

theorem guestHooksJL_hookCK : ∀ (Γ : Gam) (s : State σ) (o o' : Obj), o' ∈ Γ → o'.ty = tCK →
    ∀ j, j < 13 → ¬ (guestHooksJL (σ := σ)).fp Γ s o (o'.cell j) := by
  intro Γ s o o' ho' ht' j hj hf
  rcases hf with hf | hf
  · exact guestHooksJ_hookCK Γ s o o' ho' ht' j hj hf
  · have hG := hf.2.1.2.1
    have hm := (hG.1 o' ho').2.2.2.1
    rw [ht'] at hm
    have : (guestC.ty tCK).minSz = 104 := rfl
    exact lfp_evck hf ho' (Or.inr ht') (by omega) rfl

/-- **The journal-and-list family meets the fold's hook hypothesis.** -/
theorem guestHooksJL_guest : Shards.GuestHooks (guestHooksJL (σ := σ)) :=
  ⟨guestHooksJL_ev, guestHooksJL_mono, guestHooksJL_hookEV, guestHooksJL_hookCK⟩

theorem guestHooksJL_ckWf : ∀ (Γ : Gam) (s : State σ) (o : Obj), o.ty = tCK →
    (guestHooksJL (σ := σ)).wf Γ s o := fun Γ s o ht =>
  ⟨guestHooksJ_ckWf Γ s o ht, fun ht' => absurd (ht ▸ ht') tCK_not_lst⟩

/-- The hooks read memory, domain, byte order and the journal's protected globals. -/
theorem guestHooksJL_glob : ∀ (Γ : Gam) (s t : State σ) (o : Obj), (guestHooksJL (σ := σ)).wf Γ s o →
    t.memory = s.memory → t.memaddrs = s.memaddrs → t.be = s.be →
    (∀ g ∈ guestC.PG, g ≠ nm "ev" → g ≠ nm "cur_cont" → t.globals.lookup g = s.globals.lookup g) →
    (guestHooksJL (σ := σ)).wf Γ t o := by
  intro Γ s t o hw hm hd hbe hpg
  refine ⟨guestHooksJ_glob Γ s t o hw.1 hm hd hbe hpg, fun ht => ?_⟩
  obtain ⟨ho, hG, hok⟩ := hw.2 ht
  exact ⟨ho, hG, by rw [hm]; exact hok⟩

theorem frameCfg_guestHooksJL : FrameCfg guestC (guestHooksJL (σ := σ)) tEV tCK :=
  Annot.frameCfg_guest guestHooksJL_lawful guestHooksJL_hookEV guestHooksJL_hookCK

theorem drvCfg_guestHooksJL : DrvCfg guestC (guestHooksJL (σ := σ)) tEV tCK :=
  Annot.drvCfg_guest frameCfg_guestHooksJL guestHooksJL_mono guestHooksJL_ckWf
    (fun Γ s t o hw hm hd hbe hpg => guestHooksJL_glob Γ s t o hw hm hd hbe hpg)

/-- **The table entries' hook requirements** hold for the journal-and-list family. -/
theorem htabHooks_guestJL : HtabHooks (guestHooksJL (σ := σ)) := by
  have hT := htabHooks_guestJ (σ := σ)
  refine ⟨fun Γ s o ho hG hk ht => ⟨hT.make Γ s o ho hG hk ht, fun ht' => ?_⟩,
    fun Γ s o ht => ⟨hT.arr Γ s o ht, fun ht' => ?_⟩,
    fun Γ s o hk hw => hT.get Γ s o hk hw.1, fun Γ s o o2 a hk hw ho2 hne hw2 hf ha => ?_⟩
  · exact absurd (Or.inl hk) (lst_not_tab ht')
  · exact absurd (Or.inr ht) (lst_not_tab ht')
  · rcases hf with hf | hf
    · exact hT.sep Γ s o o2 a hk hw.1 ho2 hne hw2.1 hf ha
    · have hw' := hT.get Γ s o hk hw.1
      obtain ⟨x, hx, -, hxt, h1, h2⟩ := tab_obj hw' hk ha
      obtain ⟨ht2, ⟨ho2', hG2, hok⟩, hc⟩ := hf
      obtain ⟨-, -, -, -, -, h3, h4⟩ := lcell_in hG2 ho2' ht2 hok.1 hc
      have e := gam_eq hG2 hx ho2' h1 h2 h3 h4
      subst e
      exact lst_not_tab ht2 hxt

/-! ## The list entries' hook requirements -/

/-- What the list entries (`lst_new`, `lst_new_scratch`, `lst_push`) need of a hook family: list
headers carry exactly the list hook, arrays are unhooked, and a byte of a list header or array in
a footprint belongs to that header's own footprint. -/
structure LstHooks (H : Hooks σ) : Prop where
  get : ∀ (Γ : Gam) (s : State σ) (o : Obj), o.ty ∈ lstTys → H.wf Γ s o → lstW Γ s o
  make : ∀ (Γ : Gam) (s : State σ) (o : Obj), o.ty ∈ lstTys → lstW Γ s o → H.wf Γ s o
  arr : ∀ (Γ : Gam) (s : State σ) (o : Obj), IsLstA o.ty → H.wf Γ s o
  loc : ∀ (Γ : Gam) (s : State σ) (o y : Obj) (a : BitVec 64), y ∈ Γ → H.fp Γ s o a →
    y.lo ≤ a.toNat → a.toNat < y.hi → y.ty ∈ lstTys ∨ IsLstA y.ty → y = o ∧ y.ty ∈ lstTys

theorem lstHooks_guestJL : LstHooks (guestHooksJL (σ := σ)) := by
  refine ⟨fun Γ s o ht hw => hw.2 ht, fun Γ s o ht hl => ⟨⟨gwf_none (lst_ne _ ht).2.2.2.2.2.2.2.2.1,
    fun hj => absurd (hj ▸ ht) tJ_not_lst⟩, fun _ => hl⟩, fun Γ s o ht => ?_,
    fun Γ s o y a hy hf h1 h2 hyt => fpJL_lst hf hy h1 h2 hyt⟩
  have h := lstA_ne ht
  refine ⟨⟨gwf_none ?_, fun hj => absurd hj h.2.2.1⟩, fun hl => absurd hl h.2.2.2.1⟩
  rcases ht with ht | ht <;> rw [ht] <;> rfl

end InitECandidate.Solver.MemSafe.Hooks
