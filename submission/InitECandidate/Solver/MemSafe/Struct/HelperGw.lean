import InitECandidate.Solver.Spec.FootprintGuest
import InitECandidate.Solver.Spec.CodeState

/-!
# `memzero` and `memcpy` keep the allocator pointers

`gw_memzero`, `gw_memcpy`: neither writes `frame_mem_ptr` (kernel check by `decide_cbv` with
the global-write checker of `Spec/GlobalFree.lean`). Their plain summaries (`Summ`) allow any
monotone allocator move; `extend_memory` needs `frame_mem_ptr` unchanged by its `memzero`
calls (memory contiguity).
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Struct
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

def helperFns : EntryList := [fnEntry Guest.Software.guestFn_memzero, fnEntry Guest.Software.guestFn_memcpy]

theorem helperFns_valid : ∀ e ∈ helperFns, guestCode e.1 = some e.2 := by
  intro e he
  simp only [helperFns, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 17) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 16) (by decide)) ⟨_, rfl⟩

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem helperFns_check :
    helperFns.all (fun e => gwFreeB (nm "frame_mem_ptr") (helperFns.map Prod.fst) e.2.2.1) = true := by
  decide_cbv

theorem helper_gwClosed :
    GwClosed (nm "frame_mem_ptr") (helperFns.map Prod.fst) guestCode :=
  closed_of_entries (chk := gwFreeB (nm "frame_mem_ptr")) helperFns_valid helperFns_check

theorem memzero_mem : (helperFns.map Prod.fst).contains (nm "memzero") = true := by decide_cbv
theorem memcpy_mem : (helperFns.map Prod.fst).contains (nm "memcpy") = true := by decide_cbv

variable {σ : Type} {X : Ctx 64}

theorem gw_memzero (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "memzero") (fun _ s _ t =>
      t.globals.lookup (nm "frame_mem_ptr") = s.globals.lookup (nm "frame_mem_ptr")) :=
  funSpec_gw (by rw [hC]; exact helper_gwClosed) memzero_mem

theorem gw_memcpy (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "memcpy") (fun _ s _ t =>
      t.globals.lookup (nm "frame_mem_ptr") = s.globals.lookup (nm "frame_mem_ptr")) :=
  funSpec_gw (by rw [hC]; exact helper_gwClosed) memcpy_mem

/-! ## `stack_push` keeps `frame_mem_ptr`

Its call closure: `stack_push → scratch_alloc → trap_with`, `stack_push → memcpy`. -/

def stackFns : EntryList :=
  [fnEntry Guest.Software.guestFn_stack_push, fnEntry Guest.Software.guestFn_stack_push_word,
    fnEntry Guest.Software.guestFn_stack_push_bool, fnEntry Guest.Software.guestFn_scratch_alloc,
    fnEntry Guest.Software.guestFn_memcpy, fnEntry Guest.Software.guestFn_trap_with]

theorem stackFns_valid : ∀ e ∈ stackFns, guestCode e.1 = some e.2 := by
  intro e he
  simp only [stackFns, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl | rfl | rfl | rfl | rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 454) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 455) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 456) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 13) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 16) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 3) (by decide)) ⟨_, rfl⟩

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem stackFns_check :
    stackFns.all (fun e => gwFreeB (nm "frame_mem_ptr") (stackFns.map Prod.fst) e.2.2.1) = true := by
  decide_cbv

theorem stack_gwClosed :
    GwClosed (nm "frame_mem_ptr") (stackFns.map Prod.fst) guestCode :=
  closed_of_entries (chk := gwFreeB (nm "frame_mem_ptr")) stackFns_valid stackFns_check

theorem stack_push_mem : (stackFns.map Prod.fst).contains (nm "stack_push") = true := by decide_cbv
theorem stack_push_word_mem : (stackFns.map Prod.fst).contains (nm "stack_push_word") = true := by
  decide_cbv
theorem stack_push_bool_mem : (stackFns.map Prod.fst).contains (nm "stack_push_bool") = true := by
  decide_cbv

theorem gw_stack_push (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "stack_push") (fun _ s _ t =>
      t.globals.lookup (nm "frame_mem_ptr") = s.globals.lookup (nm "frame_mem_ptr")) :=
  funSpec_gw (by rw [hC]; exact stack_gwClosed) stack_push_mem

theorem gw_stack_push_word (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "stack_push_word") (fun _ s _ t =>
      t.globals.lookup (nm "frame_mem_ptr") = s.globals.lookup (nm "frame_mem_ptr")) :=
  funSpec_gw (by rw [hC]; exact stack_gwClosed) stack_push_word_mem

theorem gw_stack_push_bool (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "stack_push_bool") (fun _ s _ t =>
      t.globals.lookup (nm "frame_mem_ptr") = s.globals.lookup (nm "frame_mem_ptr")) :=
  funSpec_gw (by rw [hC]; exact stack_gwClosed) stack_push_bool_mem

end InitECandidate.Solver.MemSafe.Struct
