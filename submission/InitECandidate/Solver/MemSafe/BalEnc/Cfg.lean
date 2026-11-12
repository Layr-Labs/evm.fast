import InitECandidate.Solver.MemSafe.Aw.Sk
import InitECandidate.Solver.MemSafe.Hooks.Rec
import InitECandidate.Solver.MemSafe.Bal.BalInit

set_option autoImplicit false

/-!
# The configuration `guestCS`: `guestC` with scalar list arrays

`guestCS` is `guestC` with the slot kinds of `tLSTAh` / `tLSTAs` changed `prot → scalar`, so that
the `Aw` kit (whose footprint is `h0 ≤ x ∨ WCell ∨ ¬Allocated`) covers the in-place `sort_elems`
calls on the BAL list arrays. `nwH H` adds the no-wrap fact `∀ y ∈ Γ, y.hi ≤ 2^64` (which `G`
implies) to the hook, so that its footprint can be shown to avoid list arrays without a layout.

* `g_iff_cs : G guestCS (nwH H) Γ s ↔ G guestC H Γ s`.
* `hooksLawful_cs : HooksLawful guestCS (nwH guestHooksR)`, `tagSlots_cs`, `allocGlobs_cs`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.BalEnc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Helpers InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type}

def lstahTyS : TyD := ⟨.heap, [], .scalar, 8⟩
def lstasTyS : TyD := ⟨.scratch, [], .scalar, 8⟩

def guestTS : List TyD := (guestT.set tLSTAh lstahTyS).set tLSTAs lstasTyS

/-- `guestC` with the list arrays scalar. The protected globals are those of `guestC` and the six BAL globals (`bal4`): the encoders keep the
BAL tables reachable. -/
def guestCS : Cfg := ⟨guestTS, guestGT, guestPG ++ Bal.bal4, guestTags⟩

theorem guestT_length : 18 < guestT.length := by decide

theorem ty_cs (t : Nat) : guestCS.ty t =
    if t = tLSTAs then lstasTyS else if t = tLSTAh then lstahTyS else guestC.ty t := by
  unfold Cfg.ty guestCS guestC guestTS
  simp only [List.getD_eq_getElem?_getD, List.getElem?_set]
  have hl := guestT_length
  have h17 : 17 < guestT.length := by omega
  have h18 : 18 < guestT.length := by omega
  by_cases h1 : t = tLSTAs
  · subst h1
    simp [tLSTAs, tLSTAh, h18]
  · by_cases h2 : t = tLSTAh
    · subst h2
      simp [tLSTAs, tLSTAh, h17]
    · simp [Ne.symm h1, Ne.symm h2, h1, h2]


theorem region_cs (t : Nat) : (guestCS.ty t).region = (guestC.ty t).region := by
  rw [ty_cs]
  split_ifs with h1 h2
  · subst h1; rfl
  · subst h2; rfl
  · rfl

theorem minSz_cs (t : Nat) : (guestCS.ty t).minSz = (guestC.ty t).minSz := by
  rw [ty_cs]
  split_ifs with h1 h2
  · subst h1; rfl
  · subst h2; rfl
  · rfl

theorem fits_cs (t k : Nat) (Γ : Gam) (v : BitVec 64) :
    Fits Γ ((guestCS.ty t).slot k) v ↔ Fits Γ ((guestC.ty t).slot k) v := by
  by_cases h : IsLstA t
  · have h1 : (guestC.ty t).slot k = .prot := lstA_prot h k
    have h2 : (guestCS.ty t).slot k = .scalar := by
      rcases h with rfl | rfl
      · rw [ty_cs, if_neg (by decide), if_pos rfl]; rfl
      · rw [ty_cs, if_pos rfl]; rfl
    rw [h1, h2]
    simp [Fits]
  · have : guestCS.ty t = guestC.ty t := by
      rw [ty_cs, if_neg (fun e => h (Or.inr e)), if_neg (fun e => h (Or.inl e))]
    rw [this]

/-- `G` depends on the configuration only through regions, sizes, slot fits, tags and globals. -/
theorem g_cs_iff {H : Hooks σ} {Γ : Gam} {s : State σ} :
    G guestCS H Γ s ↔ G guestC H Γ s := by
  unfold G Layout Fields Tags Globs
  have e1 : ∀ o : Obj, (guestCS.ty o.ty).minSz = (guestC.ty o.ty).minSz := fun o => minSz_cs _
  have e2 : ∀ o : Obj, (guestCS.ty o.ty).region = (guestC.ty o.ty).region := fun o => region_cs _
  have e3 : guestCS.tags = guestC.tags := rfl
  have e4 : guestCS.GT = guestC.GT := rfl
  simp only [e1, e2, e3, e4, fits_cs]


