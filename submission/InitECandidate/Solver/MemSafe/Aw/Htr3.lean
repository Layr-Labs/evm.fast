import InitECandidate.Solver.MemSafe.Aw.Frame

set_option autoImplicit false

/-!
# SSZ roots, part 4 (target E): `htr_pcontainer`
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

def actN : MlS := nm "act"

def pcAddr : ExpHOL 64 := .op .add [lv actN, .shift .lsr (lv iN) (cw 3)]

def pcLoop : ProgHOL 64 :=
  .seq (.storeByte pcAddr (.op .or [.loadByte pcAddr, .shift .lsl (cw 1) (.op .and [lv iN, cw 7])]))
    (.assign .local iN (.op .add [lv iN, cw 1]))

def pcBody : ProgHOL 64 :=
  .decCall markN .one (nm "heap_mark") []
    (.decCall tmpN .one (nm "alloc") [cw 64]
      (.seq (callD (nm "merkleize_progressive") [lv chN, lv nN, lv tmpN])
        (.dec actN .one (.op .add [lv tmpN, cw 32])
          (.seq (callD (nm "memzero") [lv actN, cw 32])
            (.dec iN .one (cw 0)
              (.seq (.while (.cmp .less (lv iN) (lv nN)) pcLoop)
                (.seq (callD (nm "sha256_pair") [lv tmpN, lv actN, lv outN])
                  (.seq (callD (nm "heap_release") [lv markN]) (.return (cw 0))))))))))

theorem code_htr_pcontainer : guestCode (nm "htr_pcontainer") =
    some ([(chN, .one), (nN, .one), (outN, .one)], pcBody, .one) := by
  have h : fnEntry Guest.Software.guestFn_htr_pcontainer =
      (nm "htr_pcontainer", [(chN, .one), (nN, .one), (outN, .one)], pcBody, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 191) (by decide)) ⟨_, rfl⟩ h

/-- `n` is small (the call sites pass 5 and 19). -/
def PcPre (h0 : Nat) (vs : List (ValueHOL 64)) : Prop :=
  OutAt 2 h0 vs ∧ ∃ N : BitVec 64, argW vs 1 = some N ∧ N.toNat ≤ 1024

