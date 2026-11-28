import InitECandidate.Solver.SortAddr.Pass
import InitECandidate.Solver.Spec.Mpt.Fill.Cost
import InitECandidate.Solver.MemSafe.Helpers.Basic

/-!
# The width loop and the whole `sort_elems` body

`width` starts at `1` and doubles. The first pass bounds the element count by the domain
size, so afterwards `width ≤ 2 (Lh + 4096)` and doubling never wraps: at most `65`
iterations (`64 - log2 width` decreases). The callee cost below only assumes that the
element-size argument is a word in `[1, 4096]`.
-/

set_option autoImplicit false
set_option maxHeartbeats 8000000
set_option maxRecDepth 100000

namespace InitECandidate.Solver.SortAddr
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

def oNames : List MlS := [qE, qN, qP, qKind, qT, qMark, qAux]

structure OC (X : Ctx 64) where
  d : Dom X
  m0 : Lcl
  E : BitVec 64
  N : BitVec 64
  hE : Lk qE E m0
  hN : Lk qN N m0
  hE1 : 1 ≤ E.toNat
  hE2 : E.toNat ≤ 4096

def OInv (oc : OC X) (W : BitVec 64) (m : Lcl) : Prop :=
  Agree oNames oc.m0 m ∧ Lk qW W m ∧ 1 ≤ W.toNat ∧
    (W.toNat = 1 ∨ (oc.N.toNat < oc.d.Lh + 4096 ∧ W.toNat ≤ 2 * (oc.d.Lh + 4096)))

theorem oinv_small {oc : OC X} {W : BitVec 64} {m : Lcl} (h : OInv oc W m) :
    W.toNat < 2 ^ 62 := by
  have := oc.d.hL35
  have hLh : oc.d.Lh ≤ 2 ^ 35 + 8 := by
    unfold Dom.Lh
    have h8 : alignSlack 64 = 8 := by decide
    omega
  rcases h.2.2.2 with h | h <;> omega

theorem oinv_res {oc : OC X} {W : BitVec 64} {m : Lcl} {x : MlS} {o : Option (ValueHOL 64)}
    (h1 : x ∉ oNames) (h2 : x ≠ qW) (h : OInv oc W m) : OInv oc W (m.resVarEq (x, o)) :=
  ⟨agree_res h1 h.1, lk_res h2 h.2.1, h.2.2⟩

def OPost (oc : OC X) (W : BitVec 64) (m : Lcl) : Prop :=
  ∃ W', OInv oc W' m ∧ W'.toNat = 2 * W.toNat

theorem opost_res {oc : OC X} {W : BitVec 64} {m : Lcl} {x : MlS} {o : Option (ValueHOL 64)}
    (h1 : x ∉ oNames) (h2 : x ≠ qW) (h : OPost oc W m) : OPost oc W (m.resVarEq (x, o)) :=
  let ⟨W', ho, hw⟩ := h; ⟨W', oinv_res h1 h2 ho, hw⟩

def BOuter (Cm Cg : Nat) : Nat := BPass Cm Cg + (0 + (0 + 0))