theorem ty_cs_of_not {t : Nat} (h : ¬ IsLstA t) : guestCS.ty t = guestC.ty t := by
  rw [ty_cs, if_neg (fun e => h (Or.inr e)), if_neg (fun e => h (Or.inl e))]

theorem tagSlots_cs : TagSlots guestCS := fun t tag h => by
  have h' : guestC.tags.lookup t = some tag := h
  have h1 := Helpers.tagSlots_guestC t tag h'
  have hl : ¬ IsLstA t := by
    intro hl
    rw [lstA_untagged hl] at h'
    cases h'
  rw [ty_cs_of_not hl]
  exact h1

theorem allocGlobs_cs : AllocGlobs guestCS := by
  intro g hg
  have h := Annot.drv_allocG g hg
  refine ⟨fun hm => ?_, h.2⟩
  rcases List.mem_append.mp hm with hm | hm
  · exact h.1 hm
  · rcases hg with rfl | rfl | rfl <;> revert hm <;> decide

theorem slot_cs_of_not {t : Nat} (h : ¬ IsLstA t) (k : Nat) :
    (guestCS.ty t).slot k = (guestC.ty t).slot k := by rw [ty_cs_of_not h]

theorem slot_cs_lstA {t : Nat} (h : IsLstA t) (k : Nat) : (guestCS.ty t).slot k = .scalar := by
  rcases h with rfl | rfl
  · rw [ty_cs, if_neg (by decide), if_pos rfl]; rfl
  · rw [ty_cs, if_pos rfl]; rfl

/-! ## The no-wrap hook -/

def NW (Γ : Gam) : Prop := ∀ y ∈ Γ, y.hi ≤ 2 ^ 64

/-- The hook with the no-wrap fact added. -/
def nwH (H : Hooks σ) : Hooks σ :=
  ⟨fun Γ s o => H.wf Γ s o ∧ NW Γ, fun Γ s o a => H.fp Γ s o a ∧ NW Γ⟩

theorem g_nw_iff {C : Cfg} {H : Hooks σ} {Γ : Gam} {s : State σ} :
    G C (nwH H) Γ s ↔ G C H Γ s := by
  constructor
  · rintro ⟨p, h1, h2, h3, h4, h5, h6, h7⟩
    exact ⟨p, h1, h2, h3, h4, h5, h6, fun o ho => (h7 o ho).1⟩
  · intro hG
    have hnw : NW Γ := obj_hi_le hG
    obtain ⟨p, h1, h2, h3, h4, h5, h6, h7⟩ := hG
    exact ⟨p, h1, h2, h3, h4, h5, h6, fun o ho => ⟨h7 o ho, hnw⟩⟩

/-- `G` at the scalar-list-array configuration. -/
theorem g_iff {H : Hooks σ} {Γ : Gam} {s : State σ} :
    G guestCS (nwH H) Γ s ↔ G guestC H Γ s := by
  rw [g_nw_iff]
  exact g_cs_iff

theorem hooksLawful_cs : HooksLawful guestCS (nwH (guestHooksR (σ := σ))) := by
  refine ⟨?_, ?_⟩
  · intro Γ s o a ho hwf hfp
    obtain ⟨y, hy, k, hk, hslot, rfl⟩ :=
      (guestHooksR_lawful (σ := σ)).1 Γ s o a ho hwf.1 hfp.1
    by_cases hA : IsLstA y.ty
    · exfalso
      have hhi := hfp.2 y hy
      have hh : y.hi = y.lo + y.size := rfl
      unfold Obj.HasSlot at hk
      have e := cellN (x := y) (k := k) (by omega)
      obtain ⟨-, hyt⟩ := lstHooks_guestR.loc Γ s o y (y.cell k) hy hfp.1 (by omega) (by omega)
        (Or.inr hA)
      exact (lstA_ne hA).2.2.2.1 hyt
    · exact ⟨y, hy, k, hk, by rw [slot_cs_of_not hA]; exact hslot, rfl⟩
  · intro Γ s s' o hwf hd hbe hfp hpg
    have hnw := hwf.2
    obtain ⟨h1, h2⟩ := (guestHooksR_lawful (σ := σ)).2 Γ s s' o hwf.1 hd hbe
      (fun a ha => hfp a ⟨ha, hnw⟩) (fun g hg => hpg g (List.mem_append_left _ hg))
    refine ⟨⟨h1, hnw⟩, ?_⟩
    funext a
    simp only [nwH]
    rw [h2]


/-! ## Lifting table entries from `guestC` -/

/-- A signature with no writable-buffer parameter. -/
def NoBuf (sg : Sig) : Prop :=
  ∀ pt ∈ sg.params, (∀ n, pt ≠ PT.buf n) ∧ (∀ i c d, pt ≠ PT.bufArg i c d)

