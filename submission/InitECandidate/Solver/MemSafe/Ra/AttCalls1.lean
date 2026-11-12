import InitECandidate.Solver.MemSafe.Ra.AttKit1
import InitECandidate.Solver.MemSafe.Ra.Callees
import InitECandidate.Solver.MemSafe.Aw.HdrFinal
import InitECandidate.Solver.MemSafe.Aw.Hh
import InitECandidate.Solver.MemSafe.Exb.Ivvh

/-!
# `run_attempt`: call conversions (2), the above-writer callees
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Att
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

theorem rls_C :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "rlp_list_to_slices")
      ⟨[.any, .any], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

theorem awSpec_vh : Aw.AWSpec σ guestCtx guestC (HR σ) (nm "validate_headers") [] (fun _ _ _ => True)
    (fun _ s v _ => ∀ p, ptrsOf s = some p → Aw.VhPost p v) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  exact Aw.awSpec_validate_headers_closed hF.hX Aw.domBelow_guestCtx hF.hH Helpers.tagSlots_guestC Annot.drv_allocG
    Helpers.scalarGlob_u256_ws rls_C Ra.keccak_C

theorem awSpec_vhd : Aw.AWSpec σ guestCtx guestC (HR σ) (nm "validate_header") [] (fun _ _ _ => True)
    (fun _ _ _ _ => True) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  exact Aw.awSpec_validate_header_closed hF.hX hF.hal Aw.domBelow_guestCtx hF.hH Helpers.tagSlots_guestC Annot.drv_allocG
    Helpers.scalarGlob_u256_ws Ra.keccak_C Ra.toBeMin_C

theorem awSpec_hh : Aw.AWSpec σ guestCtx guestC (HR σ) (nm "header_hash") [] Aw.HhPre (fun _ _ _ _ => True) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  exact Aw.awSpec_header_hash hF.hX hF.hH Helpers.tagSlots_guestC Annot.drv_allocG
    (Aw.awSpec_encode_header hF.hX hF.hal Aw.domBelow_guestCtx hF.hH Helpers.tagSlots_guestC Annot.drv_allocG
      (Aw.awSpec_rlp_put_u256 hF.hX hF.hal Aw.domBelow_guestCtx hF.hH Helpers.tagSlots_guestC Annot.drv_allocG Ra.toBeMin_C))
    Ra.keccak_C

theorem cr_vh : CallR (σ := σ) (nm "validate_headers") (fun _ _ Γ _ => CPre Γ ∧ True) (fun _ _ _ _ => False)
    (fun _ s _ _ v _ _ _ => ∀ p, ptrsOf s = some p → Aw.VhPost p v) := cr_aw awSpec_vh

theorem cr_vhd : CallR (σ := σ) (nm "validate_header") (fun _ _ Γ _ => CPre Γ ∧ True) (fun _ _ _ _ => False)
    (fun _ _ _ _ _ _ _ _ => True) := cr_aw awSpec_vhd

/-- `header_hash(hdr, out)` at `h0 = O`: the caller names the window. -/
theorem cr_hh : CallR (σ := σ) (nm "header_hash")
    (fun vs s Γ p => CPre Γ ∧ ∃ H O : BitVec 64, vs = [.val (.word H), .val (.word O)] ∧ O.toNat % 8 = 0 ∧ heapBase ≤ O.toNat ∧
      O.toNat + 32 ≤ p.hp ∧ Aw.Below Γ O.toNat)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ _ _ => True) := by
  have h := callR_mono_post (cr_awh (σ := σ) (awSpec_hh (σ := σ))) (Q' := fun _ _ _ _ _ _ _ _ => True) (fun _ _ _ _ _ _ _ _ _ => trivial)
  intro vs body callee rs hl s hs hloc r hr v hv Γ p hG hp hJ hE ⟨hC, H, O, hvs, h8, hb, hle, hB⟩
  exact h vs body callee rs hl s hs hloc r hr v hv Γ p hG hp hJ hE
    ⟨hC, O.toNat, h8, hb, by omega, hB, O, by subst hvs; rfl, le_rfl, p, hp, hle⟩

end InitECandidate.Solver.MemSafe.Att
