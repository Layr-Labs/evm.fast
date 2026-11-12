import InitECandidate.Solver.MemSafe.Hooks.List
import InitECandidate.Solver.MemSafe.HtabEntries.LstNewH

/-!
# Tracking steps for the list functions

For a hook family with `LstHooks` (e.g. `guestHooksJL`):

* `trk_pstore`: a store into a `prot` cell of an untagged `Γ` object keeps the tracking, when
  every object whose footprint holds the cell gets its hook back (`G_frame_prot`);
* **`trk_lstore`**: a store into a header cell of a list keeps the tracking, when the new memory
  satisfies the list invariant of that header;
* **`trk_astore`**: a store into a cell of a list array keeps the tracking (no hook reads it);
* `cell_lay`: the cell arithmetic of a laid-out object; `sumCore_keep`: a callee with `PW = ∅`
  leaves the `prot` cells of the caller's typing outside its argument buffers unchanged.
-/

set_option maxRecDepth 100000
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.HtabEntries
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

/-- The cell arithmetic of a slot of a laid-out object. -/
theorem cell_lay {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hLay : Layout C p Γ) {o : Obj}
    (ho : o ∈ Γ) {k : Nat} (hk : o.HasSlot k) :
    (o.cell k).toNat = o.lo + 8 * k ∧ o.lo ≤ (o.cell k).toNat ∧ (o.cell k).toNat < o.hi := by
  have hb := (Struct.obj_bounds hord hLay ho).2.1
  have hse : scratchEnd < 2 ^ 64 := by decide
  unfold Obj.HasSlot at hk
  unfold Obj.hi at hb
  have e := cellN (x := o) (k := k) (by unfold Obj.lo; omega)
  refine ⟨e, ?_, ?_⟩ <;> rw [e] <;> simp only [Obj.hi, Obj.lo] <;> omega

/-- A header slot of a list of a laid-out typing. -/
theorem lst_slot {p : Ptrs} {Γ : Gam} (hLay : Layout guestC p Γ) {L : Obj} (hL : L ∈ Γ)
    (hLt : L.ty ∈ lstTys) {k : Nat} (hk : k < 3) : L.HasSlot k := by
  have := lst_size (gamOK_of_layout hLay) hL hLt
  unfold Obj.HasSlot; omega

section trk
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {PW : BitVec 64 → Prop}

/-- A store into a `prot` cell of an untagged object, re-establishing the hooks that read it. -/
theorem trk_pstore (hH : HooksLawful guestC H) {Γ : Gam} {t : State σ}
    (h : Struct.Trk guestC H Γ0 s0 p0 PW Γ t) {A : Obj} (hA : A ∈ Γ) {k : Nat} (hk : A.HasSlot k)
    (hpr : (guestC.ty A.ty).slot k = .prot) (htg : guestC.tags.lookup A.ty = none)
    (hPW : PW (A.cell k)) (x : BitVec 64)
    (hwf : ∀ o ∈ Γ, H.fp Γ t o (A.cell k) →
      H.wf Γ { t with memory := Spec.Inv.upd t.memory (A.cell k) x } o) :
    Struct.Trk guestC H Γ0 s0 p0 PW Γ { t with memory := Spec.Inv.upd t.memory (A.cell k) x } := by
  obtain ⟨p, hp, hm, hx, hnf, hG, hmod, hpg, hd, hbe⟩ := h
  have hG0 := hG
  obtain ⟨pG, hpG, hord, hLay, -, -, -, -⟩ := hG0
  obtain ⟨-, h1, h2⟩ := cell_lay hord hLay hA hk
  set a := A.cell k with ha
  have hGt : G guestC H Γ { t with memory := Spec.Inv.upd t.memory a x } := by
    refine G_frame_prot hH hG rfl (fun _ _ _ => rfl) (fun _ _ => rfl) rfl rfl
      (R := fun b => b = a) (fun b hb' => Spec.Inv.upd_ne hb') ?_ ?_ ?_
    · rintro b rfl
      exact ⟨A, hA, k, hk, hpr, rfl⟩
    · intro o ho htg' hob
      have hpos := (hLay.1 o ho).2.2.1
      have h3 : o.lo ≤ a.toNat := by unfold Obj.lo; rw [hob]
      have h4 : a.toNat < o.hi := by unfold Obj.hi; rw [hob]; omega
      have := gam_eq (gamOK_of_layout hLay) hA ho h1 h2 h3 h4
      subst this
      rw [htg] at htg'
      simp at htg'
    · rintro o ho ⟨b, rfl, hf⟩
      exact hwf o ho hf
  refine ⟨p, hp, hm, hx, hnf, hGt, ?_, hpg, hd, hbe⟩
  intro b hbn
  have hba : b ≠ a := fun e' => hbn (Or.inr (Or.inr (e' ▸ hPW)))
  show Spec.Inv.upd t.memory a x b = s0.memory b
  rw [Spec.Inv.upd_ne hba]
  exact hmod b hbn