theorem chn_mOuter (hC : X.code.lookup = guestCode) (oc : OC X) {Cm Cg : Nat}
    (hcm : CalleeCost σ X (nm "memcpy") Cm) (hcg : CalleeCost σ X (nm "bal_sort_gt") Cg)
    {W : BitVec 64} (hWN : W.toNat < oc.N.toNat) (hN63 : oc.N.toNat < 2 ^ 63) :
    CHn σ X (fun s => OInv oc W s.locals) mOuter (BOuter Cm Cg) (fun t => OPost oc W t.locals) := by
  unfold mOuter BOuter
  refine chn_dec fun s _ hs v hv _ => ?_
  rw [ev_cw] at hv
  cases hv
  refine CHn.post (Q := fun t => OPost oc W t.locals) ?_
    (fun t _ h => opost_res (by decide) (by decide) h)
  let s1 := setVarHOLFinite qL (.val (.word (BitVec.ofNat 64 0))) s
  obtain ⟨D, hD⟩ := wd_exists s1.locals
  have hag1 : Agree oNames oc.m0 s1.locals := agree_upd (by decide) hs.1
  let pc : PC X :=
    { d := oc.d, m0 := s1.locals, O0 := oc.d.off D, D := D, E := oc.E, N := oc.N, W := W
      hD := hD
      hE := agree_lk (by decide) hag1 oc.hE
      hN := agree_lk (by decide) hag1 oc.hN
      hW := lk_upd (by decide) hs.2.1
      hE1 := oc.hE1, hE2 := oc.hE2, hN63 := hN63, hW1 := hs.2.2.1, hWN := hWN, hO0 := rfl }
  have hsub : ∀ x ∈ oNames, x ∈ pNames := by decide
  refine chn_seq (R := fun t => PInv pc pc.N t.locals)
    ((chn_pLoop hC pc hcm hcg).pre (fun t _ ht => ?_)) ?_
  · subst ht
    refine ⟨0, agree_refl _ _, lk_new _ _ _, Nat.zero_le _, ?_, Or.inl rfl⟩
    show oc.d.off (D + 0 * oc.E) = oc.d.off D + (0 : BitVec 64).toNat * oc.E.toNat
    simp
  refine chn_dec fun s2 _ hp v2 _ _ => ?_
  have hNs : oc.N.toNat < oc.d.Lh + 4096 := pinv_N_small hp
  have hag2 : Agree oNames oc.m0 s2.locals := fun x hx => (hp.1 x (hsub x hx)).trans (hag1 x hx)
  have hW2 : Lk qW W s2.locals := agree_lk (by decide) hp.1 pc.hW
  refine CHn.post (Q := fun t => OPost oc W t.locals) ?_
    (fun t _ h => opost_res (by decide) (by decide) h)
  refine CHn.pre (P := fun t => Agree oNames oc.m0 t.locals ∧ Lk qW W t.locals) ?_
    (fun t _ ht => by subst ht; exact ⟨agree_upd (by decide) hag2, lk_upd (by decide) hW2⟩)
  refine chn_seq (R := fun t => Agree oNames oc.m0 t.locals ∧ Lk qW W t.locals)
    (chn_assign fun s _ h v _ _ => ⟨agree_upd (by decide) h.1, lk_upd (by decide) h.2⟩) ?_
  refine chn_seq (R := fun t => Agree oNames oc.m0 t.locals ∧ Lk qW W t.locals)
    (chn_assign fun s _ h v _ _ => ⟨agree_upd (by decide) h.1, lk_upd (by decide) h.2⟩) ?_
  refine chn_assign fun s _ h v hv _ => ?_
  rw [ev_mul2 (ev_lk h.2) (ev_cw _ 2)] at hv
  cases hv
  have hW2 : (W * BitVec.ofNat 64 2).toNat = 2 * W.toNat := by
    rw [BitVec.toNat_mul]
    simp only [BitVec.toNat_ofNat]
    omega
  have hW1 := hs.2.2.1
  refine ⟨W * BitVec.ofNat 64 2, ⟨agree_upd (by decide) h.1, lk_new _ _ _, by omega,
    Or.inr ⟨hNs, by omega⟩⟩, hW2⟩

/-- The width measure. -/
def muw (s : PanSemStateFiniteExact 64 σ) : Nat :=
  match s.locals.lookup qW with
  | some (.val (.word W)) => 64 - Nat.log2 W.toNat
  | _ => 0

theorem muw_eq {s : PanSemStateFiniteExact 64 σ} {W : BitVec 64} (h : Lk qW W s.locals) :
    muw s = 64 - Nat.log2 W.toNat := by
  unfold muw; rw [h]

def BWidth (Cm Cg : Nat) : Nat := (64 + 1) * (BOuter Cm Cg + 1)