theorem awSpec_htr_pcontainer {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C)
    (hMp : AWSpec σ X C H (nm "merkleize_progressive") [] (fun vs _ h0 => MpPre h0 vs)
      (fun vs _ v _ => MpPost vs v)) :
    AWSpec σ X C H (nm "htr_pcontainer") [] (fun vs _ h0 => PcPre h0 vs)
      (fun vs _ v _ => OutRes 2 vs v) := by
  refine awSpec_of_hoareG (PV := OutRes 2) hH hTS hAG ?_
  intro vs body callee rs hl s0 Γ h0 p hs hloc hK hG hp hB hPre
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bn, Ot, rfl, hA', hB', hC', hla, hlb, hlc⟩ :=
    lookupCode_three code_htr_pcontainer (by decide) (by decide) (by decide) hl
  obtain ⟨Ch, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨N0, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨O, rfl⟩ := val_of_shapeEq_one hC'
  obtain ⟨⟨O1, hO1, ho1, ho2⟩, N1, hN1, hN2⟩ := hPre
  have hOO : O = O1 := Option.some.inj hO1
  subst hOO
  have hNN : N0 = N1 := Option.some.inj hN1
  subst hNN
  let a : AwE σ := ⟨C, H, [], s0, Γ, p, h0⟩
  have ha0 : ({ C := C, H := H, gw := [], s0 := s0, Γ0 := Γ, p0 := p, h0 := h0 } : AwE σ).h0 = h0 :=
    rfl
  have hHE : heapEnd = 2952790016 := rfl
  have hmp := asp_of_aw hK hMp (fun g hg => absurd hg (by simp)) (fun vs s v t h => h)
  let BP : Locals → Prop := fun m => m.lookup chN = some (.val (.word Ch)) ∧
    m.lookup nN = some (.val (.word N0)) ∧ m.lookup outN = some (.val (.word O))
  refine hoareG_conseq (P := APre a BP)
    (Q := AQ a (fun _ => True) (OutRes 2 [.val (.word Ch), .val (.word N0), .val (.word O)])) ?_
    (fun t _ ht => by
      subst ht
      exact ⟨awInv_init a hG hp hB, by rw [hloc]; exact ⟨hla, hlb, hlc⟩⟩)
    (fun _ _ _ _ h => h)
  unfold pcBody
  refine hoareG_decCallAs' hK (asp_mark hK hC)
    (Lk := fun m => BP m ∧ MkB p.hp markN m)
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
  refine hoareG_decCallAs' hK (asp_alloc hK hC)
    (Lk := fun m => (BP m ∧ MkB p.hp markN m) ∧ Bd m tmpN h0 heapEnd)
    (L' := fun _ _ => False) ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    rw [evs_cons (ev_cw _ 64) evs_nil] at hvs
    cases hvs
    exact ⟨_, rfl⟩
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨n, q, p'', rfl, rfl, hq1, hq2, hp'', hq3, hq4⟩ := hRet
    exact ⟨⟨⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.2.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.2.2⟩,
      mkb_upd (by decide) hL.2⟩, bd_new _ _ _ hq1 (by omega)⟩
  intro s2
  refine hoareG_seqA (L2 := fun m => (BP m ∧ MkB p.hp markN m) ∧ Bd m tmpN h0 heapEnd)
    (hoareG_callAs hK hmp ?_ (fun _ _ _ _ hL _ _ => hL)) ?_
  · intro s3 hs3 hP3 vs hvs callee
    obtain ⟨T, hT3, t1, t2⟩ := hP3.2.2
    obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
    rw [ev_lw hT3] at e3
    cases e3
    exact ⟨T, rfl, t1, by omega⟩
  -- act = tmp + 32
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s4 hs4 hL4 v4 hv4 hsh4
  obtain ⟨T, hT4, t1, t2⟩ := hL4.2
  rw [ev_add2 (ev_lw hT4) (ev_cw _ 32)] at hv4
  cases hv4
  let LA : Locals → Prop := fun m => (BP m ∧ MkB p.hp markN m) ∧ ∃ T : BitVec 64,
    m.lookup tmpN = some (.val (.word T)) ∧ m.lookup actN = some (.val (.word (T + BitVec.ofNat 64 32))) ∧
      h0 ≤ T.toNat ∧ T.toNat ≤ heapEnd
  refine hoareG_preA (L' := LA) ?_ (fun m hm => by
    subst hm
    exact ⟨⟨⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL4.1.1.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL4.1.1.2.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL4.1.1.2.2⟩,
      mkb_upd (by decide) hL4.1.2⟩, T, by rw [lookup_update_ne _ _ (by decide)]; exact hT4,
      lookup_update_self _ _ _, t1, t2⟩)
  -- memzero(act, 32)
  refine hoareG_seqA (L2 := LA)
    (hoareG_callAs hK (asp_memzero hK hC hA hT) ?_ (fun _ _ _ _ hL _ _ => hL)) ?_
  · intro s5 hs5 hP5 vs hvs callee
    obtain ⟨T, hT5, hA5, t1, t2⟩ := hP5.2.2
    obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
    rw [ev_lw hA5] at e1
    cases e1
    rw [ev_cw] at e2
    cases e2
    have hw : (T + BitVec.ofNat 64 32).toNat = T.toNat + 32 := toNat_addc (by omega)
    exact ⟨_, _, rfl, rfl, by rw [hw]; omega, by rw [hw]; omega⟩
  -- i = 0
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s6 hs6 hL6 v6 hv6 hsh6
  rw [ev_cw] at hv6
  cases hv6
  let LI : Locals → Prop := fun m => LA m ∧ Bd m iN 0 1024
  refine hoareG_preA (L' := LI) ?_ (fun m hm => by
    subst hm
    obtain ⟨T, hT6, hA6, t1, t2⟩ := hL6.2
    exact ⟨⟨⟨⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL6.1.1.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL6.1.1.2.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL6.1.1.2.2⟩,
      mkb_upd (by decide) hL6.1.2⟩, T, by rw [lookup_update_ne _ _ (by decide)]; exact hT6,
      by rw [lookup_update_ne _ _ (by decide)]; exact hA6, t1, t2⟩,
      bd_new _ _ _ (by simp) (by simp)⟩)
  refine hoareG_seqA (L2 := LI) (hoareG_whileA hK (J := LI) ?_ (fun s _ h _ => h)) ?_
  · unfold pcLoop
    refine hoareG_seqP (L2 := fun m => LI m ∧ ∃ I : BitVec 64, m.lookup iN = some (.val (.word I)) ∧
        I.toNat < 1024) ?_ ?_
    · refine hoareG_pre (hoareG_storeByteA hK ?_) (fun s _ h => ⟨h.1.1, h.1.2, ?_⟩)
      · intro s7 hs7 hL7 w hw
        obtain ⟨T, hT7, hA7, t1, t2⟩ := hL7.1.1.2
        obtain ⟨I, hI, i1, i2⟩ := hL7.1.2
        unfold pcAddr at hw
        rw [ev_add2 (ev_lw hA7) (ev_lsr3 hI)] at hw
        cases hw
        have hsh : (I >>> (3 : Nat)).toNat ≤ 1024 := by
          rw [BitVec.toNat_ushiftRight]; exact le_trans (Nat.shiftRight_le _ _) i2
        have hw : (T + BitVec.ofNat 64 32).toNat = T.toNat + 32 := toNat_addc (by omega)
        rw [toNat_add2 (by rw [hw]; omega), hw]
        omega
      · obtain ⟨I, hI, i1, i2⟩ := h.1.2.2
        have hc1 := h.1.2.1.1.1.2.1
        refine ⟨I, hI, ?_⟩
        obtain ⟨w, hw, hw0⟩ := h.2
        obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
        rw [ev_lw hI] at hx
        cases hx
        rw [ev_lw hc1] at hy
        cases hy
        have := less_small (by omega) (by omega) hxy
        omega
    · refine hoareG_assignA hK fun s7 _ hL7 v7 hv7 => ?_
      obtain ⟨I, hI, i1⟩ := hL7.2
      rw [ev_add2 (ev_lw hI) (ev_cw _ 1)] at hv7
      cases hv7
      have hI2 : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := toNat_addc (by omega)
      obtain ⟨T, hT7, hA7, t1, t2⟩ := hL7.1.1.2
      exact ⟨⟨hL7.1.1.1, T, by rw [lookup_update_ne _ _ (by decide)]; exact hT7,
        by rw [lookup_update_ne _ _ (by decide)]; exact hA7, t1, t2⟩,
        bd_new _ _ _ (by omega) (by omega)⟩
  -- sha256_pair(tmp, act, out)
  refine hoareG_seqA (L2 := fun m => LI m ∧ O.toNat + 32 ≤ domTop + 64)
    (hoareG_callAs hK (asp_sha hK hC hA hT) ?_ ?_) ?_
  · intro s8 hs8 hP8 vs hvs callee
    obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
    rw [ev_lw hP8.2.1.1.1.2.2] at e3
    cases e3
    exact ⟨O, rfl, ho1, ho2⟩
  · intro s8 vs v st hL hvs hRet
    obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
    rw [ev_lw hL.1.1.1.2.2] at e3
    cases e3
    refine ⟨hL, ?_⟩
    have := hRet O rfl
    unfold InD at this
    have hdt : domTop = 1099511627776 := by decide
    omega
  refine hoareG_seqA (L2 := fun m => O.toNat + 32 ≤ domTop + 64)
    (hoareG_callAs hK (asp_release hK hC) ?_ (fun _ _ _ _ hL _ _ => hL.2)) ?_
  · intro s9 hs9 hP9 vs hvs callee
    obtain ⟨w, hw, h1, h2, h3⟩ := hP9.2.1.1.1.2
    rw [evs_cons (ev_lw hw) evs_nil] at hvs
    cases hvs
    exact ⟨w, rfl, h1, h2, h3⟩
  · exact hoareG_returnA hK (fun s hs hL v hv O' hO' => by
      cases hO'
      exact hL)

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_htr_pcontainer
