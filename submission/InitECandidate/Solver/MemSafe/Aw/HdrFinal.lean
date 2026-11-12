import InitECandidate.Solver.MemSafe.Aw.RdHdr

set_option autoImplicit false

/-!
# The header functions without read-only hypotheses (Target F, closed)
The only inputs left are table entries: `keccak256`, `rlp_list_to_slices`, `u256_to_be_min`, and the
typing fact that `u256_ws` is a scalar buffer (`ScalarGlob C wsN 640`, used only to let the arithmetic
workspace be written).
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

theorem awSpec_decode_header_closed {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C) (hAG : AllocGlobs C)
    (hWS : ScalarGlob C wsN 640)
    (hRls : CSumm σ X C H (nm "rlp_list_to_slices") ⟨[.any, .any], [], [], false⟩ []) :
    AWSpec σ X C H (nm "decode_header") [] (fun _ _ _ => True)
      (fun _ s v _ => ∀ p, ptrsOf s = some p → DhPost p v) :=
  awSpec_decode_header hC hT hH hTS hAG (rdHdr hC hT) hWS hRls

theorem awSpec_validate_headers_closed {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C) (hAG : AllocGlobs C)
    (hWS : ScalarGlob C wsN 640)
    (hRls : CSumm σ X C H (nm "rlp_list_to_slices") ⟨[.any, .any], [], [], false⟩ [])
    (hKec : CSumm σ X C H (nm "keccak256") ⟨[.any, .any, .buf 32], [], [], false⟩ []) :
    AWSpec σ X C H (nm "validate_headers") [] (fun _ _ _ => True)
      (fun _ s v _ => ∀ p, ptrsOf s = some p → VhPost p v) :=
  awSpec_validate_headers hC hT hH hTS hAG (awSpec_decode_header_closed hC hT hH hTS hAG hWS hRls)
    hKec (rdSpec_memeq hC) hWS

theorem awSpec_validate_header_closed {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C) (hWS : ScalarGlob C wsN 640)
    (hKec : CSumm σ X C H (nm "keccak256") ⟨[.any, .any, .buf 32], [], [], false⟩ [])
    (hU : CSumm σ X C H (nm "u256_to_be_min") ⟨[.any, .buf 32], [], [], false⟩ []) :
    AWSpec σ X C H (nm "validate_header") [] (fun _ _ _ => True) (fun _ _ _ _ => True) := by
  have hAr := rdArith (σ := σ) hC hA
  have hRd : ∀ f ∈ vhdRd, RdSpec σ X f := by
    intro f hf
    simp only [vhdRd, List.mem_cons, List.mem_singleton, List.not_mem_nil, or_false] at hf
    rcases hf with rfl | rfl | rfl | rfl | rfl
    · exact hAr _ (by simp [arithFns])
    · exact hAr _ (by simp [arithFns])
    · exact rdSpec_u256_eq hC
    · exact rdSpec_u256_is_zero hC
    · exact rdSpec_memeq hC
  exact awSpec_validate_header hC hT hH hTS hAG hRd hWS hKec
    (awSpec_header_hash hC hH hTS hAG
      (awSpec_encode_header hC hA hT hH hTS hAG (awSpec_rlp_put_u256 hC hA hT hH hTS hAG hU)) hKec)

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_decode_header_closed
#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_validate_headers_closed
#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_validate_header_closed
