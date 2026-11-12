import InitECandidate.Solver.Spec.MemFree
import InitECandidate.Solver.Spec.CodeState

/-!
# Footprint facts for guest functions

`closed_of_entries`: a list of certified code entries whose bodies pass a checker `chk`
(relative to the list's own names) is a closed set for `chk` over `guestCode`.

Instances (kernel-checked by `decide_cbv`):
* `hdrFns` = `rlp_item_header`, `rlp_fail`, `rlp_read_length`: write no memory
  (`hdr_mwClosed`) and do not write the globals `scratch_ptr`, `frame_mem_ptr`
  (`hdr_gwClosed_scratch`, `hdr_gwClosed_frame`). These are the callee facts the explicit
  stack of `_rlp_validate_items_body` needs (its records must survive the header calls).
* `memeqFns` = `memeq`: writes no memory (`memeq_mwClosed`), the callee fact of
  `trie_walk` (the walked trie stays fixed).
-/

set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost

abbrev EntryList := List (MlS × (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL))

theorem closed_of_entries {chk : List MlS → ProgHOL 64 → Bool} {fns : EntryList}
    (hv : ∀ e ∈ fns, guestCode e.1 = some e.2)
    (hc : fns.all (fun e => chk (fns.map Prod.fst) e.2.2.1) = true) :
    ∀ f, (fns.map Prod.fst).contains f = true → ∀ ps b rs, guestCode f = some (ps, b, rs) →
      chk (fns.map Prod.fst) b = true := by
  intro f hf ps b rs hcode
  obtain ⟨e, he, rfl⟩ := List.mem_map.mp (List.contains_iff_mem.mp hf)
  rw [hv e he] at hcode
  have hb : e.2.2.1 = b := by rw [Option.some.inj hcode]
  rw [← hb]
  exact List.all_eq_true.mp hc e he

/-! ## The RLP header closure -/

def hdrFns : EntryList :=
  [fnEntry Guest.Software.guestFn_rlp_item_header, fnEntry Guest.Software.guestFn_rlp_fail,
   fnEntry Guest.Software.guestFn_rlp_read_length]

def hdrNames : List MlS := hdrFns.map Prod.fst

theorem hdrFns_valid : ∀ e ∈ hdrFns, guestCode e.1 = some e.2 := by
  intro e he
  simp only [hdrFns, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl | rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 109) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 105) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 106) (by decide)) ⟨_, rfl⟩

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem hdrFns_mw : hdrFns.all (fun e => mwFreeB hdrNames e.2.2.1) = true := by decide_cbv

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem hdrFns_gw_scratch :
    hdrFns.all (fun e => gwFreeB (nm "scratch_ptr") hdrNames e.2.2.1) = true := by decide_cbv

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem hdrFns_gw_frame :
    hdrFns.all (fun e => gwFreeB (nm "frame_mem_ptr") hdrNames e.2.2.1) = true := by decide_cbv

theorem hdr_mwClosed : MwClosed hdrNames guestCode :=
  closed_of_entries (chk := mwFreeB) hdrFns_valid hdrFns_mw

theorem hdr_gwClosed_scratch : GwClosed (nm "scratch_ptr") hdrNames guestCode :=
  closed_of_entries (chk := gwFreeB (nm "scratch_ptr")) hdrFns_valid hdrFns_gw_scratch

theorem hdr_gwClosed_frame : GwClosed (nm "frame_mem_ptr") hdrNames guestCode :=
  closed_of_entries (chk := gwFreeB (nm "frame_mem_ptr")) hdrFns_valid hdrFns_gw_frame

theorem rlp_item_header_mem : hdrNames.contains (nm "rlp_item_header") = true := by decide_cbv

/-- `rlp_item_header` writes no memory. -/
theorem funSpec_rlp_item_header_mw {σ : Type} {X : Ctx 64} (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "rlp_item_header") (fun _ s _ t => t.memory = s.memory) :=
  funSpec_mw (by rw [hC]; exact hdr_mwClosed) rlp_item_header_mem

/-- `rlp_item_header` keeps the scratch arena pointers. -/
theorem funSpec_rlp_item_header_scratch {σ : Type} {X : Ctx 64}
    (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "rlp_item_header") (fun _ s _ t =>
      t.globals.lookup (nm "scratch_ptr") = s.globals.lookup (nm "scratch_ptr") ∧
      t.globals.lookup (nm "frame_mem_ptr") = s.globals.lookup (nm "frame_mem_ptr")) :=
  (funSpec_gw (by rw [hC]; exact hdr_gwClosed_scratch) rlp_item_header_mem).and
    (funSpec_gw (by rw [hC]; exact hdr_gwClosed_frame) rlp_item_header_mem)

/-! ## `memeq` -/

def memeqFns : EntryList := [fnEntry Guest.Software.guestFn_memeq]

theorem memeqFns_valid : ∀ e ∈ memeqFns, guestCode e.1 = some e.2 := by
  intro e he
  simp only [memeqFns, List.mem_cons, List.not_mem_nil, or_false] at he
  subst he
  exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 18) (by decide)) ⟨_, rfl⟩

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem memeqFns_mw : memeqFns.all (fun e => mwFreeB (memeqFns.map Prod.fst) e.2.2.1) = true := by
  decide_cbv

theorem memeq_mem : (memeqFns.map Prod.fst).contains (nm "memeq") = true := by decide_cbv

/-- `memeq` writes no memory. -/
theorem funSpec_memeq_mw {σ : Type} {X : Ctx 64} (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "memeq") (fun _ s _ t => t.memory = s.memory) :=
  funSpec_mw (by rw [hC]; exact closed_of_entries (chk := mwFreeB) memeqFns_valid memeqFns_mw)
    memeq_mem

end InitECandidate.Solver.Spec
