import InitECandidate.Solver.Improvements.FourthRlpManualChain
import InitECandidate.Solver.Spec.Bridge
import InitECandidate.Solver.Improvements.ThirdNamedCostReplay
import InitECandidate.Solver.SourceCost.Shards.States

/-! Sound header-to-decoder refresh. The accepted analyzer's named manual
rules are supplied explicitly for the validator and list count; the min-preserving replay
cannot replace an existing stronger cost by a worse generic bound.

This module deliberately imports only the literal States, not Shards.All.
The actual baseline StateSound fact is an explicit theorem parameter until
root connects it to the complete accepted closure. -/
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
namespace FourthDecoderTable
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules

def names : List String :=
  ["rlp_item",
   "rlp_list_to_slices",
   "tx_fixed_bytes",
   "tx_list_item",
   "decode_access_list",
   "tx_scalar_item",
   "tx_scalar_u256",
   "tx_scalar_word",
   "decode_authorizations",
   "decode_blob_hashes",
   "rlp_decode_fully",
   "tx_bytes_item",
   "tx_to_item",
   "decode_transaction_rlp",
   "decode_transaction"]

def headerSeed (initial : TblState) : TblState :=
  overrideCost initial (nm "rlp_item_header") 30

theorem headerSeed_sound {σ : Type} {initial : TblState}
    (hs : StateSound σ guestCtx initial) : StateSound σ guestCtx (headerSeed initial) :=
  overrideCost_sound hs (FourthRlpHeaderCallee.callee_cost guestCtx_code)

structure ScratchCosts (σ : Type) : Prop where
  alloc : CalleeCost σ guestCtx (nm "scratch_alloc") 2
  mark : CalleeCost σ guestCtx (nm "scratch_mark") 0
  release : CalleeCost σ guestCtx (nm "scratch_release") 0

/-- Manual formulas are inserted with their actual semantic proofs. They must
not be recomputed by a generic-loop step, which loses the domain bound. -/
def manualSeed (initial : TblState) : TblState :=
  overrideCost (overrideCost (overrideCost (overrideCost (headerSeed initial)
    (nm "_rlp_validate_items_body") (FourthRlpManualChain.validatorBodyCost 30 2))
    (nm "rlp_validate_items") (FourthRlpManualChain.validatorCost 30 2 0 0))
    (nm "rlp_item_total") (FourthRlpManualChain.totalCost 30 2 0 0))
    (nm "rlp_list_count") (FourthRlpManualChain.countCost 30 2 0 0)

theorem manualSeed_sound {σ : Type} {initial : TblState}
    (hs : StateSound σ guestCtx initial) (hc : ScratchCosts σ) :
    StateSound σ guestCtx (manualSeed initial) := by
  obtain ⟨hb, hv, ht, hcnt⟩ := FourthRlpManualChain.chain guestCtx_code guestCtx_bounded
    (FourthRlpHeaderCallee.callee_cost guestCtx_code) hc.alloc hc.mark hc.release
  exact overrideCost_sound (overrideCost_sound (overrideCost_sound
    (overrideCost_sound (headerSeed_sound hs) hb) hv) ht) hcnt

/-- Explicit actual declarations avoid repeatedly filtering the whole guest
AST during each kernel reduction of the refreshed table. -/
def entries : List Entry :=
  [declPair Guest.Software.guestFn_rlp_item,
   declPair Guest.Software.guestFn_rlp_list_to_slices,
   declPair Guest.Software.guestFn_tx_fixed_bytes,
   declPair Guest.Software.guestFn_tx_list_item,
   declPair Guest.Software.guestFn_decode_access_list,
   declPair Guest.Software.guestFn_tx_scalar_item,
   declPair Guest.Software.guestFn_tx_scalar_u256,
   declPair Guest.Software.guestFn_tx_scalar_word,
   declPair Guest.Software.guestFn_decode_authorizations,
   declPair Guest.Software.guestFn_decode_blob_hashes,
   declPair Guest.Software.guestFn_rlp_decode_fully,
   declPair Guest.Software.guestFn_tx_bytes_item,
   declPair Guest.Software.guestFn_tx_to_item,
   declPair Guest.Software.guestFn_decode_transaction_rlp,
   declPair Guest.Software.guestFn_decode_transaction]

theorem entries_installed : ∀ p ∈ entries, Installed p := by
  intro p hp
  simp only [entries, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 107) (by decide)) ⟨_, rfl⟩
  · exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 115) (by decide)) ⟨_, rfl⟩
  · exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 300) (by decide)) ⟨_, rfl⟩
  · exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 302) (by decide)) ⟨_, rfl⟩
  · exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 303) (by decide)) ⟨_, rfl⟩
  · exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 296) (by decide)) ⟨_, rfl⟩
  · exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 297) (by decide)) ⟨_, rfl⟩
  · exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 298) (by decide)) ⟨_, rfl⟩
  · exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 305) (by decide)) ⟨_, rfl⟩
  · exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 304) (by decide)) ⟨_, rfl⟩
  · exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 108) (by decide)) ⟨_, rfl⟩
  · exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 299) (by decide)) ⟨_, rfl⟩
  · exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 301) (by decide)) ⟨_, rfl⟩
  · exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 306) (by decide)) ⟨_, rfl⟩
  · exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 307) (by decide)) ⟨_, rfl⟩

def replayFrom (initial : TblState) : TblState :=
  entries.foldl ThirdNamedCostReplay.minStep (manualSeed initial)