/-- **A store into a header cell of a list** keeps the tracking, when the new memory satisfies the
list invariant of that header. -/
theorem trk_lstore (hH : HooksLawful guestC H) (hLH : LstHooks H) {Γ : Gam} {t : State σ}
    (h : Struct.Trk guestC H Γ0 s0 p0 PW Γ t) {L : Obj} (hL : L ∈ Γ) (hLt : L.ty ∈ lstTys)
    {k : Nat} (hk : k < 3) {a : BitVec 64} (ha : a = L.cell k) (hPW : PW a) (x : BitVec 64)
    (hok : LstOK Γ (Spec.Inv.upd t.memory a x) L) :
    Struct.Trk guestC H Γ0 s0 p0 PW Γ { t with memory := Spec.Inv.upd t.memory a x } := by
  subst ha
  have hG := Struct.trk_G h
  obtain ⟨pG, -, hord, hLay, -⟩ := hG
  have hks := lst_slot hLay hL hLt hk
  obtain ⟨-, h1, h2⟩ := cell_lay hord hLay hL hks
  refine trk_pstore hH h hL hks (lst_prot _ hLt k) (lst_untagged _ hLt) hPW x fun o ho hf => ?_
  obtain ⟨e, -⟩ := hLH.loc Γ t o L _ hL hf h1 h2 (Or.inl hLt)
  subst e
  exact hLH.make Γ _ L hLt ⟨hL, gamOK_of_layout hLay, hok⟩

/-- **A store into a cell of a list array** keeps the tracking. -/
theorem trk_astore (hH : HooksLawful guestC H) (hLH : LstHooks H) {Γ : Gam} {t : State σ}
    (h : Struct.Trk guestC H Γ0 s0 p0 PW Γ t) {A : Obj} (hA : A ∈ Γ) (hAt : IsLstA A.ty)
    {k : Nat} (hk : A.HasSlot k) (hPW : PW (A.cell k)) (x : BitVec 64) :
    Struct.Trk guestC H Γ0 s0 p0 PW Γ { t with memory := Spec.Inv.upd t.memory (A.cell k) x } := by
  have hG := Struct.trk_G h
  obtain ⟨pG, -, hord, hLay, -⟩ := hG
  obtain ⟨-, h1, h2⟩ := cell_lay hord hLay hA hk
  refine trk_pstore hH h hA hk (lstA_prot hAt k) (lstA_untagged hAt) hPW x fun o ho hf => ?_
  obtain ⟨-, hl⟩ := hLH.loc Γ t o A _ hA hf h1 h2 (Or.inr hAt)
  exact absurd hl (lstA_ne hAt).2.2.2.1

end trk

