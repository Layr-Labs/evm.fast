import InitECandidate.Solver.PayloadDecoder.ImprovedSlices
import InitECandidate.Solver.Improvements.FourthDecoderActual
import InitECandidate.Solver.Improvements.CompactCostReplay

/-! Extract the actual function prices into a literal local table. -/
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000
namespace PayloadDecoder
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

def prices : List (MlS × Nat) :=
  [(nm "rlp_item",165319720477782882397962),
   (nm "tx_fixed_bytes",165319720477782882397963),
   (nm "tx_list_item",165319720477782882397963),
   (nm "rlp_list_to_slices",83047241864439341782934),
   (nm "tx_scalar_u256",165338167221856591949586),
   (nm "tx_scalar_word",165338167221856591949581),
   (nm "rlp_decode_fully",165319720477782882397964),
   (nm "tx_bytes_item",165319720477782882397963),
   (nm "tx_to_item",165319720477782882397963),
   (nm "memzero",73786976294838206468),
   (nm "memcpy",73786976294838206468),
   (nm "alloc",2)]

private theorem fromControl {σ : Type} {name : String} {B : Nat}
    (h : (name,B) ∈ FourthDecoderTable.proposedControls) : CalleeCost σ guestCtx (nm name) B := by
  have hb := List.all_eq_true.mp FourthDecoderTable.proposed_controls (name,B) h
  change (match FourthDecoderTable.state.1.lookup (nm name) with
    | some b => decide (b ≤ B) | none => false) = true at hb
  split at hb
  · rename_i b he
    have hc := calleeCost_of_tbl (FourthDecoderActual.sound (σ := σ)).1 he
    intro vs body callee rs hl
    exact (hc vs body callee rs hl).mono (of_decide_eq_true hb)
  · contradiction

def priceTable : TblState := (prices,[],[])

theorem prices_sound {σ : Type} : StateSound σ guestCtx priceTable := by
  refine ⟨?_, (by intro f hf; simp [priceTable] at hf), (by intro f hf; simp [priceTable] at hf)⟩
  intro name B h
  have mem := lookup_mem h
  change (name,B) ∈ prices at mem
  simp only [prices,List.mem_cons,List.not_mem_nil,or_false] at mem
  rcases mem with m | m | m | m | m | m | m | m | m | m | m | m <;> cases m
  · exact fromControl (name := "rlp_item") (by decide)
  · exact fromControl (name := "tx_fixed_bytes") (by decide)
  · exact fromControl (name := "tx_list_item") (by decide)
  · exact improvedSlices
  · exact fromControl (name := "tx_scalar_u256") (by decide)
  · exact fromControl (name := "tx_scalar_word") (by decide)
  · exact fromControl (name := "rlp_decode_fully") (by decide)
  · exact fromControl (name := "tx_bytes_item") (by decide)
  · exact fromControl (name := "tx_to_item") (by decide)
  · exact CompactCostReplay.accepted (f := nm "memzero") (by decide_cbv)
  · exact CompactCostReplay.accepted (f := nm "memcpy") (by decide_cbv)
  · exact CompactCostReplay.accepted (f := nm "alloc") (by decide_cbv)

theorem tableCost {σ : Type} {f : String} {B : Nat} (h : prices.lookup (nm f) = some B) :
    CalleeCost σ guestCtx (nm f) B := calleeCost_of_tbl prices_sound.1 h

#print axioms prices_sound
end PayloadDecoder