theorem replayFrom_sound {σ : Type} {initial : TblState}
    (hs : StateSound σ guestCtx initial) (hc : ScratchCosts σ) :
    StateSound σ guestCtx (replayFrom initial) := by
  exact AcceptedCostOverrideCore.foldl_invariant ThirdNamedCostReplay.minStep entries
    (fun p hp st hst => ThirdNamedCostReplay.minStep_sound (entries_installed p hp) hst)
    (manualSeed initial) (manualSeed_sound hs hc)

/-- Literal accepted baseline for arithmetic controls. Its soundness is not
inferred from these computations; callers provide the actual baseline theorem. -/
def state : TblState := replayFrom Shards.finalState

def expectedDecoderCost : Nat :=
  56318156800241765865562386731819516950665959437935209901050505

def oldControls : List (String × Nat) :=
  [("rlp_item_header", 36893488147419103248),
   ("_rlp_validate_items_body", 2535301201120541591090059280762),
   ("rlp_validate_items", 2535301201120541591090059280766),
   ("rlp_item_total", 2535301201157435079237478384016),
   ("rlp_list_count", 87112285978663318910962021928051218058786),
   ("rlp_item", 174224571957326637821960937344249855220822),
   ("rlp_list_to_slices", 87792850712505195838073238583651849997870),
   ("tx_fixed_bytes", 174224571957326637821960937344249855220823),
   ("tx_list_item", 174224571957326637821960937344249855220823),
   ("decode_access_list", 59285549721426468968159965934861038308197669509127398187898412003108571211406329),
   ("tx_scalar_item", 174224571957326637821960937344249855220823),
   ("tx_scalar_u256", 174224571957326637821979384088323564772446),
   ("tx_scalar_word", 174224571957326637821979384088323564772441),
   ("decode_authorizations", 24116624880333762051026380355351988933806152195943360721117922),
   ("decode_blob_hashes", 3213876090248398492009883501236500068321402603054219579632272),
   ("rlp_decode_fully", 174224571957326637821960937344249855220824),
   ("tx_bytes_item", 174224571957326637821960937344249855220823),
   ("tx_to_item", 174224571957326637821960937344249855220823),
   ("decode_transaction_rlp", 59285549721426468995490466905443198854109319367745618591015673292614832979410274),
   ("decode_transaction", 59285549721426468995490466905443198854109319367745618591015673292614832979410275)]

def proposedControls : List (String × Nat) :=
  [("rlp_item_header", 30),
   ("_rlp_validate_items_body", 2405181686390),
   ("rlp_validate_items", 2405181686394),
   ("rlp_item_total", 2405181686426),
   ("rlp_list_count", 82641413494817731647356),
   ("rlp_item", 165319720477782882397962),
   ("rlp_list_to_slices", 680564733841877009752630150418363586440),
   ("tx_fixed_bytes", 165319720477782882397963),
   ("tx_list_item", 165319720477782882397963),
   ("decode_access_list", 56305602596770992478104177932510838808027669272786970781745879),
   ("tx_scalar_item", 165319720477782882397963),
   ("tx_scalar_u256", 165338167221856591949586),
   ("tx_scalar_word", 165338167221856591949581),
   ("decode_authorizations", 12554203470773384405875966382449643076875855867611977971842),
   ("decode_blob_hashes", 3051652268192386619906287897068650725656222),
   ("rlp_decode_fully", 165319720477782882397964),
   ("tx_bytes_item", 165319720477782882397963),
   ("tx_to_item", 165319720477782882397963),
   ("decode_transaction_rlp", 56318156800241765865562386731819516950665959437935209901050504),
   ("decode_transaction", 56318156800241765865562386731819516950665959437935209901050505)]

/-- Every old price used by the calculator is an exact accepted-table lookup. -/
theorem old_controls : oldControls.all (fun p =>
    Shards.finalState.1.lookup (nm p.1) == some p.2) = true := by
  decide +kernel

/-- Kernel computation of actual replay prices; retaining an even smaller
existing bound is allowed by the min-preserving replay. -/
theorem proposed_controls : proposedControls.all (fun p =>
    match state.1.lookup (nm p.1) with
    | some B => decide (B ≤ p.2)
    | none => false) = true := by
  decide_cbv

def decoderBudget : Nat := (state.1.lookup (nm "decode_transaction")).getD 0

theorem decoder_lookup : state.1.lookup (nm "decode_transaction") = some decoderBudget ∧
    decoderBudget ≤ expectedDecoderCost := by
  decide_cbv

theorem baseline_scratch {σ : Type} (hs : StateSound σ guestCtx Shards.finalState) :
    ScratchCosts σ where
  alloc := calleeCost_of_tbl hs.1 (by rfl)
  mark := calleeCost_of_tbl hs.1 (by rfl)
  release := calleeCost_of_tbl hs.1 (by rfl)

theorem state_sound {σ : Type} (hs : StateSound σ guestCtx Shards.finalState) :
    StateSound σ guestCtx state := replayFrom_sound hs (baseline_scratch hs)

theorem decoder_cost {σ : Type} (hs : StateSound σ guestCtx Shards.finalState) :
    AcceptedIvvhCalleeCore.CalleeBound σ guestCtx (nm "decode_transaction") expectedDecoderCost := by
  obtain ⟨hB, hle⟩ := decoder_lookup
  have hc := calleeCost_of_tbl (state_sound hs).1 hB
  intro vs body callee rs lookup
  exact (hc vs body callee rs lookup).mono hle

#print axioms replayFrom_sound
#print axioms old_controls
#print axioms proposed_controls
#print axioms decoder_cost
end FourthDecoderTable
