import InitECandidate.Solver.MemSafe.Aw.Chunk

set_option autoImplicit false

/-!
# SSZ roots, part 2 (target E): `htr_plist_chunks`
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Aw
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

/-- Output pointer is argument `k`, at or above `h0` and small. -/
def OutAt (k : Nat) (h0 : Nat) (vs : List (ValueHOL 64)) : Prop :=
  ∃ O : BitVec 64, argW vs k = some O ∧ h0 ≤ O.toNat ∧ O.toNat ≤ 2 ^ 60

/-- The output pointer (argument `k`) leaves a 32-byte root inside the domain. -/
def OutRes (k : Nat) (vs : List (ValueHOL 64)) (_ : ValueHOL 64) : Prop :=
  ∀ O : BitVec 64, argW vs k = some O → O.toNat + 32 ≤ domTop + 64

def plcBody : ProgHOL 64 :=
  .seq (callD (nm "merkleize_progressive") [lv rootsN, lv nN, lv outN])
    (.seq (callD (nm "mix_in_length") [lv outN, lv lenN, lv outN]) (.return (cw 0)))

theorem code_htr_plist_chunks : guestCode (nm "htr_plist_chunks") =
    some ([(rootsN, .one), (nN, .one), (lenN, .one), (outN, .one)], plcBody, .one) := by
  have h : fnEntry Guest.Software.guestFn_htr_plist_chunks =
      (nm "htr_plist_chunks", [(rootsN, .one), (nN, .one), (lenN, .one), (outN, .one)], plcBody,
        .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 189) (by decide)) ⟨_, rfl⟩ h

theorem awSpec_htr_plist_chunks {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C)
    (hMp : AWSpec σ X C H (nm "merkleize_progressive") [] (fun vs _ h0 => MpPre h0 vs)
      (fun vs _ v _ => MpPost vs v))
    (hMix : AWSpec σ X C H (nm "mix_in_length") [] (fun vs _ h0 => MixPre h0 vs)
      (fun vs _ v _ => MixPost vs v)) :
    AWSpec σ X C H (nm "htr_plist_chunks") [] (fun vs _ h0 => OutAt 3 h0 vs)
      (fun vs _ v _ => OutRes 3 vs v) := by
  refine awSpec_of_hoareG (PV := OutRes 3) hH hTS hAG ?_
  intro vs body callee rs hl s0 Γ h0 p hs hloc hK hG hp hB hPre
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bn, Ln, Ot, rfl, hA', hB', hC', hD', hla, hlb, hlc, hld⟩ :=
    Bn.lookupCode_four code_htr_plist_chunks (by decide) hl
  obtain ⟨R0, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨N0, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨L0, rfl⟩ := val_of_shapeEq_one hC'
  obtain ⟨O, rfl⟩ := val_of_shapeEq_one hD'
  obtain ⟨O1, hO1, ho1, ho2⟩ := hPre
  have hOO : O = O1 := Option.some.inj hO1
  subst hOO
  let a : AwE σ := ⟨C, H, [], s0, Γ, p, h0⟩
  have ha0 : ({ C := C, H := H, gw := [], s0 := s0, Γ0 := Γ, p0 := p, h0 := h0 } : AwE σ).h0 = h0 :=
    rfl
  have hmp := asp_of_aw hK hMp (fun g hg => absurd hg (by simp)) (fun vs s v t h => h)
  have hmix := asp_of_aw hK hMix (fun g hg => absurd hg (by simp)) (fun vs s v t h => h)
  let LL : Locals → Prop := fun m => m.lookup outN = some (.val (.word O)) ∧
    m.lookup lenN = some (.val (.word L0)) ∧ m.lookup rootsN = some (.val (.word R0)) ∧
    m.lookup nN = some (.val (.word N0))
  refine hoareG_conseq (P := APre a LL)
    (Q := AQ a (fun _ => True) (OutRes 3 [.val (.word R0), .val (.word N0), .val (.word L0),
      .val (.word O)])) ?_
    (fun t _ ht => by
      subst ht
      exact ⟨awInv_init a hG hp hB, by rw [hloc]; exact ⟨hld, hlc, hla, hlb⟩⟩)
    (fun _ _ _ _ h => h)
  unfold plcBody
  refine hoareG_seqA (L2 := LL)
    (hoareG_callAs hK hmp ?_ (fun _ _ _ _ hL _ _ => hL)) ?_
  · intro s1 hs1 hP1 vs hvs callee
    obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
    rw [ev_lw hP1.2.1] at e3
    cases e3
    exact ⟨O, rfl, ho1, ho2⟩
  refine hoareG_seqA (L2 := fun m => LL m ∧ O.toNat + 32 ≤ domTop + 64)
    (hoareG_callAs hK hmix ?_ ?_) ?_
  · intro s1 hs1 hP1 vs hvs callee
    obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
    rw [ev_lw hP1.2.1] at e3
    cases e3
    exact ⟨O, rfl, ho1, ho2⟩
  · intro s1 vs v st hL hvs hRet
    obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
    rw [ev_lw hL.1] at e3
    cases e3
    refine ⟨hL, ?_⟩
    have := hRet O rfl
    unfold InD at this
    have hdt : domTop = 1099511627776 := by decide
    omega
  · exact hoareG_returnA hK (fun s hs hL v hv O' hO' => by
      cases hO'
      exact hL.2)

