import InitECandidate.Solver.PayloadDecoder.SliceHeap
import InitECandidate.Solver.PayloadDecoder.CappedSliceLoop
import InitECandidate.Solver.PayloadDecoder.DecoderRows
import InitECandidate.Solver.MemSafe.Rec.TxAcc

/-! Uniform caps for all four list loops in the installed access-list,
authorization-list and blob-hash decoders. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace PayloadDecoder
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.Spec.Mpt.Leaves
open InitECandidate.Solver.MemSafe.WaveHelpers (domLow_guestCtx)

variable {σ : Type}

private theorem sliceReturns : FunRet σ guestCtx (nm "rlp_list_to_slices")
    (fun _ v => ∃ (arr : ValueHOL 64) (n : BitVec 64),
      v = .rStruct [arr,.val (.word n)] ∧ n.toNat ≤ 15728640) := by
  intro vs body callee shape hl s hs hloc _ v hr
  exact sliceHeapCount vs body callee shape hl s hs hloc (.returned v) hr v rfl

def innerBody : ProgHOL 64 := match acInner with | .while _ b => b | _ => .skip

private theorem slicesPrice : CalleeCost σ guestCtx (nm "rlp_list_to_slices")
    83047241864439341782934 := tableCost (by decide)
private theorem allocPrice : CalleeCost σ guestCtx (nm "alloc") 2 := tableCost (by decide)

private theorem slotsPrice : Cost σ guestCtx acSlots
    (1 + 83047241864439341782934 +
      (1 + 2 + ((15728640 + 1) * (165393507454077720604433 + 1) + 0))) :=
  decoder_cost (lst := nm "slots") (buf := nm "keys") (i := nm "j") (size := 32)
    (body := innerBody) (tail := acFin)
    (by decide) (by decide) sliceReturns slicesPrice allocPrice
    (keepsB_sound _ _ (by decide)) (noContB_sound _ (by decide))
    (stepsB_sound _ true _ (by decide))
    (CompactCostReplay.program_cost prices_sound (by decide_cbv))
    (CompactCostReplay.program_cost prices_sound (by decide_cbv))

private theorem accessBody : Cost σ guestCtx acLoop
    2601415764529657615712776153958 := by
  have hitem := tableCost (σ := σ) (f := "rlp_item") (B := 165319720477782882397962) (by decide)
  have hfixed := tableCost (σ := σ) (f := "tx_fixed_bytes") (B := 165319720477782882397963) (by decide)
  have hlist := tableCost (σ := σ) (f := "tx_list_item") (B := 165319720477782882397963) (by decide)
  have hguard (s : String) (f v : Nat) : Cost σ guestCtx (acG s f v) 0 :=
    cost_ite (cost_raise _ _) cost_skip
  exact cost_decCall hitem (cost_seq (hguard "it" 0 1) (cost_decCall slicesPrice
    (cost_seq (hguard "ent" 1 2) (cost_decCall hfixed (cost_decCall hlist slotsPrice)))))

private theorem fromBody {f : MlS} {p : ProgHOL 64} {params shape B}
    (hc : guestCode f = some (params,p,shape)) (hp : Cost σ guestCtx p B) :
    CalleeCost σ guestCtx f B := by
  intro vs body callee rs hl
  obtain ⟨ps,he⟩ := lookupCode_some hl
  rw [guestCtx_code,hc] at he
  have same : body = p := (congrArg (fun row => row.2.1) (Option.some.inj he)).symm
  subst body
  exact hp

theorem accessCost : CalleeCost σ guestCtx (nm "decode_access_list")
    40916734652027601537704079678323622657 := by
  apply fromBody code_decode_access_list
  exact decoder_cost (lst := nm "lst") (buf := nm "recs") (i := nm "i") (size := 24)
    (body := acLoop) (tail := acRet) (by decide) (by decide) sliceReturns slicesPrice allocPrice
    (keepsB_sound _ _ (by decide)) (noContB_sound _ (by decide))
    (stepsB_sound _ true _ (by decide)) accessBody (cost_return _)

theorem authorizationCost : CalleeCost σ guestCtx (nm "decode_authorizations")
    19509452782756718245277578918046 := by
  apply fromBody code_decode_authorizations
  exact decoder_cost (lst := nm "lst") (buf := nm "recs") (i := nm "i") (size := 120)
    (body := auLoop) (tail := auRet) (B := 1240377518929288066326787)
    (by decide) (by decide) sliceReturns slicesPrice allocPrice
    (keepsB_sound _ _ (by decide)) (noContB_sound _ (by decide))
    (stepsB_sound _ true _ (by decide))
    (CompactCostReplay.program_cost prices_sound (by decide_cbv)) (cost_return _)

theorem blobCost : CalleeCost σ guestCtx (nm "decode_blob_hashes")
    2601415185523254317924787177132 := by
  apply fromBody code_decode_blob_hashes
  exact decoder_cost (lst := nm "lst") (buf := nm "buf") (i := nm "i") (size := 32)
    (body := dbhLoop) (tail := bhRet) (B := 165393507454077720604433)
    (by decide) (by decide) sliceReturns slicesPrice allocPrice
    (keepsB_sound _ _ (by decide)) (noContB_sound _ (by decide))
    (stepsB_sound _ true _ (by decide))
    (CompactCostReplay.program_cost prices_sound (by decide_cbv)) (cost_return _)

#print axioms accessCost
#print axioms authorizationCost
#print axioms blobCost
end PayloadDecoder