theorem argsOK_cs {Γ : Gam} {p : Ptrs} {ps : List PT} {vs : List (ValueHOL 64)}
    (hnb : ∀ pt ∈ ps, (∀ n, pt ≠ PT.buf n) ∧ (∀ i c d, pt ≠ PT.bufArg i c d))
    (h : ArgsOK guestCS Γ p ps vs) : ArgsOK guestC Γ p ps vs := by
  refine ⟨h.1, fun i pt v hpt hv => ?_⟩
  have h2 := h.2 i pt v hpt hv
  have hm : pt ∈ ps := List.mem_of_getElem? hpt
  obtain ⟨hb1, hb2⟩ := hnb pt hm
  cases pt with
  | any => trivial
  | fits k => exact h2
  | buf n => exact absurd rfl (hb1 n)
  | bufArg i c d => exact absurd rfl (hb2 i c d)
  | eq c => exact h2

theorem wcell_cs {Γ : Gam} {a : BitVec 64} (h : WCell guestC Γ a) : WCell guestCS Γ a := by
  obtain ⟨o, ho, k, hk, hne, rfl⟩ := h
  refine ⟨o, ho, k, hk, ?_, rfl⟩
  by_cases hA : IsLstA o.ty
  · rw [slot_cs_lstA hA]; decide
  · rw [slot_cs_of_not hA]; exact hne

theorem protcell_cs {Γ : Gam} {a : BitVec 64} (h : ProtCell guestC Γ a) :
    ProtCell guestCS Γ a ∨ WCell guestCS Γ a := by
  obtain ⟨o, ho, k, hk, hs, rfl⟩ := h
  by_cases hA : IsLstA o.ty
  · exact Or.inr ⟨o, ho, k, hk, by rw [slot_cs_lstA hA]; decide, rfl⟩
  · exact Or.inl ⟨o, ho, k, hk, by rw [slot_cs_of_not hA]; exact hs, rfl⟩

theorem protcell_of_cs {Γ : Gam} {a : BitVec 64} (h : ProtCell guestCS Γ a) :
    ProtCell guestC Γ a := by
  obtain ⟨o, ho, k, hk, hs, rfl⟩ := h
  by_cases hA : IsLstA o.ty
  · rw [slot_cs_lstA hA] at hs; cases hs
  · exact ⟨o, ho, k, hk, by rw [← slot_cs_of_not hA]; exact hs, rfl⟩

theorem sumCore_cs {H : Hooks σ} {sg : Sig} {PW : BitVec 64 → Prop} {Γ Γ' : Gam}
    {s t : State σ} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (hex : ∀ g ∈ Bal.bal4, t.globals.lookup g = s.globals.lookup g)
    (h : SumCore guestC H sg (fun a => ProtCell guestC Γ a ∧ PW a) Γ s vs r t Γ' p p') :
    SumCore guestCS (nwH H) sg (fun a => ProtCell guestCS Γ a ∧ PW a) Γ s vs r t Γ' p p' := by
  obtain ⟨h1, h2, h3, h4, h5, h6, hmod, h8, h9, h10⟩ := h
  refine ⟨h1, h2, h3, h4, h5, g_iff.2 h6, hmod.mono fun a ha => ?_,
    fun g hg hgs => ?_, h9, h10⟩
  swap
  · rcases List.mem_append.mp hg with hg | hg
    · exact h8 g hg hgs
    · exact hex g hg
  rcases ha with h | h | h | ⟨hp, hw⟩
  · exact Or.inl (wcell_cs h)
  · exact Or.inr (Or.inl h)
  · exact Or.inr (Or.inr (Or.inl h))
  · rcases protcell_cs hp with hp' | hp'
    · exact Or.inr (Or.inr (Or.inr ⟨hp', hw⟩))
    · exact Or.inl hp'

theorem csumm_cs {X : Ctx 64} {H : Hooks σ} {f : MlS} {sg : Sig} {cs : List Cap}
    (hnb : NoBuf sg) (hex : FunSpec σ X f (fun _ s _ t => ∀ g ∈ Bal.bal4,
      t.globals.lookup g = s.globals.lookup g)) (h : CSumm σ X guestC H f sg cs) :
    CSumm σ X guestCS (nwH H) f sg cs := by
  intro vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs hpre
  obtain ⟨p, hp, hao⟩ := hargs
  obtain ⟨Γ', p0, p', core, hq⟩ := h vs body callee rs hl s hs hloc r hr hg hna Γ (g_iff.1 hG)
    ⟨p, hp, argsOK_cs hnb hao⟩ hpre
  exact ⟨Γ', p0, p', sumCore_cs (hex vs body callee rs hl s hs hloc r hr) core, hq⟩

end InitECandidate.Solver.MemSafe.BalEnc
