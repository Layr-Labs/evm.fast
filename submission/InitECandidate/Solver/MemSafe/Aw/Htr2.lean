import InitECandidate.Solver.MemSafe.Aw.Htr

set_option autoImplicit false

/-!
# SSZ roots, part 3 (target E): `htr_u64_at`, `htr_bytes_vector`
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

def u64Body : ProgHOL 64 :=
  .seq (callD (nm "memzero") [lv outN, cw 32])
    (.seq (callD (nm "memcpy") [lv outN, lv pN, cw 8]) (.return (cw 0)))

theorem code_htr_u64_at : guestCode (nm "htr_u64_at") =
    some ([(pN, .one), (outN, .one)], u64Body, .one) := by
  have h : fnEntry Guest.Software.guestFn_htr_u64_at =
      (nm "htr_u64_at", [(pN, .one), (outN, .one)], u64Body, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 195) (by decide)) ⟨_, rfl⟩ h

theorem awSpec_htr_u64_at {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C) :
    AWSpec σ X C H (nm "htr_u64_at") [] (fun vs _ h0 => OutAt 1 h0 vs)
      (fun vs _ v _ => OutRes 1 vs v) := by
  refine awSpec_of_hoareG (PV := OutRes 1) hH hTS hAG ?_
  intro vs body callee rs hl s0 Γ h0 p hs hloc hK hG hp hB hPre
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bn, rfl, hA', hB', hla, hlb⟩ := lookupCode_two code_htr_u64_at (by decide) hl
  obtain ⟨P0, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨O, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨O1, hO1, ho1, ho2⟩ := hPre
  have hOO : O = O1 := Option.some.inj hO1
  subst hOO
  let a : AwE σ := ⟨C, H, [], s0, Γ, p, h0⟩
  have ha0 : ({ C := C, H := H, gw := [], s0 := s0, Γ0 := Γ, p0 := p, h0 := h0 } : AwE σ).h0 = h0 :=
    rfl
  let LL : Locals → Prop := fun m => m.lookup outN = some (.val (.word O)) ∧
    m.lookup pN = some (.val (.word P0))
  refine hoareG_conseq (P := APre a LL)
    (Q := AQ a (fun _ => True) (OutRes 1 [.val (.word P0), .val (.word O)])) ?_
    (fun t _ ht => by
      subst ht
      exact ⟨awInv_init a hG hp hB, by rw [hloc]; exact ⟨hlb, hla⟩⟩)
    (fun _ _ _ _ h => h)
  unfold u64Body
  refine hoareG_seqA (L2 := fun m => LL m ∧ O.toNat + 32 ≤ domTop + 64)
    (hoareG_callAs hK (asp_memzero hK hC hA hT) ?_ ?_) ?_
  · intro s1 hs1 hP1 vs hvs callee
    obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
    rw [ev_lw hP1.2.1] at e1
    cases e1
    rw [ev_cw] at e2
    cases e2
    exact ⟨O, _, rfl, rfl, ho1, by omega⟩
  · intro s1 vs v st hL hvs hRet
    obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
    rw [ev_lw hL.1] at e1
    cases e1
    rw [ev_cw] at e2
    cases e2
    refine ⟨hL, ?_⟩
    have := hRet O _ rfl rfl
    simp at this
    omega
  refine hoareG_seqA (L2 := fun m => O.toNat + 32 ≤ domTop + 64)
    (hoareG_callAs hK (asp_memcpy hK hC hA hT) ?_ (fun _ _ _ _ hL _ _ => hL.2)) ?_
  · intro s1 hs1 hP1 vs hvs callee
    obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
    rw [ev_lw hP1.2.1.1] at e1
    cases e1
    rw [ev_cw] at e3
    cases e3
    exact ⟨O, _, rfl, rfl, ho1, by omega⟩
  · exact hoareG_returnA hK (fun s hs hL v hv O' hO' => by
      cases hO'
      exact hL)