/-- A callee whose summary writes no `prot` cell leaves the `prot` cells of the caller's typing
outside its argument buffers unchanged. -/
theorem sumCore_keep {C : Cfg} {H : Hooks σ} {sg : Sig} {Γ Γ' : Gam} {s t : State σ}
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (hc : SumCore C H sg (fun a => ProtCell C Γ a ∧ False) Γ s vs r t Γ' p p') (hG : G C H Γ s)
    {o : Obj} (ho : o ∈ Γ) {k : Nat} (hk : o.HasSlot k) (hpr : (C.ty o.ty).slot k = .prot)
    (hna : ¬ ArgCells sg.params vs (o.cell k)) : t.memory (o.cell k) = s.memory (o.cell k) := by
  obtain ⟨q, hq, hord, hLay, -⟩ := hG
  obtain ⟨hps, -, -, -, -, -, hmod, -⟩ := hc
  rw [hps] at hq
  cases hq
  refine hmod _ fun hh => ?_
  rcases hh with ⟨o', ho', k', hk', hnp, he⟩ | harg | hal | ⟨-, hf⟩
  · obtain ⟨rfl, rfl⟩ := cell_inj hord hLay ho ho' hk hk' he
    exact hnp hpr
  · exact hna harg
  · obtain ⟨-, h1, h2⟩ := cell_lay hord hLay ho hk
    exact hal (Helpers.allocated_of_inObj hLay ⟨o, ho, h1, h2⟩)
  · exact hf

/-! ## Adding an object whose hook needs the extended layout (copies of the `Frames.NewTrk` lemmas) -/

theorem G_addObjLL {C : Cfg} {H : Hooks σ} (hM : HooksMono C H)
    {Γ : Gam} {s : State σ} (hG : G C H Γ s) {x : Obj} (hal : x.lo % 8 = 0) (hsz8 : x.size % 8 = 0)
    (hpos : 0 < x.size) (hmin : (C.ty x.ty).minSz ≤ x.size)
    (hlive : ∀ p, ptrsOf s = some p → (C.ty x.ty).region.Live p x.lo x.size)
    (hdisj : ∀ a : BitVec 64, Frames.InO x a → ¬ InObj Γ a.toNat)
    (hfit : ∀ k, x.HasSlot k → Fits (Γ ++ [x]) ((C.ty x.ty).slot k) (rd s.memory (x.cell k)))
    (htag : C.tags.lookup x.ty = none)
    (hwf : ∀ p, Layout C p (Γ ++ [x]) → H.wf (Γ ++ [x]) s x) :
    G C H (Γ ++ [x]) s := by
  obtain ⟨p, hps, hord, hL, hF, hT, hGl, hW⟩ := hG
  have hs : scratchEnd < 2 ^ 64 := by decide
  have hL' : Layout C p (Γ ++ [x]) := by
    refine ⟨fun o ho => ?_, fun i j hi hj hij => ?_⟩
    · rcases List.mem_append.mp ho with ho | ho
      · exact hL.1 o ho
      · simp only [List.mem_singleton] at ho
        subst ho
        exact ⟨hal, hsz8, hpos, hmin, hlive p hps⟩
    · have hxe : x.hi ≤ scratchEnd := by
        have := hlive p hps
        unfold Obj.lo at this
        unfold Ptrs.Ordered at hord
        unfold Obj.hi
        cases hr : (C.ty x.ty).region <;> rw [hr] at this <;> unfold Region.Live at this <;> omega
      have hdx : ∀ o ∈ Γ, o.hi ≤ x.lo ∨ x.hi ≤ o.lo := by
        intro o ho
        have ho' := (hL.1 o ho).2.2.1
        have hoe := Frames.obj_hi hord hL ho
        have := Frames.range_disj (lo := x.lo) (hi := x.hi) (lo' := o.lo) (hi' := o.hi)
          (by unfold Obj.hi Obj.lo; omega) (by unfold Obj.hi Obj.lo; omega) (by omega) (by omega)
          (fun a h1 h2 h3 => hdisj a ⟨h1, h2⟩ ⟨o, ho, h3.1, h3.2⟩)
        rcases this with h | h
        · exact Or.inr h
        · exact Or.inl h
      by_cases hi' : i < Γ.length <;> by_cases hj' : j < Γ.length
      · rw [List.getElem_append_left hi', List.getElem_append_left hj']
        exact hL.2 i j hi' hj' hij
      · have hlen : (Γ ++ [x]).length = Γ.length + 1 := by simp
        have hj2 : j = Γ.length := by omega
        subst hj2
        rw [List.getElem_append_left hi', List.getElem_append_right (by omega)]
        simp only [Nat.sub_self, List.getElem_cons_zero]
        exact hdx _ (List.getElem_mem hi')
      · have hlen : (Γ ++ [x]).length = Γ.length + 1 := by simp
        have hi2 : i = Γ.length := by omega
        subst hi2
        rw [List.getElem_append_left hj', List.getElem_append_right (by omega)]
        simp only [Nat.sub_self, List.getElem_cons_zero]
        exact (hdx _ (List.getElem_mem hj')).symm
      · have hlen : (Γ ++ [x]).length = Γ.length + 1 := by simp
        omega
  refine ⟨p, hps, hord, hL', ?_, ?_, ?_, ?_⟩
  · intro o ho k hk
    rcases List.mem_append.mp ho with ho | ho
    · exact Frames.fits_append (hF o ho k hk)
    · simp only [List.mem_singleton] at ho; subst ho; exact hfit k hk
  · intro o ho tag ht
    rcases List.mem_append.mp ho with ho | ho
    · exact hT o ho tag ht
    · simp only [List.mem_singleton] at ho; subst ho; rw [htag] at ht; cases ht
  · intro g k hk
    obtain ⟨v, hv, hf⟩ := hGl g k hk
    exact ⟨v, hv, Frames.fits_append hf⟩
  · intro o ho
    rcases List.mem_append.mp ho with ho | ho
    · exact hM Γ (Γ ++ [x]) s p o o hL' (Frames.ext_append Γ x) ho (List.mem_append_left _ ho) rfl rfl
        (hW o ho)
    · simp only [List.mem_singleton] at ho; subst ho; exact hwf p hL'

/-- A fresh, disjoint, all-`prot` object joins the typing; its hook may use the extended layout. -/
theorem trk_addObjLL {C : Cfg} {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    {PW : BitVec 64 → Prop} (hM : HooksMono C H) {Γ : Gam} {t : State σ}
    (h : Struct.Trk C H Γ0 s0 p0 PW Γ t) {x : Obj} {p : Ptrs} (hp : ptrsOf t = some p)
    (hal : x.lo % 8 = 0) (hsz8 : x.size % 8 = 0) (hpos : 0 < x.size)
    (hmin : (C.ty x.ty).minSz ≤ x.size) (hlive : (C.ty x.ty).region.Live p x.lo x.size)
    (hfr : ∀ a : BitVec 64, x.lo ≤ a.toNat → a.toNat < x.hi → Fresh p0 p a)
    (hdisj : ∀ a : BitVec 64, Frames.InO x a → ¬ InObj Γ a.toNat)
    (hpr : ∀ k, (C.ty x.ty).slot k = .prot) (htag : C.tags.lookup x.ty = none)
    (hwf : ∀ p, Layout C p (Γ ++ [x]) → H.wf (Γ ++ [x]) t x) :
    Struct.Trk C H Γ0 s0 p0 PW (Γ ++ [x]) t := by
  obtain ⟨p', hp', hm, hx, hnf, hG, hmod, hpg, hd, hbe⟩ := h
  rw [hp] at hp'
  cases hp'
  refine ⟨p, hp, hm, Struct.ext_trans hx (Frames.ext_append Γ x), ?_,
    G_addObjLL hM hG hal hsz8 hpos hmin (fun q hq => by rw [hp] at hq; cases hq; exact hlive) hdisj
      (fun k _ => by rw [hpr k]; trivial) htag hwf, hmod, hpg, hd, hbe⟩
  intro o ho a h1 h2
  rcases List.mem_append.mp ho with ho | ho
  · rcases hnf o ho a h1 h2 with h' | h'
    · exact Or.inl h'
    · exact Or.inr h'
  · simp only [List.mem_singleton] at ho
    subst ho
    exact Or.inr (hfr a h1 h2)

end InitECandidate.Solver.MemSafe.HtabEntries
