import InitECandidate.Solver.MemSafe.Loc.LeafCode
import InitECandidate.Solver.Spec.Mpt.Leaves.RlpFoot
import InitECandidate.Solver.Spec.GlobalFree

set_option autoImplicit false

/-!
# `keccak256` and `trie_lookup` keep the allocator pointers (sonnet-loc)

Global-write footprints (`gwFreeB`) of the two call sets, for `heap_ptr`, `frame_mem_ptr`,
`scratch_ptr`, hence `ptrsOf` is unchanged by a return.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Loc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe

variable {σ : Type} {X : Ctx 64}

def kecFns : EntryList :=
  [fnEntry Guest.Software.guestFn_keccak256, fnEntry Guest.Software.guestFn_keccak_absorb_block,
   fnEntry Guest.Software.guestFn_keccak_f1600, fnEntry Guest.Software.guestFn_memcpy,
   fnEntry Guest.Software.guestFn_memzero]

def kecNames : List MlS := kecFns.map Prod.fst

theorem kecFns_valid : ∀ e ∈ kecFns, guestCode e.1 = some e.2 := by
  intro e he
  simp only [kecFns, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl | rfl | rfl | rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 103) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 102) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 101) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 16) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 17) (by decide)) ⟨_, rfl⟩

def tlFns : EntryList :=
  [fnEntry Guest.Software.guestFn_trie_lookup, fnEntry Guest.Software.guestFn_trie_walk,
   fnEntry Guest.Software.guestFn_key_to_nibbles, fnEntry Guest.Software.guestFn_memeq,
   fnEntry Guest.Software.guestFn_mpt_fail]

def tlNames : List MlS := tlFns.map Prod.fst

theorem tlFns_valid : ∀ e ∈ tlFns, guestCode e.1 = some e.2 := by
  intro e he
  simp only [tlFns, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl | rfl | rfl | rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 267) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 266) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 248) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 18) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 246) (by decide)) ⟨_, rfl⟩

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem kecFns_gw_heap : kecFns.all (fun e => gwFreeB (nm "heap_ptr") kecNames e.2.2.1) = true := by
  decide_cbv
set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem kecFns_gw_frame : kecFns.all (fun e => gwFreeB (nm "frame_mem_ptr") kecNames e.2.2.1) = true := by
  decide_cbv
set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem kecFns_gw_scratch : kecFns.all (fun e => gwFreeB (nm "scratch_ptr") kecNames e.2.2.1) = true := by
  decide_cbv
set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem tlFns_gw_heap : tlFns.all (fun e => gwFreeB (nm "heap_ptr") tlNames e.2.2.1) = true := by
  decide_cbv
set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem tlFns_gw_frame : tlFns.all (fun e => gwFreeB (nm "frame_mem_ptr") tlNames e.2.2.1) = true := by
  decide_cbv
set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem tlFns_gw_scratch : tlFns.all (fun e => gwFreeB (nm "scratch_ptr") tlNames e.2.2.1) = true := by
  decide_cbv

theorem kec_mem : kecNames.contains (nm "keccak256") = true := by decide_cbv
theorem tl_mem : tlNames.contains (nm "trie_lookup") = true := by decide_cbv

theorem kec_gc_heap : GwClosed (nm "heap_ptr") kecNames guestCode :=
  closed_of_entries (chk := gwFreeB (nm "heap_ptr")) kecFns_valid kecFns_gw_heap
theorem kec_gc_frame : GwClosed (nm "frame_mem_ptr") kecNames guestCode :=
  closed_of_entries (chk := gwFreeB (nm "frame_mem_ptr")) kecFns_valid kecFns_gw_frame
theorem kec_gc_scratch : GwClosed (nm "scratch_ptr") kecNames guestCode :=
  closed_of_entries (chk := gwFreeB (nm "scratch_ptr")) kecFns_valid kecFns_gw_scratch
theorem tl_gc_heap : GwClosed (nm "heap_ptr") tlNames guestCode :=
  closed_of_entries (chk := gwFreeB (nm "heap_ptr")) tlFns_valid tlFns_gw_heap
theorem tl_gc_frame : GwClosed (nm "frame_mem_ptr") tlNames guestCode :=
  closed_of_entries (chk := gwFreeB (nm "frame_mem_ptr")) tlFns_valid tlFns_gw_frame
theorem tl_gc_scratch : GwClosed (nm "scratch_ptr") tlNames guestCode :=
  closed_of_entries (chk := gwFreeB (nm "scratch_ptr")) tlFns_valid tlFns_gw_scratch

theorem keccak_keep (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "keccak256") (fun _ s _ t => ptrsOf t = ptrsOf s) := by
  have h1 := funSpec_gw (σ := σ) (X := X) (by rw [hC]; exact kec_gc_heap) kec_mem
  have h2 := funSpec_gw (σ := σ) (X := X) (by rw [hC]; exact kec_gc_frame) kec_mem
  have h3 := funSpec_gw (σ := σ) (X := X) (by rw [hC]; exact kec_gc_scratch) kec_mem
  exact FunSpec.mono ((h1.and h2).and h3) fun _ _ _ _ ⟨⟨e1, e2⟩, e3⟩ =>
    Spec.Mpt.Leaves.ptrsOf_of_gl e1 e2 e3

theorem tl_keep (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "trie_lookup") (fun _ s _ t => ptrsOf t = ptrsOf s) := by
  have h1 := funSpec_gw (σ := σ) (X := X) (by rw [hC]; exact tl_gc_heap) tl_mem
  have h2 := funSpec_gw (σ := σ) (X := X) (by rw [hC]; exact tl_gc_frame) tl_mem
  have h3 := funSpec_gw (σ := σ) (X := X) (by rw [hC]; exact tl_gc_scratch) tl_mem
  exact FunSpec.mono ((h1.and h2).and h3) fun _ _ _ _ ⟨⟨e1, e2⟩, e3⟩ =>
    Spec.Mpt.Leaves.ptrsOf_of_gl e1 e2 e3

end InitECandidate.Solver.MemSafe.Loc

#print axioms InitECandidate.Solver.MemSafe.Loc.keccak_keep
#print axioms InitECandidate.Solver.MemSafe.Loc.tl_keep