def bvBody : ProgHOL 64 :=
  .seq (.ite (.cmp .notLower (cw 32) (lv nN))
      (.seq (callD (nm "memzero") [lv outN, cw 32])
        (.seq (callD (nm "memcpy") [lv outN, lv pN, lv nN]) (.return (cw 0))))
      .skip)
    (.decCall markN .one (nm "heap_mark") []
      (.decCall pkN (.comb [.one, .one]) (nm "pack_bytes") [lv pN, lv nN]
        (.seq (callD (nm "merkleize") [.rfield 0 (lv pkN), .rfield 1 (lv pkN), .rfield 1 (lv pkN), lv outN])
          (.seq (callD (nm "heap_release") [lv markN]) (.return (cw 0))))))

theorem code_htr_bytes_vector : guestCode (nm "htr_bytes_vector") =
    some ([(pN, .one), (nN, .one), (outN, .one)], bvBody, .one) := by
  have h : fnEntry Guest.Software.guestFn_htr_bytes_vector =
      (nm "htr_bytes_vector", [(pN, .one), (nN, .one), (outN, .one)], bvBody, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 193) (by decide)) ⟨_, rfl⟩ h

theorem awSpec_htr_bytes_vector {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C)
    (hPk : AWSpec σ X C H (nm "pack_bytes") [] (fun _ _ _ => True) (fun _ _ _ _ => True))
    (hMk : AWSpec σ X C H (nm "merkleize") [] (fun vs _ h0 => MerkPre h0 vs)
      (fun vs _ v _ => MerkPost vs v)) :
    AWSpec σ X C H (nm "htr_bytes_vector") [] (fun vs _ h0 => OutAt 2 h0 vs)
      (fun vs _ v _ => OutRes 2 vs v) := by
  refine awSpec_of_hoareG (PV := OutRes 2) hH hTS hAG ?_
  intro vs body callee rs hl s0 Γ h0 p hs hloc hK hG hp hB hPre
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bn, Ot, rfl, hA', hB', hC', hla, hlb, hlc⟩ :=
    lookupCode_three code_htr_bytes_vector (by decide) (by decide) (by decide) hl
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
  have hmk := asp_of_aw hK hMk (fun g hg => absurd hg (by simp)) (fun vs s v t h => h)
  let LL : Locals → Prop := fun m => m.lookup outN = some (.val (.word O)) ∧
    m.lookup nN = some (.val (.word N0)) ∧ m.lookup pN = some (.val (.word P0))
  refine hoareG_conseq (P := APre a LL)
    (Q := AQ a (fun _ => True) (OutRes 2 [.val (.word P0), .val (.word N0), .val (.word O)])) ?_
    (fun t _ ht => by
      subst ht
      exact ⟨awInv_init a hG hp hB, by rw [hloc]; exact ⟨hlc, hlb, hla⟩⟩)
    (fun _ _ _ _ h => h)
  unfold bvBody
  refine hoareG_seqA (L2 := LL) (hoareG_iteA ?_ (hoareG_skipA fun m h => h)) ?_
  · refine hoareG_seqA (L2 := fun m => LL m ∧ O.toNat + 32 ≤ domTop + 64)
      (hoareG_callAs hK (asp_memzero hK hC hA hT) ?_ ?_) ?_
    · intro s1 hs1 hP1 vs hvs callee
      obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
      rw [ev_lw hP1.2.1] at e1
      cases e1
      rw [ev_cw] at e2
      cases e2
      exact ⟨O, _, rfl, rfl, ho1, by omega⟩
    · intro s1 vs v st hL hvs hRet
      obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
      rw [ev_lw hL.1] at e1
      cases e1
      rw [ev_cw] at e2
      cases e2
      refine ⟨hL, ?_⟩
      have := hRet O _ rfl rfl
      simp at this
      omega
    refine hoareG_seqA (L2 := fun m => O.toNat + 32 ≤ domTop + 64)
      (hoareG_callAs hK (asp_memcpy hK hC hA hT) ?_ (fun _ _ _ _ hL _ _ => hL.2)) ?_
    · intro s1 hs1 hP1 vs hvs callee
      obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
      rw [ev_lw hP1.2.1.1] at e1
      cases e1
      rw [ev_lw hP1.2.1.2.1] at e3
      cases e3
      exact ⟨O, _, rfl, rfl, ho1, by omega⟩
    · exact hoareG_returnA hK (fun s hs hL v hv O' hO' => by
        cases hO'
        exact hL)
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

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_htr_bytes_vector
