import InitECandidate.Solver.AuthorizationWork.CompactHtabPrices
import InitECandidate.Solver.AuthorizationWork.KeccakBlock
import InitECandidate.Solver.Improvements.FourthDecoderTable

/-! Reuse the accepted cost rows and proved decoder bounds directly. The
account-state analyzer sees only these small literal rows. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace CompactAccountSeed
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules

private theorem rlp_cost {σ : Type} {name : String} {B : Nat}
    (h : (name, B) ∈ FourthDecoderTable.proposedControls) :
    CalleeCost σ guestCtx (nm name) B := by
  have hBound := List.all_eq_true.mp FourthDecoderTable.proposed_controls (name, B) h
  change (match FourthDecoderTable.state.1.lookup (nm name) with
    | some b => decide (b ≤ B) | none => false) = true at hBound
  split at hBound
  · rename_i b hb
    have hc := calleeCost_of_tbl
      (FourthDecoderTable.state_sound (Shards.finalState_sound_guest (σ := σ))).1 hb
    intro vs body callee shape hLookup
    exact (hc vs body callee shape hLookup).mono (of_decide_eq_true hBound)
  · cases hBound

def boundRows : List (Pancake.PanLang.MlS × Nat) :=
  [(nm "memzero", 73786976294838206468),
    (nm "htab_get", 92233720368547758087), (nm "trap_with", 0),
    (nm "htab_del", 92233720368547758087), (nm "mpt_fail", 0),
    (nm "heap_mark", 0), (nm "heap_release", 0),
    (nm "trie_lookup", 174224571919297119720150216758826280943836),
    (nm "acct_empty", 4), (nm "htab_item", 0),
    (nm "sk_make", 147573952589676412938), (nm "acct_is_empty", 73786976294838206470),
    (nm "acct_copy", 73786976294838206472), (nm "u256_add", 0), (nm "u256_lt", 0),
    (nm "u256_sub", 0)]

private theorem keep_state {σ : Type} {st : TblState}
    (hs : StateSound σ guestCtx st) (rows : List (Pancake.PanLang.MlS × Nat))
    (hr : ∀ row ∈ rows, CalleeCost σ guestCtx row.1 row.2) :
    StateSound σ guestCtx (rows.foldr (fun r tab => overrideCost tab r.1 r.2) st) := by
  induction rows with
  | nil => exact hs
  | cons row remaining ih =>
    exact overrideCost_sound (ih fun r hm => hr r (List.mem_cons_of_mem _ hm))
      (hr row List.mem_cons_self)

private def base : TblState :=
  boundRows.foldr (fun row tab => overrideCost tab row.1 row.2) CompactHtabPrices.setTable

private theorem base_sound {σ : Type} : StateSound σ guestCtx base := by
  unfold base
  refine keep_state CompactHtabPrices.setTable_sound boundRows ?_
  intro row hr
  simp only [boundRows, List.mem_cons, List.not_mem_nil, or_false] at hr
  rcases hr with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact CompactCostReplay.accepted (f := nm "memzero") (B := 73786976294838206468) (by decide_cbv)
  · exact CompactCostReplay.accepted (f := nm "htab_get") (B := 92233720368547758087) (by decide_cbv)
  · exact CompactCostReplay.accepted (f := nm "trap_with") (B := 0) (by decide_cbv)
  · exact CompactCostReplay.accepted (f := nm "htab_del") (B := 92233720368547758087) (by decide_cbv)
  · exact CompactCostReplay.accepted (f := nm "mpt_fail") (B := 0) (by decide_cbv)
  · exact CompactCostReplay.accepted (f := nm "heap_mark") (B := 0) (by decide_cbv)
  · exact CompactCostReplay.accepted (f := nm "heap_release") (B := 0) (by decide_cbv)
  · exact CompactCostReplay.accepted (f := nm "trie_lookup") (B := 174224571919297119720150216758826280943836) (by decide_cbv)
  · exact CompactCostReplay.accepted (f := nm "acct_empty") (B := 4) (by decide_cbv)
  · exact CompactCostReplay.accepted (f := nm "htab_item") (B := 0) (by decide_cbv)
  · exact CompactCostReplay.accepted (f := nm "sk_make") (B := 147573952589676412938) (by decide_cbv)
  · exact CompactCostReplay.accepted (f := nm "acct_is_empty") (B := 73786976294838206470) (by decide_cbv)
  · exact CompactCostReplay.accepted (f := nm "acct_copy") (B := 73786976294838206472) (by decide_cbv)
  · exact CompactCostReplay.accepted (f := nm "u256_add") (B := 0) (by decide_cbv)
  · exact CompactCostReplay.accepted (f := nm "u256_lt") (B := 0) (by decide_cbv)
  · exact CompactCostReplay.accepted (f := nm "u256_sub") (B := 0) (by decide_cbv)

def table : TblState :=
  overrideCost
    (overrideCost
      (overrideCost
        (overrideCost base (nm "keccak_absorb_block") KeccakBlock.price)
        (nm "rlp_decode_fully") 165319720477782882397964)
      (nm "rlp_list_to_slices") 680564733841877009752630150418363586440)
    (nm "rlp_item") 165319720477782882397962

theorem table_sound {σ : Type} : StateSound σ guestCtx table :=
  overrideCost_sound
    (overrideCost_sound
      (overrideCost_sound
        (overrideCost_sound base_sound KeccakBlock.calleeCost)
        (rlp_cost (name := "rlp_decode_fully") (B := 165319720477782882397964) (by decide)))
      (rlp_cost (name := "rlp_list_to_slices") (B := 680564733841877009752630150418363586440) (by decide)))
    (rlp_cost (name := "rlp_item") (B := 165319720477782882397962) (by decide))

#print axioms table_sound

end CompactAccountSeed