theorem chn_wLoop (hC : X.code.lookup = guestCode) (oc : OC X) {Cm Cg : Nat}
    (hcm : CalleeCost σ X (nm "memcpy") Cm) (hcg : CalleeCost σ X (nm "bal_sort_gt") Cg) :
    CHn σ X (fun s => ∃ W, OInv oc W s.locals) wLoop (BWidth Cm Cg)
      (fun t => ∃ W, OInv oc W t.locals) := by
  unfold wLoop BWidth
  refine chn_while (μ := muw) 64 (fun s h => h) (fun s => rfl) ?_ ?_ ?_
  · intro s _ _ _
    unfold muw
    split <;> omega
  · intro k
    refine CHn.pre (P := fun s => ∃ W, OInv oc W s.locals ∧ ((W.toNat < oc.N.toNat ∧
      oc.N.toNat < 2 ^ 63) ∧ k = 64 - Nat.log2 W.toNat)) ?_ ?_
    · refine chn_exists fun W => chn_pure fun ⟨⟨hWN, hN63⟩, hk⟩ => ?_
      refine (chn_mOuter hC oc hcm hcg hWN hN63).post fun t _ ⟨W', ho, hw⟩ => ⟨⟨W', ho⟩, ?_⟩
      rw [muw_eq ho.2.1, hk, hw]
      have h1 : W.toNat ≠ 0 := by have := ho.2.2.1; omega
      rw [Nat.log2_two_mul h1]
      have h2 : Nat.log2 W.toNat < 63 := (Nat.log2_lt h1).2 (by omega)
      omega
    · intro s _ ⟨⟨W, ho⟩, hc, hk⟩
      have hs := oinv_small ho
      obtain ⟨hN, hlt⟩ := cond_less ho.2.1 (agree_lk (by decide) ho.1 oc.hN) (by omega) hc
      exact ⟨W, ho, ⟨hlt, hN⟩, by rw [← hk, muw_eq ho.2.1]⟩
  · intro s _ h _
    exact h

/-! ## The body -/

def BEnd (Cm Crl : Nat) : Nat := max (1 + Cm + 0) 0 + ((1 + Crl + 0) + 0)

theorem mEnd_cost {Cm Crl : Nat} (hcm : CalleeCost σ X (nm "memcpy") Cm)
    (hrl : CalleeCost σ X (nm "heap_release") Crl) : Cost σ X mEnd (BEnd Cm Crl) :=
  cost_seq (cost_ite (cost_call hcm (fun _ _ _ _ h => by simp at h)) cost_skip)
    (cost_seq (cost_call hrl (fun _ _ _ _ h => by simp at h)) (cost_return _))

def BSort (Cm Cg Cmk Cal Crl : Nat) : Nat :=
  max 0 0 + (1 + Cmk + (1 + Cal + (BWidth Cm Cg + BEnd Cm Crl)))

