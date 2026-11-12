import InitECandidate.Solver.MemSafe.Init.Main1

/-!
# Init: `decode_host_input` keeps `frame_mem_ptr` and `scratch_ptr`
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
open InitECandidate.Solver.MemSafe

def dhFns : EntryList :=
  [fnEntry Guest.Software.guestFn_alloc, fnEntry Guest.Software.guestFn_decode_bytes_list,
   fnEntry Guest.Software.guestFn_decode_host_input, fnEntry Guest.Software.guestFn_decode_payload,
   fnEntry Guest.Software.guestFn_decode_requests, fnEntry Guest.Software.guestFn_decode_stateless_input,
   fnEntry Guest.Software.guestFn_host_input_byte, fnEntry Guest.Software.guestFn_host_input_le32,
   fnEntry Guest.Software.guestFn_input_blob, fnEntry Guest.Software.guestFn_precheck_host_ssz_header,
   fnEntry Guest.Software.guestFn_ssz_check_offsets, fnEntry Guest.Software.guestFn_ssz_fail,
   fnEntry Guest.Software.guestFn_ssz_fixed_list_count, fnEntry Guest.Software.guestFn_ssz_split_var_list,
   fnEntry Guest.Software.guestFn_trap_with, fnEntry Guest.Software.guestFn_udivmod]

def dhNames : List MlS := dhFns.map Prod.fst

theorem dhFns_valid : ∀ e ∈ dhFns, guestCode e.1 = some e.2 := by
  intro e he
  simp only [dhFns, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 7) (by have := guestAst_len; omega)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 206) (by have := guestAst_len; omega)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 200) (by have := guestAst_len; omega)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 204) (by have := guestAst_len; omega)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 205) (by have := guestAst_len; omega)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 207) (by have := guestAst_len; omega)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 197) (by have := guestAst_len; omega)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 198) (by have := guestAst_len; omega)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 29) (by have := guestAst_len; omega)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 199) (by have := guestAst_len; omega)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 201) (by have := guestAst_len; omega)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 196) (by have := guestAst_len; omega)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 203) (by have := guestAst_len; omega)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 202) (by have := guestAst_len; omega)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 3) (by have := guestAst_len; omega)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 33) (by have := guestAst_len; omega)) ⟨_, rfl⟩

theorem dhFns_gw : [gFrame, gScratch].all (fun g => dhFns.all (fun e => gwFreeB g dhNames e.2.2.1)) = true := by
  decide +kernel

theorem dh_gwClosed (g : MlS) (hg : g = gFrame ∨ g = gScratch) : GwClosed g dhNames guestCode := by
  refine closed_of_entries (chk := gwFreeB g) dhFns_valid ?_
  have := dhFns_gw
  simp only [List.all_cons, List.all_nil, Bool.and_true, Bool.and_eq_true] at this
  rcases hg with rfl | rfl
  · exact this.1
  · exact this.2

theorem dh_in : dhNames.contains (nm "decode_host_input") = true := by decide +kernel

theorem funSpec_dh_keep {σ : Type} (g : MlS) (hg : g = gFrame ∨ g = gScratch) :
    FunSpec σ guestCtx (nm "decode_host_input") (fun _ s _ t => t.globals.lookup g = s.globals.lookup g) :=
  funSpec_gw (by rw [guestCtx_code]; exact dh_gwClosed g hg) dh_in

end InitECandidate.Solver.MemSafe.Init
