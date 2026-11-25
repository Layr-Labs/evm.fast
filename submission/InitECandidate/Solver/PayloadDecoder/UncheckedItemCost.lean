import InitECandidate.Solver.Improvements.FourthRlpHeaderCallee
import InitECandidate.Solver.Spec.Mpt.Leaves.SliceFns

/-! The unchecked list re-parser calls the length reader only with one through
eight bytes. A uniform 20-tick bound covers both possible long-form branches. -/
set_option autoImplicit false
set_option maxRecDepth 100000
namespace PayloadDecoder
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS ProgHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Leaves
open FourthRlpHeaderCore AcceptedLoopRules
variable {σ : Type} {X : Ctx 64}

def uncheckedLong (base : Nat) (ll n : MlS) : ProgHOL 64 :=
  .dec ll .one (.op .sub [lv (nm "b"),cw base])
    (.decCall n .one (nm "rlp_read_length") [.op .add [lv (nm "p"),cw 1],lv ll] (ituLong ll n))

theorem uncheckedLongCost (hr : ReadCost σ X) (base : Nat) (ll n : MlS) (hbase : base ≤ 247) :
    AcceptedLoopRules.CostP σ X (fun s => ∃ B : BitVec 64, ByteWord B s ∧ base ≤ B.toNat ∧ B.toNat ≤ base + 8)
      (uncheckedLong base ll n) 10 := by
  refine AcceptedLoopRules.costP_dec fun s hs ⟨B,hb,hlo,hhi⟩ v hv _ => ?_
  rw [ev_sub2 (show ev s (lv (nm "b")) = some (.val (.word B)) from hb) (ev_cw _ base)] at hv
  cases hv
  have hbaseN : (BitVec.ofNat 64 base).toNat = base := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  have h8 : (B - BitVec.ofNat 64 base).toNat ≤ 8 := by
    rw [BitVec.toNat_sub_of_le (by rw [BitVec.le_def, hbaseN]; omega), hbaseN]
    omega
  refine FourthConditionalCallCost.costP_decCall (Bk := 0) hr ?_ (funSpec_true _) ?_
  · rintro t _ rfl vs he _
    obtain ⟨p,rest,rfl,_,ht⟩ := evs_cons_inv he
    have evll : ev (setVarHOLFinite ll (.val (.word (B - BitVec.ofNat 64 base))) s) (lv ll) =
        some (.val (.word (B - BitVec.ofNat 64 base))) := lk_set_self _ _ _
    rw [evs_cons evll evs_nil] at ht
    cases ht
    exact ⟨p,_,rfl,h8⟩
  · intros
    exact AcceptedLoopRules.costP_of_cost (cost_return _)

private theorem long_exit (base : Nat) (ll n : MlS) :
    Hoare σ X (fun _ => True) (uncheckedLong base ll n) (fun r _ => r ≠ none) :=
  noNormal_dec (noNormal_decCall noNormal_return)

theorem unchecked_body (hr : ReadCost σ X) : Cost σ X ituBody 20 := by
  apply AcceptedLoopRules.cost_of_costP_true
  unfold ituBody
  refine AcceptedLoopRules.costP_dec fun s hs _ value hv _ => ?_
  obtain ⟨B,rfl,hB⟩ := ev_loadByte_word hv
  refine (AcceptedLoopRules.CostP.pre (P := ByteWord B) ?_ fun t _ he => by subst t; exact lk_set_self _ _ _)
  refine costP_ifSkip_seq (Ba := 0) (Bb := 20) (AcceptedLoopRules.costP_of_cost (cost_return _)) noNormal_return ?_
  refine costP_ifSkip_seq (Ba := 0) (Bb := 20) (AcceptedLoopRules.costP_of_cost (cost_return _)) noNormal_return ?_
  refine costP_ifSkip_seq (Ba := 10) (Bb := 10) ?_ (long_exit 183 _ _) ?_
  · refine (uncheckedLongCost hr 183 _ _ (by decide)).pre ?_
    intro t _ ⟨⟨⟨hb,_⟩,h183⟩,h191⟩
    have lo := upper_false (by decide : 183 < 256) hb h183
    have hi := upper_true (by decide : 191 < 256) hb h191
    exact ⟨B,hb,by omega,by omega⟩
  · refine costP_ifSkip_seq (Ba := 0) (Bb := 10) (AcceptedLoopRules.costP_of_cost (cost_return _)) noNormal_return ?_
    refine (uncheckedLongCost hr 247 _ _ (by decide)).pre ?_
    intro t _ ⟨⟨⟨⟨hb,_⟩,_⟩,_⟩,h247⟩
    have lo := upper_false (by decide : 247 < 256) hb h247
    exact ⟨B,hb,by omega,by omega⟩

theorem uncheckedCost (hC : X.code.lookup = guestCode) :
    CalleeCost σ X (nm "rlp_item_total_unchecked") 20 := by
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_one code_rlp_item_total_unchecked hl
  exact unchecked_body (FourthRlpHeaderCallee.reader_cost hC)

#print axioms uncheckedCost
end PayloadDecoder
