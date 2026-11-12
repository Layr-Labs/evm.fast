import InitECandidate.Solver.MemSafe.Aw.Rq

set_option autoImplicit false

/-!
# `htr_new_payload_request` (target E, the goal)
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

def siN : MlS := nm "si"

def nprBody : ProgHOL 64 :=
  .decCall markN .one (nm "heap_mark") []
    (.decCall chN .one (nm "alloc") [.panop .mul [cw 4, cw 32]]
      (.seq (callD (nm "htr_payload") [ldo siN 0, offX chN 0])
        (.seq (callD (nm "htr_plist_chunks") [ldo siN 8, ldo siN 16, ldo siN 16, offX chN 32])
          (.seq (callD (nm "memcpy") [offX chN 64, ldo siN 24, cw 32])
            (.seq (callD (nm "htr_requests") [ldo siN 32, offX chN 96])
              (.seq (callD (nm "merkleize") [lv chN, cw 4, cw 4, lv outN])
                (.seq (callD (nm "heap_release") [lv markN]) (.return (cw 0)))))))))

theorem code_htr_new_payload_request : guestCode (nm "htr_new_payload_request") =
    some ([(siN, .one), (outN, .one)], nprBody, .one) := by
  have h : fnEntry Guest.Software.guestFn_htr_new_payload_request =
      (nm "htr_new_payload_request", [(siN, .one), (outN, .one)], nprBody, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 218) (by decide)) ⟨_, rfl⟩ h

theorem chOff {s : State σ} {Ch : BitVec 64} {lo : Nat}
    (hCh : s.locals.lookup chN = some (.val (.word Ch))) (c1 : lo ≤ Ch.toNat)
    (c2 : Ch.toNat ≤ heapEnd) (oc : Nat) (hoc : oc < 2 ^ 20) :
    ∃ W : BitVec 64, ev s (offX chN oc) = some (.val (.word W)) ∧ lo ≤ W.toNat ∧
      W.toNat ≤ 2 ^ 60 := by
  have hHE : heapEnd = 2952790016 := rfl
  have hw : (Ch + BitVec.ofNat 64 oc).toNat = Ch.toNat + oc := toNat_addc (by omega)
  exact ⟨_, ev_offX _ hCh, by rw [hw]; omega, by rw [hw]; omega⟩

def FS (a : AwE σ) (S O : BitVec 64) (m : Locals) : Prop :=
  m.lookup siN = some (.val (.word S)) ∧ m.lookup outN = some (.val (.word O)) ∧
    Bd m chN a.h0 heapEnd ∧ MkB a.p0.hp markN m

