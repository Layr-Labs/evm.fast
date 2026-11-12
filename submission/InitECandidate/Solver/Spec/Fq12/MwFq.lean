import InitECandidate.Solver.Spec.Fq12.MemOps
import InitECandidate.Solver.Spec.FootprintGuest

/-!
# The field arithmetic writes no memory

`fqFns`: the code entries of `fq_mul`, `fq_sub`, `fq_inv`, `fq_poly_deg`,
`is_zero_bytes` and everything they call (13 functions, `fqFns_valid`). The kernel check
`fqFns_mw` (`decide_cbv`) shows none writes memory and the set is closed under calls, so
`fq_mwClosed : MwClosed fqNames guestCode`; `funSpec_fq_mw` gives "final memory = entry
memory" for each of them.
-/

set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Fq12
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

def fqFns : EntryList :=
  [fnEntry Guest.Software.guestFn_fq_mul, fnEntry Guest.Software.guestFn_fq_sub,
   fnEntry Guest.Software.guestFn_fq_inv, fnEntry Guest.Software.guestFn_fq_poly_deg,
   fnEntry Guest.Software.guestFn_is_zero_bytes, fnEntry Guest.Software.guestFn_u256_lt,
   fnEntry Guest.Software.guestFn_u256_sub, fnEntry Guest.Software.guestFn_u256_add,
   fnEntry Guest.Software.guestFn_u256_add_carry, fnEntry Guest.Software.guestFn_u256_is_zero,
   fnEntry Guest.Software.guestFn_modinv_bin, fnEntry Guest.Software.guestFn_mod_half,
   fnEntry Guest.Software.guestFn_mod_sub]

def fqNames : List MlS := fqFns.map Prod.fst

theorem fqFns_valid : ∀ e ∈ fqFns, guestCode e.1 = some e.2 := by
  intro e he
  simp only [fqFns, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 652) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 650) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 655) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 680) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 19) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 46) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 57) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 56) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 55) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 42) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 157) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 158) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 159) (by decide)) ⟨_, rfl⟩

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem fqFns_mw : fqFns.all (fun e => mwFreeB fqNames e.2.2.1) = true := by decide_cbv

theorem fq_mwClosed : MwClosed fqNames guestCode :=
  closed_of_entries fqFns_valid fqFns_mw

theorem funSpec_fq_mw {σ : Type} {X : Ctx 64} (hC : X.code.lookup = guestCode) {f : MlS}
    (hf : fqNames.contains f = true) : FunSpec σ X f (fun _ s _ t => t.memory = s.memory) :=
  funSpec_mw (hC ▸ fq_mwClosed) hf

end InitECandidate.Solver.Spec.Fq12
