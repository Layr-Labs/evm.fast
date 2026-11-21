import InitECandidate.Solver.MemSafe.RlpCost.HeaderDispatch
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.RlpCost.Header
variable {σ : Type}
def PL (P L : BitVec 64) (s : State σ) : Prop :=
  s.locals.lookup (nm "p") = some (.val (.word P)) ∧ s.locals.lookup (nm "len") = some (.val (.word L))
theorem body_cost (P L : BitVec 64) : Inv.CostP σ guestCtx (PL P L) hdrBody 32 := by
  have hg : Cost σ guestCtx (failIf (.cmp .equal (lv (nm "len")) (cw 0)) 1) 1 :=
    CryptoCost.Analyzer.cost_guest_costA (by cbv)
  unfold hdrBody
  refine Inv.costP_seq (Bb := 31) (R := fun s => PL P L s ∧ ev s (.cmp .equal (lv (nm "len")) (cw 0)) = some (.val (.word 0)))
    (Inv.costP_of_cost hg) (hoare_post (hoare_guard (funRet_rlp_fail guestCtx_code))
      (fun _ _ _ _ h _ => h.2)) ?_
  refine Inv.costP_dec fun s hs hp v hv hsh => ?_
  have hL : L.toNat ≠ 0 := by
    have he := equal_false (cmp_val_false hp.2 (ev_lw hp.1.2) (ev_cw s 0))
    intro hz
    exact he (BitVec.eq_of_toNat_eq (by simpa using hz))
  obtain ⟨B,rfl,hB⟩ := ev_loadByte_word hv
  exact (dispatch_cost P L B hB).pre (fun t ht heq => by
    subst t
    exact ⟨hInv_set _ (by decide) (by decide) ⟨hp.1.1,hp.1.2,hL⟩,lk_set_self _ _ _⟩)

theorem body_cost_all : Cost σ guestCtx hdrBody 32 := by
  apply Inv.cost_of_costP_true
  have hg : Cost σ guestCtx (failIf (.cmp .equal (lv (nm "len")) (cw 0)) 1) 1 :=
    CryptoCost.Analyzer.cost_guest_costA (by cbv)
  unfold hdrBody
  refine Inv.costP_seq (Bb := 31) (R := fun s => True ∧ ev s (.cmp .equal (lv (nm "len")) (cw 0)) = some (.val (.word 0)))
    (Inv.costP_of_cost hg) (hoare_post (hoare_guard (funRet_rlp_fail guestCtx_code))
      (fun _ _ _ _ h _ => h.2)) ?_
  refine Inv.costP_dec fun s hs hp v hv hsh => ?_
  obtain ⟨L,z,hl,hz,hcmp⟩ := cmp_false hp.2
  change some (ValueHOL.val (HolWordLab.word (0 : BitVec 64))) = some (ValueHOL.val (HolWordLab.word z)) at hz
  simp only [Option.some.injEq,ValueHOL.val.injEq,HolWordLab.word.injEq] at hz
  subst z
  have hL : L.toNat ≠ 0 := by
    have he := equal_false hcmp
    intro hz
    exact he (BitVec.eq_of_toNat_eq (by simpa using hz))
  obtain ⟨P,hpP,-⟩ := ev_loadByte_hit hv
  obtain ⟨B,rfl,hB⟩ := ev_loadByte_word hv
  exact (dispatch_cost P L B hB).pre (fun t ht heq => by
    subst t
    exact ⟨hInv_set _ (by decide) (by decide) ⟨hpP,hl,hL⟩,lk_set_self _ _ _⟩)

theorem callee_cost : CalleeCost σ guestCtx (nm "rlp_item_header") 32 := by
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  have he := CryptoCost.Analyzer.lookupCode_body code_rlp_item_header hl
  subst body
  exact body_cost_all
#print axioms body_cost
#print axioms body_cost_all
#print axioms callee_cost
end InitECandidate.Solver.MemSafe.RlpCost.Header