theorem awSpec_htr_new_payload_request {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C)
    (hPay : AWSpec σ X C H (nm "htr_payload") [] (fun vs _ h0 => OutAt 1 h0 vs)
      (fun vs _ v _ => OutRes 1 vs v))
    (hPl : AWSpec σ X C H (nm "htr_plist_chunks") [] (fun vs _ h0 => OutAt 3 h0 vs)
      (fun vs _ v _ => OutRes 3 vs v))
    (hRq : AWSpec σ X C H (nm "htr_requests") [] (fun vs _ h0 => OutAt 1 h0 vs)
      (fun vs _ v _ => OutRes 1 vs v))
    (hMk : AWSpec σ X C H (nm "merkleize") [] (fun vs _ h0 => MerkPre h0 vs)
      (fun vs _ v _ => MerkPost vs v)) :
    AWSpec σ X C H (nm "htr_new_payload_request") [] (fun vs _ h0 => OutAt 1 h0 vs)
      (fun vs _ v _ => OutRes 1 vs v) := by
  refine awSpec_of_hoareG (PV := OutRes 1) hH hTS hAG ?_
  intro vs body callee rs hl s0 Γ h0 p hs hloc hK hG hp hB hPre
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bn, rfl, hA', hB', hla, hlb⟩ :=
    lookupCode_two code_htr_new_payload_request (by decide) hl
  obtain ⟨S, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨O, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨O1, hO1, ho1, ho2⟩ := hPre
  have hOO : O = O1 := Option.some.inj hO1
  subst hOO
  let a : AwE σ := ⟨C, H, [], s0, Γ, p, h0⟩
  have ha0 : ({ C := C, H := H, gw := [], s0 := s0, Γ0 := Γ, p0 := p, h0 := h0 } : AwE σ).h0 = h0 :=
    rfl
  have hHE : heapEnd = 2952790016 := rfl
  have hpay := asp_of_aw hK hPay (fun g hg => absurd hg (by simp)) (fun vs s v t h => trivial)
  have hpl := asp_of_aw hK hPl (fun g hg => absurd hg (by simp)) (fun vs s v t h => trivial)
  have hrq := asp_of_aw hK hRq (fun g hg => absurd hg (by simp)) (fun vs s v t h => trivial)
  have hmk := asp_of_aw hK hMk (fun g hg => absurd hg (by simp)) (fun vs s v t h => h)
  let LL : Locals → Prop := fun m => m.lookup siN = some (.val (.word S)) ∧
    m.lookup outN = some (.val (.word O))
  refine hoareG_conseq (P := APre a LL)
    (Q := AQ a (fun _ => True) (OutRes 1 [.val (.word S), .val (.word O)])) ?_
    (fun t _ ht => by
      subst ht
      exact ⟨awInv_init a hG hp hB, by rw [hloc]; exact ⟨hla, hlb⟩⟩)
    (fun _ _ _ _ h => h)
  unfold nprBody
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
  refine hoareG_decCallAs' hK (asp_alloc hK hC)
    (Lk := FS a S O) (L' := fun _ _ => False) ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    rw [evs_cons (ev_mul2 (ev_cw _ 4) (ev_cw _ 32)) evs_nil] at hvs
    cases hvs
    exact ⟨_, rfl⟩
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨n, q, p'', rfl, rfl, hq1, hq2, hp'', hq3, hq4⟩ := hRet
    exact ⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.2,
      bd_new _ _ _ hq1 (by omega), mkb_upd (by decide) hL.2⟩
  intro s2
  -- htr_payload(lds si, ch)
  refine hoareG_seqA (L2 := FS a S O) (hoareG_callOK hK hpay ?_) ?_
  · intro s hL vs hvs
    obtain ⟨Ch, hCh, c1, c2⟩ := hL.2.2.1
    obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
    obtain ⟨W, hW, w1, w2⟩ := chOff hCh c1 c2 0 (by decide)
    rw [hW] at e2
    cases e2
    exact ⟨W, rfl, w1, w2⟩
  refine hoareG_seqA (L2 := FS a S O) (hoareG_callOK hK hpl ?_) ?_
  · intro s hL vs hvs
    obtain ⟨Ch, hCh, c1, c2⟩ := hL.2.2.1
    obtain ⟨v1, v2, v3, v4, rfl, e1, e2, e3, e4⟩ := evs_four hvs
    obtain ⟨W, hW, w1, w2⟩ := chOff hCh c1 c2 32 (by decide)
    rw [hW] at e4
    cases e4
    exact ⟨W, rfl, w1, w2⟩
  refine hoareG_seqA (L2 := FS a S O) (hoareG_callOK hK (asp_memcpy hK hC hA hT) ?_) ?_
  · intro s hL vs hvs
    obtain ⟨Ch, hCh, c1, c2⟩ := hL.2.2.1
    obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
    obtain ⟨W, hW, w1, w2⟩ := chOff hCh c1 c2 64 (by decide)
    rw [hW] at e1
    cases e1
    rw [ev_cw] at e3
    cases e3
    exact ⟨W, _, rfl, rfl, w1, by omega⟩
  refine hoareG_seqA (L2 := FS a S O) (hoareG_callOK hK hrq ?_) ?_
  · intro s hL vs hvs
    obtain ⟨Ch, hCh, c1, c2⟩ := hL.2.2.1
    obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
    obtain ⟨W, hW, w1, w2⟩ := chOff hCh c1 c2 96 (by decide)
    rw [hW] at e2
    cases e2
    exact ⟨W, rfl, w1, w2⟩
  refine hoareG_seqA (L2 := fun m => FS a S O m ∧ O.toNat + 32 ≤ domTop + 64)
    (hoareG_callAs hK hmk ?_ ?_) ?_
  · intro s3 hs3 hP3 vs hvs callee
    obtain ⟨v1, v2, v3, v4, rfl, e1, e2, e3, e4⟩ := evs_four hvs
    rw [ev_lw hP3.2.2.1] at e4
    cases e4
    exact ⟨O, rfl, ho1, ho2⟩
  · intro s3 vs v st hL hvs hRet
    obtain ⟨v1, v2, v3, v4, rfl, e1, e2, e3, e4⟩ := evs_four hvs
    rw [ev_lw hL.2.1] at e4
    cases e4
    exact ⟨hL, hRet O rfl⟩
  refine hoareG_seqA (L2 := fun m => O.toNat + 32 ≤ domTop + 64)
    (hoareG_callAs hK (asp_release hK hC) ?_ (fun _ _ _ _ hL _ _ => hL.2)) ?_
  · intro s3 hs3 hP3 vs hvs callee
    obtain ⟨w, hw, h1, h2, h3⟩ := hP3.2.1.2.2.2
    rw [evs_cons (ev_lw hw) evs_nil] at hvs
    cases hvs
    exact ⟨w, rfl, h1, h2, h3⟩
  · exact hoareG_returnA hK (fun s hs hL v hv O' hO' => by
      cases hO'
      exact hL)

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_htr_new_payload_request
