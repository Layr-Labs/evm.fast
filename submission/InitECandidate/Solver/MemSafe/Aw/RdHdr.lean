import InitECandidate.Solver.MemSafe.Aw.RlpV

set_option autoImplicit false

/-!
# The read-only header callees, from the code
`rlp_fail`, `rlp_read_length`, `rlp_item_header` by `PureR`; the scratch validator by `rdBody_spec` /
`rdSpec_rlp_validate_items`; then `rlp_item_total`, `rlp_list_count`, `rlp_item`, `rlp_decode_fully` and
the five `hdr_*_field` functions by `PureR` again.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Aw
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

def rdHdrFns : List MlS :=
  [nm "rlp_decode_fully", nm "hdr_bytes_field", nm "hdr_raw_field", nm "hdr_u256_field",
    nm "hdr_uint_field", nm "hdr_word_field"]

theorem rdHdr (hC : X.code.lookup = guestCode) (hT : DomBelow X) :
    ∀ f ∈ rdHdrFns, RdSpec σ X f := by
  have u0 : RdSpec σ X (nm "u256_from_be") := rdSpec_u256_from_be hC
  have hrlpfail : RdSpec σ X (nm "rlp_fail") :=
    rdSpec_fn (S := []) (fun f hf => by simp at hf <;> aesop) hC (d := Guest.Software.guestFn_rlp_fail)
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 105) (by decide)) ⟨_, rfl⟩ rfl (by cbv)
  have hrlpreadlength : RdSpec σ X (nm "rlp_read_length") :=
    rdSpec_fn (S := [nm "rlp_fail"]) (fun f hf => by simp at hf <;> aesop) hC (d := Guest.Software.guestFn_rlp_read_length)
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 106) (by decide)) ⟨_, rfl⟩ rfl (by cbv)
  have hrlpitemheader : RdSpec σ X (nm "rlp_item_header") :=
    rdSpec_fn (S := [nm "rlp_fail", nm "rlp_read_length"]) (fun f hf => by simp at hf <;> aesop) hC (d := Guest.Software.guestFn_rlp_item_header)
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 109) (by decide)) ⟨_, rfl⟩ rfl (by cbv)
  have hbody := rdBody_spec hC hT hrlpitemheader
  have hvi := rdSpec_rlp_validate_items hC hbody
  have hrlpitemtotal : RdSpec σ X (nm "rlp_item_total") :=
    rdSpec_fn (S := [nm "rlp_item_header", nm "rlp_validate_items"]) (fun f hf => by simp at hf <;> aesop) hC (d := Guest.Software.guestFn_rlp_item_total)
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 112) (by decide)) ⟨_, rfl⟩ rfl (by cbv)
  have hrlplistcount : RdSpec σ X (nm "rlp_list_count") :=
    rdSpec_fn (S := [nm "rlp_item_total"]) (fun f hf => by simp at hf <;> aesop) hC (d := Guest.Software.guestFn_rlp_list_count)
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 113) (by decide)) ⟨_, rfl⟩ rfl (by cbv)
  have hrlpitem : RdSpec σ X (nm "rlp_item") :=
    rdSpec_fn (S := [nm "rlp_fail", nm "rlp_read_length", nm "rlp_list_count"]) (fun f hf => by simp at hf <;> aesop) hC (d := Guest.Software.guestFn_rlp_item)
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 107) (by decide)) ⟨_, rfl⟩ rfl (by cbv)
  have hrlpdecodefully : RdSpec σ X (nm "rlp_decode_fully") :=
    rdSpec_fn (S := [nm "rlp_item", nm "rlp_fail"]) (fun f hf => by simp at hf <;> aesop) hC (d := Guest.Software.guestFn_rlp_decode_fully)
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 108) (by decide)) ⟨_, rfl⟩ rfl (by cbv)
  have hhdruintfield : RdSpec σ X (nm "hdr_uint_field") :=
    rdSpec_fn (S := [nm "rlp_item"]) (fun f hf => by simp at hf <;> aesop) hC (d := Guest.Software.guestFn_hdr_uint_field)
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 222) (by decide)) ⟨_, rfl⟩ rfl (by cbv)
  have hhdrwordfield : RdSpec σ X (nm "hdr_word_field") :=
    rdSpec_fn (S := [nm "hdr_uint_field"]) (fun f hf => by simp at hf <;> aesop) hC (d := Guest.Software.guestFn_hdr_word_field)
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 223) (by decide)) ⟨_, rfl⟩ rfl (by cbv)
  have hhdru256field : RdSpec σ X (nm "hdr_u256_field") :=
    rdSpec_fn (S := [nm "hdr_uint_field", nm "u256_from_be"]) (fun f hf => by simp at hf <;> aesop) hC (d := Guest.Software.guestFn_hdr_u256_field)
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 224) (by decide)) ⟨_, rfl⟩ rfl (by cbv)
  have hhdrbytesfield : RdSpec σ X (nm "hdr_bytes_field") :=
    rdSpec_fn (S := [nm "rlp_item"]) (fun f hf => by simp at hf <;> aesop) hC (d := Guest.Software.guestFn_hdr_bytes_field)
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 225) (by decide)) ⟨_, rfl⟩ rfl (by cbv)
  have hhdrrawfield : RdSpec σ X (nm "hdr_raw_field") :=
    rdSpec_fn (S := [nm "rlp_item"]) (fun f hf => by simp at hf <;> aesop) hC (d := Guest.Software.guestFn_hdr_raw_field)
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 226) (by decide)) ⟨_, rfl⟩ rfl (by cbv)
  intro f hf
  simp [rdHdrFns] at hf
  aesop

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.rdHdr
