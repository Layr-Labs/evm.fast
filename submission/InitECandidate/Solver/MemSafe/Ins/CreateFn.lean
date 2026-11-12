import InitECandidate.Solver.MemSafe.Ins.Create

set_option autoImplicit false

/-!
# `_create_branch_from_two_leaves`: the function summary

`cbSumm `: for slices `(k1, l1)`, `(k2, l2)` that are `NIn ` (a nonempty slice's first byte is
a nibble, so the child index is `< 16`), the function returns the base of a fresh `NBRANCH` object.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type} {X : Ctx 64}

def cbBody : ProgHOL 64 :=
  .decCall (nm "br") .one (nm "node_new_branch") []
    (.seq (cbPart (nm "k1") (nm "l1") (nm "v1") (nm "vl1") (nm "lf1") (nm "br"))
      (.seq (cbPart (nm "k2") (nm "l2") (nm "v2") (nm "vl2") (nm "lf2") (nm "br"))
        (.return (lv (nm "br")))))

def params_cb : List (MlS × ShapeHOL) :=
  [(nm "k1", .one), (nm "l1", .one), (nm "v1", .one), (nm "vl1", .one),
   (nm "k2", .one), (nm "l2", .one), (nm "v2", .one), (nm "vl2", .one)]

theorem entry_cb : fnEntry Guest.Software.guestFn__create_branch_from_two_leaves =
    (nm "_create_branch_from_two_leaves", params_cb, cbBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_cb :
    guestCode (nm "_create_branch_from_two_leaves") = some (params_cb, cbBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 272) (by decide)) ⟨_, rfl⟩
    entry_cb


def cbSig : Sig := ⟨[.any, .any, .any, .any, .any, .any, .any, .any],
  [.fits (.ptr Types.tNBRANCH)], [], true⟩

/-- The precondition: both slices are `NIn `. -/
def CbPre (vs : List (ValueHOL 64)) (_ : State σ) (Γ : Gam) : Prop :=
  ∃ K1 L1 V1 VL1 K2 L2 V2 VL2 : BitVec 64,
    vs = [.val (.word K1), .val (.word L1), .val (.word V1), .val (.word VL1),
      .val (.word K2), .val (.word L2), .val (.word V2), .val (.word VL2)] ∧
    NIn Γ K1 L1 ∧ NIn Γ K2 L2 ∧ Hooks.VInR Types.tVAL Γ V1 VL1 ∧ Hooks.VInR Types.tVAL Γ V2 VL2

theorem brOb_ext {Γ Γ' : Gam} (he : Ext Γ Γ') {B : BitVec 64}
    (h : ∃ o ∈ Γ, o.base = B ∧ o.ty = Types.tNBRANCH) : ∃ o ∈ Γ', o.base = B ∧ o.ty = Types.tNBRANCH := by
  obtain ⟨o, ho, hb, ht⟩ := h
  obtain ⟨o', ho', hb', ht', -⟩ := he o ho
  exact ⟨o', ho', hb'.trans hb, ht'.trans ht⟩

