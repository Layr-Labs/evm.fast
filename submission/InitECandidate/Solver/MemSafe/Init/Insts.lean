import InitECandidate.Solver.MemSafe.Init.Chk
import InitECandidate.Solver.Spec.FootprintGuest

/-!
# Init: the closure of the helper callees of the inits (`sFns`), writing no global
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.warning false
set_option cbv.maxSteps 4000000000
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Init
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

theorem guestAst_len : 862 ≤ Guest.Software.guestAst.length := by decide

theorem guestAst_len2 : 890 ≤ Guest.Software.guestAst.length := by decide +kernel

/-- `memzero`, `keccak256, `addr_from_words`, `st_be64` and everything they call. -/
def sFns : EntryList :=
  [fnEntry Guest.Software.guestFn_addr_from_words, fnEntry Guest.Software.guestFn_bswap64,
   fnEntry Guest.Software.guestFn_keccak256, fnEntry Guest.Software.guestFn_keccak_absorb_block,
   fnEntry Guest.Software.guestFn_keccak_f1600, fnEntry Guest.Software.guestFn_memcpy,
   fnEntry Guest.Software.guestFn_memzero, fnEntry Guest.Software.guestFn_st_be32,
   fnEntry Guest.Software.guestFn_st_be64]

def sNames : List MlS := sFns.map Prod.fst

theorem sFns_valid : ∀ e ∈ sFns, guestCode e.1 = some e.2 := by
  intro e he
  simp only [sFns, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 860) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 23) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 103) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 102) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 101) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 16) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 17) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 27) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 28) (by decide)) ⟨_, rfl⟩

theorem sFns_gw : sFns.all (fun e => gwNoneB sNames e.2.2.1) = true := by decide_cbv

theorem sFns_closed : GwNoneClosed sNames guestCode :=
  closed_of_entries (chk := gwNoneB) sFns_valid sFns_gw

end InitECandidate.Solver.MemSafe.Init

#print axioms InitECandidate.Solver.MemSafe.Init.sFns_closed
