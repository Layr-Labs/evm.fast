import InitECandidate.Solver.Spec.Inv.HtabFrame

/-!
# The read-only part of the htab API keeps every table well formed

`readFns` = `htab_find_leaf`, `memeq`, `htab_get`, `htab_has`, `htab_count`, `htab_cap`,
`htab_item`: none of them (nor anything they call) writes memory (`readFns_mw`, kernel check
by `decide_cbv`). `funSpec_read`: each returns with memory unchanged, so every well-formed
table stays well formed with the same region (`ModifiesOnly (fun _ => False)`).
-/

set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

def readFns : EntryList :=
  [fnEntry Guest.Software.guestFn_htab_find_leaf, fnEntry Guest.Software.guestFn_memeq,
   fnEntry Guest.Software.guestFn_htab_get, fnEntry Guest.Software.guestFn_htab_has,
   fnEntry Guest.Software.guestFn_htab_count, fnEntry Guest.Software.guestFn_htab_cap,
   fnEntry Guest.Software.guestFn_htab_item]

def readNames : List MlS := readFns.map Prod.fst

theorem readFns_valid : ∀ e ∈ readFns, guestCode e.1 = some e.2 := by
  intro e he
  simp only [readFns, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 131) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 18) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 132) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 133) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 141) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 142) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 143) (by decide)) ⟨_, rfl⟩

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem readFns_mw : readFns.all (fun e => mwFreeB readNames e.2.2.1) = true := by decide_cbv

theorem read_mwClosed : MwClosed readNames guestCode :=
  closed_of_entries (chk := mwFreeB) readFns_valid readFns_mw

variable {σ : Type} {X : Ctx 64}

/-- **Read-only htab functions keep every table.** -/
theorem funSpec_read (hC : X.code.lookup = guestCode) {f : MlS}
    (hf : readNames.contains f = true) :
    FunSpec σ X f (fun _ s _ u => u.memory = s.memory ∧
      ∀ T, TableWF s T → TableWF u T ∧ TableRegion u.memory T = TableRegion s.memory T) := by
  intro vs body callee rs hl s hs hloc r hr
  have hm := funSpec_mw (σ := σ) (by rw [hC]; exact read_mwClosed) hf vs body callee rs hl s hs
    hloc r hr
  refine ⟨hm, fun T hwf => tableWF_frame hwf (memaddrs_preserved s body) (be_preserved s body)
    fun a _ => by rw [hm]⟩

theorem has_mem : readNames.contains (nm "htab_has") = true := by decide_cbv
theorem get_mem : readNames.contains (nm "htab_get") = true := by decide_cbv
theorem count_mem : readNames.contains (nm "htab_count") = true := by decide_cbv
theorem item_mem : readNames.contains (nm "htab_item") = true := by decide_cbv

end InitECandidate.Solver.Spec.Inv