/-- A pair-returning call result is a pair of words. -/
theorem rstruct_of_shape' {v : ValueHOL 64}
    (h : shapeEqHOL (shapeOfHOLExact v) (.comb [.one, .one]) = true) :
    ∃ x y : BitVec 64, v = .rStruct [.val (.word x), .val (.word y)] := by
  obtain ⟨ws, hl, rfl⟩ := eq_wv_of_shape (k := 2) ((shapeEqHOL_eq_true _ _).mp h)
  match ws, hl with
  | [x, y], _ => exact ⟨x, y, rfl⟩

def pkN : MlS := nm "pk"

def pbBody : ProgHOL 64 :=
  .decCall markN .one (nm "heap_mark") []
    (.decCall pkN (.comb [.one, .one]) (nm "pack_bytes") [lv pN, lv nN]
      (.seq (callD (nm "htr_plist_chunks") [.rfield 0 (lv pkN), .rfield 1 (lv pkN), lv nN, lv outN])
        (.seq (callD (nm "heap_release") [lv markN]) (.return (cw 0)))))

theorem code_htr_pbytes : guestCode (nm "htr_pbytes") =
    some ([(pN, .one), (nN, .one), (outN, .one)], pbBody, .one) := by
  have h : fnEntry Guest.Software.guestFn_htr_pbytes =
      (nm "htr_pbytes", [(pN, .one), (nN, .one), (outN, .one)], pbBody, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 190) (by decide)) ⟨_, rfl⟩ h