/-- The body from an entry with `esz = E ∈ [1, 4096]`. -/
theorem sBody_cost (hC : X.code.lookup = guestCode) (d : Dom X) {Cm Cg Cmk Cal Crl : Nat}
    (hcm : CalleeCost σ X (nm "memcpy") Cm) (hcg : CalleeCost σ X (nm "bal_sort_gt") Cg)
    (hmk : CalleeCost σ X (nm "heap_mark") Cmk) (hal : CalleeCost σ X (nm "alloc") Cal)
    (hrl : CalleeCost σ X (nm "heap_release") Crl) {E : BitVec 64} (hE1 : 1 ≤ E.toNat)
    (hE2 : E.toNat ≤ 4096) :
    Inv.CostP σ X (fun s => Lk qE E s.locals) sBody (BSort Cm Cg Cmk Cal Crl) := by
  unfold sBody BSort
  refine Inv.costP_seq (R := fun t => Lk qE E t.locals ∧ ∃ N, Lk qN N t.locals)
    (Inv.costP_of_cost (cost_ite (cost_return _) cost_skip)) ?_ ?_
  · refine hoare_ite (hoare_return fun _ _ _ _ _ h => by simp at h) ?_
    refine hoare_skip fun s _ ⟨hE, hc⟩ _ => ⟨hE, ?_⟩
    obtain ⟨x, y, hx, -, -⟩ := cmp_false hc
    exact ⟨x, hx⟩
  refine Spec.Mpt.costP_decCall hmk (funSpec_true _) fun s _ ⟨hE, N, hN⟩ _ _ _ v st _ _ => ?_
  refine Inv.CostP.pre (P := fun t => Lk qE E t.locals ∧ Lk qN N t.locals) ?_
    (fun t _ ht => by subst ht; exact ⟨lk_upd (by decide) hE, lk_upd (by decide) hN⟩)
  refine Spec.Mpt.costP_decCall hal (funSpec_true _) fun s _ ⟨hE, hN⟩ _ _ _ v st _ _ => ?_
  refine Inv.CostP.pre (P := fun t => Lk qE E t.locals ∧ Lk qN N t.locals) ?_
    (fun t _ ht => by subst ht; exact ⟨lk_upd (by decide) hE, lk_upd (by decide) hN⟩)
  refine Inv.costP_dec fun s _ ⟨hE, hN⟩ v _ _ => ?_
  refine Inv.CostP.pre (P := fun t => Lk qE E t.locals ∧ Lk qN N t.locals) ?_
    (fun t _ ht => by subst ht; exact ⟨lk_upd (by decide) hE, lk_upd (by decide) hN⟩)
  refine Inv.costP_dec fun s _ ⟨hE, hN⟩ v _ _ => ?_
  refine Inv.CostP.pre (P := fun t => Lk qE E t.locals ∧ Lk qN N t.locals) ?_
    (fun t _ ht => by subst ht; exact ⟨lk_upd (by decide) hE, lk_upd (by decide) hN⟩)
  refine Inv.costP_dec fun s _ ⟨hE, hN⟩ v hv _ => ?_
  rw [ev_cw] at hv
  cases hv
  let s1 := setVarHOLFinite qW (.val (.word (BitVec.ofNat 64 1))) s
  let oc : OC X :=
    { d := d, m0 := s1.locals, E := E, N := N, hE := lk_upd (by decide) hE,
      hN := lk_upd (by decide) hN, hE1 := hE1, hE2 := hE2 }
  have hw := chn_wLoop (σ := σ) hC oc hcm hcg
  refine Inv.costP_seq hw.1 (hoare_post hw.2 fun _ _ _ _ h _ => h.2)
    (Inv.costP_of_cost (mEnd_cost hcm hrl)) |>.pre ?_
  intro t _ ht
  subst ht
  exact ⟨1, agree_refl _ _, lk_new _ _ _, by decide, Or.inl (by decide)⟩

/-- **The conditional callee cost of `sort_elems`.** -/
theorem sort_costP (hC : X.code.lookup = guestCode) (hX : DomBounded X) {Cm Cg Cmk Cal Crl : Nat}
    (hcm : CalleeCost σ X (nm "memcpy") Cm) (hcg : CalleeCost σ X (nm "bal_sort_gt") Cg)
    (hmk : CalleeCost σ X (nm "heap_mark") Cmk) (hal : CalleeCost σ X (nm "alloc") Cal)
    (hrl : CalleeCost σ X (nm "heap_release") Crl) :
    Inv.CalleeCostP σ X (nm "sort_elems")
      (fun vs _ => ∃ E : BitVec 64, vs[2]? = some (.val (.word E)) ∧ 1 ≤ E.toNat ∧ E.toNat ≤ 4096)
      (BSort Cm Cg Cmk Cal Crl) := by
  obtain ⟨L, hL, ⟨lo, hdom⟩, -, hL35⟩ := hX
  have hL' : L + alignSlack 64 + 4096 ≤ 2 ^ 64 := by unfold addrStepMax at hL; omega
  let d : Dom X := { lo := lo, L := L, hin := hdom, hL := hL', hL35 := hL35 }
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, C, D, F, rfl, -, -, -, -, -, -, -, hc, -, -⟩ :=
    MemSafe.Helpers.lookupCode_five code_sort (by decide) hl
  intro s hs ⟨hloc, E, hE, hE1, hE2⟩ hg
  simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hE
  subst hE
  exact sBody_cost hC d hcm hcg hmk hal hrl hE1 hE2 s hs (show Lk qE E s.locals by rw [hloc]; exact hc) hg

end InitECandidate.Solver.SortAddr