theorem sumSpecA_create_branch_G :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ))
      (nm "_create_branch_from_two_leaves") cbSig (fun vs s Γ => CbPre vs s Γ)
      (fun _ _ _ _ => False)
      (fun vs s Γ r t Γ' => ScrOld Γ Γ' ∧ ∀ v, r = .returned v → ∀ p0 p', ptrsOf s = some p0 →
        ptrsOf t = some p' → ∃ o ∈ Γ', v = .val (.word o.base) ∧ o.ty = Types.tNBRANCH) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  refine sumSpecA_of_gp (Rx := fun vs _ Γ' _ _ v => ∃ o ∈ Γ', v = .val (.word o.base) ∧
    o.ty = Types.tNBRANCH) hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, -, hbind⟩ := MemSafe.lookupCode_gen code_cb hl
  obtain ⟨K1, L1, V1, VL1, K2, L2, V2, VL2, rfl, hn1, hn2, hv1, hv2⟩ := hpre
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) cbSig [] _ s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  let kv0 : List (MlS × BitVec 64) := [(nm "k1", K1), (nm "l1", L1), (nm "v1", V1), (nm "vl1", VL1),
    (nm "k2", K2), (nm "l2", L2), (nm "v2", V2), (nm "vl2", VL2)]
  have hkv0 : LKV kv0 s0.locals := by
    intro p hp
    simp only [kv0, List.mem_cons, List.not_mem_nil, or_false] at hp
    rw [hloc]
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact (hbind 0 (by decide) (by simp)).1
    · exact (hbind 1 (by decide) (by simp)).1
    · exact (hbind 2 (by decide) (by simp)).1
    · exact (hbind 3 (by decide) (by simp)).1
    · exact (hbind 4 (by decide) (by simp)).1
    · exact (hbind 5 (by decide) (by simp)).1
    · exact (hbind 6 (by decide) (by simp)).1
    · exact (hbind 7 (by decide) (by simp)).1
  refine hoareG_conseq (P := GI a (LKV kv0) (fun Γ _ _ => NIn Γ K1 L1 ∧ NIn Γ K2 L2 ∧
      Hooks.VInR Types.tVAL Γ V1 VL1 ∧ Hooks.VInR Types.tVAL Γ V2 VL2))
    (Q := GP a (fun _ => True) (fun _ _ _ => True)
      (fun Γ' p' _ v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧
        ∃ o ∈ Γ', v = .val (.word o.base) ∧ o.ty = Types.tNBRANCH)) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨hkv0, Γ0, p0, ext_refl _, hh, scrOld_refl _, hn1, hn2, hv1, hv2⟩
  · intro r t _ _ h
    exact gp_final h
  unfold cbBody
  refine gp_decCall ha node_new_branchT_guestR (ctor_sp hX ctor_branch_sp) (by simp [Node.nbSig])
    (fun _ => rfl)
    (L1 := fun v m => LKV kv0 m ∧ m.lookup (nm "br") = some v ∧ ∃ W : BitVec 64, v = .val (.word W))
    (E1 := fun v Γ _ _ => NIn Γ K1 L1 ∧ NIn Γ K2 L2 ∧ Hooks.VInR Types.tVAL Γ V1 VL1 ∧
      Hooks.VInR Types.tVAL Γ V2 VL2 ∧
      ∀ W : BitVec 64, v = .val (.word W) → (∃ o ∈ Γ, o.base = W ∧ o.ty = Types.tNBRANCH) ∧
        FrB a.p0 W 176)
    (L2 := fun _ => True) (E2 := fun _ _ _ => True)
    (fun s Γ q _ _ _ _ vs1 hvs => ⟨(anyArgsG (by simp [Node.nbSig]) rfl hvs).1,
      fun x hx => argCells_any (by simp [Node.nbSig]) hx, fun _ => trivial⟩)
    (fun s st vs1 callee r Γ Γ' q q' _ _ _ _ hE hLc hQ co => ⟨scrOld_sp_co haC co hLc,
      fun v hv _ => ⟨nIn_ext co.ext hE.1, nIn_ext co.ext hE.2.1, Hooks.vInR_ext co.ext hE.2.2.1,
        Hooks.vInR_ext co.ext hE.2.2.2, fun W hW => by
        obtain ⟨o, ho, hvo, hot, hfr⟩ := hQ v hv q co.heap0.2.1
        subst hW
        simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hvo
        exact ⟨⟨o, ho, hvo.symm, hot⟩, frB_of_ret haC co.heap0.2.2.1 co.heap ho hvo.symm hot hfr⟩⟩⟩)
    (fun s st v hL hsh => ⟨lkv_set (s := { st with locals := s.locals }) hL (by
        intro p hp; simp only [kv0, List.mem_cons, List.not_mem_nil, or_false] at hp
        rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> (dsimp only; decide)) v,
      by simp [setVarHOLFinite, FUPDATE], val_of_shapeEq_one' hsh⟩)
    ?_ (fun _ _ _ _ => trivial)
  intro v
  by_cases hw : ∃ W : BitVec 64, v = .val (.word W)
  swap
  · exact hoareG_false fun s _ h => hw h.1.2.2
  obtain ⟨W, rfl⟩ := hw
  let kv : List (MlS × BitVec 64) := (nm "br", W) :: kv0
  let EΓ : Gam → Prop := fun Γ => NIn Γ K1 L1 ∧ NIn Γ K2 L2 ∧ Hooks.VInR Types.tVAL Γ V1 VL1 ∧
    Hooks.VInR Types.tVAL Γ V2 VL2 ∧ (∃ o ∈ Γ, o.base = W ∧ o.ty = Types.tNBRANCH) ∧ FrB a.p0 W 176
  have hEx : ∀ Γ Γ', EΓ Γ → Ext Γ Γ' → EΓ Γ' := fun Γ Γ' h he =>
    ⟨nIn_ext he h.1, nIn_ext he h.2.1, Hooks.vInR_ext he h.2.2.1, Hooks.vInR_ext he h.2.2.2.1,
      brOb_ext he h.2.2.2.2.1, h.2.2.2.2.2⟩
  have hfn : ∀ nlf : MlS, (nlf = nm "lf1" ∨ nlf = nm "lf2") → ∀ p ∈ kv, p.1 ≠ nlf := by
    intro nlf hnlf p hp
    simp only [kv, kv0, List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hnlf with rfl | rfl <;>
      rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> (dsimp only; decide)
  refine hoareG_pre (P := GI a (LKV kv) (fun Γ _ _ => EΓ Γ)) ?_
    (fun s _ ⟨⟨hL, hlb, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨?_, Γ, q, he, hh, hsc,
      ⟨hE.1, hE.2.1, hE.2.2.1, hE.2.2.2.1, (hE.2.2.2.2 W rfl).1, (hE.2.2.2.2 W rfl).2⟩⟩)
  · refine gp_seq (L := LKV kv) (E := fun Γ _ _ => EΓ Γ) ?_ ?_
    · exact cbPart_G rfl ha (kv := kv) (nk := nm "k1") (nl := nm "l1") (nv := nm "v1")
        (nvl := nm "vl1") (nlf := nm "lf1") (br := nm "br") (K := K1) (Lw := L1) (V := V1)
        (VL := VL1) (B := W) (by simp [kv, kv0]) (by simp [kv, kv0]) (by simp [kv, kv0])
        (by simp [kv, kv0]) (by simp [kv]) (hfn _ (Or.inl rfl))
        (EΓ := EΓ) (fun Γ h => ⟨h.1, h.2.2.1, h.2.2.2.2.1, h.2.2.2.2.2⟩) hEx
    refine gp_seq (L := LKV kv) (E := fun Γ _ _ => EΓ Γ) ?_ ?_
    · exact cbPart_G rfl ha (kv := kv) (nk := nm "k2") (nl := nm "l2") (nv := nm "v2")
        (nvl := nm "vl2") (nlf := nm "lf2") (br := nm "br") (K := K2) (Lw := L2) (V := V2)
        (VL := VL2) (B := W) (by simp [kv, kv0]) (by simp [kv, kv0]) (by simp [kv, kv0])
        (by simp [kv, kv0]) (by simp [kv]) (hfn _ (Or.inr rfl))
        (EΓ := EΓ) (fun Γ h => ⟨h.2.1, h.2.2.2.1, h.2.2.2.2.1, h.2.2.2.2.2⟩) hEx
    · refine gp_ret ha.hH (fun s Γ q _ hL _ _ hE v hv => ?_)
      rw [ev_lw (x := nm "br") (hL (nm "br", W) (by simp [kv]))] at hv
      cases hv
      obtain ⟨o, ho, hb, ht⟩ := hE.2.2.2.2.1
      refine ⟨?_, o, ho, by rw [hb], ht⟩
      intro i r w hr hw
      rcases i with _ | i
      · have hr' : ([RT.fits (.ptr Types.tNBRANCH)] : List RT)[0]? = some r := hr
        simp only [List.getElem?_cons_zero, Option.some.injEq] at hr'
        subst hr'
        simp only [flattenHOL, List.getElem?_cons_zero, Option.some.injEq,
          HolWordLab.word.injEq] at hw
        subst hw
        exact ⟨o, ho, hb, ht⟩
      · have hr' : ([RT.fits (.ptr Types.tNBRANCH)] : List RT)[i + 1]? = some r := hr
        simp at hr'
  · intro p hp
    simp only [kv, List.mem_cons] at hp
    rcases hp with rfl | hp
    · exact hlb
    · exact hL p hp

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.sumSpecA_create_branch_G