theorem awSpec_htr_pbytes {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C)
    (hPk : AWSpec σ X C H (nm "pack_bytes") [] (fun _ _ _ => True) (fun _ _ _ _ => True))
    (hPl : AWSpec σ X C H (nm "htr_plist_chunks") [] (fun vs _ h0 => OutAt 3 h0 vs)
      (fun vs _ v _ => OutRes 3 vs v)) :
    AWSpec σ X C H (nm "htr_pbytes") [] (fun vs _ h0 => OutAt 2 h0 vs)
      (fun vs _ v _ => OutRes 2 vs v) := by
  refine awSpec_of_hoareG (PV := OutRes 2) hH hTS hAG ?_
  intro vs body callee rs hl s0 Γ h0 p hs hloc hK hG hp hB hPre
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bn, Ot, rfl, hA', hB', hC', hla, hlb, hlc⟩ :=
    lookupCode_three code_htr_pbytes (by decide) (by decide) (by decide) hl
  obtain ⟨P0, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨N0, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨O, rfl⟩ := val_of_shapeEq_one hC'
  obtain ⟨O1, hO1, ho1, ho2⟩ := hPre
  have hOO : O = O1 := Option.some.inj hO1
  subst hOO
  let a : AwE σ := ⟨C, H, [], s0, Γ, p, h0⟩
  have ha0 : ({ C := C, H := H, gw := [], s0 := s0, Γ0 := Γ, p0 := p, h0 := h0 } : AwE σ).h0 = h0 :=
    rfl
  have hpk := asp_of_aw hK hPk (fun g hg => absurd hg (by simp)) (fun vs s v t h => h)
  have hpl := asp_of_aw hK hPl (fun g hg => absurd hg (by simp)) (fun vs s v t h => h)
  let LL : Locals → Prop := fun m => m.lookup outN = some (.val (.word O)) ∧
    m.lookup nN = some (.val (.word N0))
  refine hoareG_conseq (P := APre a LL)
    (Q := AQ a (fun _ => True) (OutRes 2 [.val (.word P0), .val (.word N0), .val (.word O)])) ?_
    (fun t _ ht => by
      subst ht
      exact ⟨awInv_init a hG hp hB, by rw [hloc]; exact ⟨hlc, hlb⟩⟩)
    (fun _ _ _ _ h => h)
  unfold pbBody
  refine hoareG_decCallAs' hK (asp_mark hK hC)
    (Lk := fun m => LL m ∧ MkB p.hp markN m)
    (L' := fun _ _ => False) ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    rw [evs_nil] at hvs
    cases hvs
    rfl
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨w, p', rfl, hp', hw, h1, h2, h3⟩ := hRet
    exact ⟨⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL.2⟩,
      w, lookup_update_self _ _ _, h1, h2, h3⟩
  intro s1
  refine hoareG_decCallAs' hK hpk
    (Lk := fun m => (LL m ∧ MkB p.hp markN m) ∧ ∃ x y : BitVec 64,
      m.lookup pkN = some (.rStruct [.val (.word x), .val (.word y)]))
    (L' := fun _ _ => False) ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    trivial
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨x, y, rfl⟩ := rstruct_of_shape' hsh
    exact ⟨⟨⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.2⟩,
      mkb_upd (by decide) hL.2⟩, x, y, lookup_update_self _ _ _⟩
  intro s2
  refine hoareG_seqA (L2 := fun m => ((LL m ∧ MkB p.hp markN m) ∧ O.toNat + 32 ≤ domTop + 64))
    (hoareG_callAs hK hpl ?_ ?_) ?_
  · intro s3 hs3 hP3 vs hvs callee
    obtain ⟨x, y, hpk3⟩ := hP3.2.2
    obtain ⟨v1, v2, v3, v4, rfl, e1, e2, e3, e4⟩ := evs_four hvs
    rw [ev_rfield (show ev s3 (lv pkN) = _ from hpk3)] at e1 e2
    rw [ev_lw hP3.2.1.1.2] at e3
    rw [ev_lw hP3.2.1.1.1] at e4
    cases e4
    exact ⟨O, rfl, ho1, ho2⟩
  · intro s3 vs v st hL hvs hRet
    obtain ⟨x, y, hpk3⟩ := hL.2
    obtain ⟨v1, v2, v3, v4, rfl, e1, e2, e3, e4⟩ := evs_four hvs
    rw [ev_lw hL.1.1.1] at e4
    cases e4
    exact ⟨hL.1, hRet O rfl⟩
  refine hoareG_seqA (L2 := fun m => O.toNat + 32 ≤ domTop + 64)
    (hoareG_callAs hK (asp_release hK hC) ?_ (fun _ _ _ _ hL _ _ => hL.2)) ?_
  · intro s3 hs3 hP3 vs hvs callee
    obtain ⟨w, hw, h1, h2, h3⟩ := hP3.2.1.2
    rw [evs_cons (ev_lw hw) evs_nil] at hvs
    cases hvs
    exact ⟨w, rfl, h1, h2, h3⟩
  · exact hoareG_returnA hK (fun s hs hL v hv O' hO' => by
      cases hO'
      exact hL)

def limcN : MlS := nm "limit_chunks"

def hblBody : ProgHOL 64 :=
  .decCall markN .one (nm "heap_mark") []
    (.decCall pkN (.comb [.one, .one]) (nm "pack_bytes") [lv pN, lv nN]
      (.seq (callD (nm "merkleize") [.rfield 0 (lv pkN), .rfield 1 (lv pkN), lv limcN, lv outN])
        (.seq (callD (nm "heap_release") [lv markN])
          (.seq (callD (nm "mix_in_length") [lv outN, lv nN, lv outN]) (.return (cw 0))))))

theorem code_htr_bytes_list : guestCode (nm "htr_bytes_list") =
    some ([(pN, .one), (nN, .one), (limcN, .one), (outN, .one)], hblBody, .one) := by
  have h : fnEntry Guest.Software.guestFn_htr_bytes_list =
      (nm "htr_bytes_list", [(pN, .one), (nN, .one), (limcN, .one), (outN, .one)], hblBody, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 194) (by decide)) ⟨_, rfl⟩ h

theorem awSpec_htr_bytes_list {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C)
    (hPk : AWSpec σ X C H (nm "pack_bytes") [] (fun _ _ _ => True) (fun _ _ _ _ => True))
    (hMk : AWSpec σ X C H (nm "merkleize") [] (fun vs _ h0 => MerkPre h0 vs)
      (fun vs _ v _ => MerkPost vs v))
    (hMix : AWSpec σ X C H (nm "mix_in_length") [] (fun vs _ h0 => MixPre h0 vs)
      (fun vs _ v _ => MixPost vs v)) :
    AWSpec σ X C H (nm "htr_bytes_list") [] (fun vs _ h0 => OutAt 3 h0 vs)
      (fun vs _ v _ => OutRes 3 vs v) := by
  refine awSpec_of_hoareG (PV := OutRes 3) hH hTS hAG ?_
  intro vs body callee rs hl s0 Γ h0 p hs hloc hK hG hp hB hPre
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bn, Ln, Ot, rfl, hA', hB', hC', hD', hla, hlb, hlc, hld⟩ :=
    Bn.lookupCode_four code_htr_bytes_list (by decide) hl
  obtain ⟨P0, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨N0, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨L0, rfl⟩ := val_of_shapeEq_one hC'
  obtain ⟨O, rfl⟩ := val_of_shapeEq_one hD'
  obtain ⟨O1, hO1, ho1, ho2⟩ := hPre
  have hOO : O = O1 := Option.some.inj hO1
  subst hOO
  let a : AwE σ := ⟨C, H, [], s0, Γ, p, h0⟩
  have ha0 : ({ C := C, H := H, gw := [], s0 := s0, Γ0 := Γ, p0 := p, h0 := h0 } : AwE σ).h0 = h0 :=
    rfl
  have hpk := asp_of_aw hK hPk (fun g hg => absurd hg (by simp)) (fun vs s v t h => h)
  have hmk := asp_of_aw hK hMk (fun g hg => absurd hg (by simp)) (fun vs s v t h => h)
  have hmix := asp_of_aw hK hMix (fun g hg => absurd hg (by simp)) (fun vs s v t h => h)
  let LL : Locals → Prop := fun m => m.lookup outN = some (.val (.word O)) ∧
    m.lookup nN = some (.val (.word N0)) ∧ m.lookup limcN = some (.val (.word L0))
  refine hoareG_conseq (P := APre a LL)
    (Q := AQ a (fun _ => True) (OutRes 3 [.val (.word P0), .val (.word N0), .val (.word L0),
      .val (.word O)])) ?_
    (fun t _ ht => by
      subst ht
      exact ⟨awInv_init a hG hp hB, by rw [hloc]; exact ⟨hld, hlb, hlc⟩⟩)
    (fun _ _ _ _ h => h)
  unfold hblBody
  refine hoareG_decCallAs' hK (asp_mark hK hC)
    (Lk := fun m => LL m ∧ MkB p.hp markN m)
    (L' := fun _ _ => False) ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    rw [evs_nil] at hvs
    cases hvs
    rfl
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨w, p', rfl, hp', hw, h1, h2, h3⟩ := hRet
    exact ⟨⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL.2.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL.2.2⟩,
      w, lookup_update_self _ _ _, h1, h2, h3⟩
  intro s1
  refine hoareG_decCallAs' hK hpk
    (Lk := fun m => (LL m ∧ MkB p.hp markN m) ∧ ∃ x y : BitVec 64,
      m.lookup pkN = some (.rStruct [.val (.word x), .val (.word y)]))
    (L' := fun _ _ => False) ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    trivial
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨x, y, rfl⟩ := rstruct_of_shape' hsh
    exact ⟨⟨⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.2.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.2.2⟩,
      mkb_upd (by decide) hL.2⟩, x, y, lookup_update_self _ _ _⟩
  intro s2
  refine hoareG_seqA (L2 := fun m => ((LL m ∧ MkB p.hp markN m) ∧ O.toNat + 32 ≤ domTop + 64))
    (hoareG_callAs hK hmk ?_ ?_) ?_
  · intro s3 hs3 hP3 vs hvs callee
    obtain ⟨x, y, hpk3⟩ := hP3.2.2
    obtain ⟨v1, v2, v3, v4, rfl, e1, e2, e3, e4⟩ := evs_four hvs
    rw [ev_lw hP3.2.1.1.1] at e4
    cases e4
    exact ⟨O, rfl, ho1, ho2⟩
  · intro s3 vs v st hL hvs hRet
    obtain ⟨v1, v2, v3, v4, rfl, e1, e2, e3, e4⟩ := evs_four hvs
    rw [ev_lw hL.1.1.1] at e4
    cases e4
    exact ⟨hL.1, hRet O rfl⟩
  refine hoareG_seqA (L2 := fun m => LL m)
    (hoareG_callAs hK (asp_release hK hC) ?_ (fun _ _ _ _ hL _ _ => hL.1.1)) ?_
  · intro s3 hs3 hP3 vs hvs callee
    obtain ⟨w, hw, h1, h2, h3⟩ := hP3.2.1.2
    rw [evs_cons (ev_lw hw) evs_nil] at hvs
    cases hvs
    exact ⟨w, rfl, h1, h2, h3⟩
  refine hoareG_seqA (L2 := fun m => O.toNat + 32 ≤ domTop + 64)
    (hoareG_callAs hK hmix ?_ ?_) ?_
  · intro s3 hs3 hP3 vs hvs callee
    obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
    rw [ev_lw hP3.2.1] at e3
    cases e3
    exact ⟨O, rfl, ho1, ho2⟩
  · intro s3 vs v st hL hvs hRet
    obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
    rw [ev_lw hL.1] at e3
    cases e3
    have := hRet O rfl
    unfold InD at this
    have hdt : domTop = 1099511627776 := by decide
    omega
  · exact hoareG_returnA hK (fun s hs hL v hv O' hO' => by
      cases hO'
      exact hL)

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_htr_bytes_list
