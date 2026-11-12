import InitECandidate.Solver.MemSafe.Aw.All
import InitECandidate.Solver.MemSafe.Hooks.Rec
import InitECandidate.Solver.MemSafe.Annot.DrvCfg
import InitECandidate.Solver.MemSafe.Helpers.GuestCtx
import InitECandidate.Solver.MemSafe.Helpers.GuestTypes

/-!
# Init: `htr_new_payload_request` at the guest configuration

The closed instance of `Aw.awSpec_htr_new_payload_request` for `guestCtx`, `guestC` and `guestHooksR`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Init
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Aw InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Helpers

theorem awSpec_npr_guest {σ : Type} :
    AWSpec σ guestCtx guestC (guestHooksR (σ := σ)) (nm "htr_new_payload_request") []
      (fun vs _ h0 => OutAt 1 h0 vs) (fun vs _ v _ => OutRes 1 vs v) := by
  have hC := guestCtx_code
  have hA := alignedDom_guestCtx
  have hT := domBelow_guestCtx
  have hH := guestHooksR_lawful (σ := σ)
  have hTS := tagSlots_guestC
  have hAG := Annot.drv_allocG
  have hMk := awSpec_merkleize (σ := σ) (X := guestCtx) (C := guestC) (H := guestHooksR) hC hA hT hH hTS hAG
  have hMp := awSpec_merkleize_progressive (σ := σ) (X := guestCtx) (C := guestC) (H := guestHooksR) hC hA hT hH hTS hAG hMk
  have hMix := awSpec_mix_in_length (σ := σ) (X := guestCtx) (C := guestC) (H := guestHooksR) (t := tB32) hC hA hT hH hTS hAG
    (by decide) (fun k => by rw [ty_B32]; simp [TyD.slot, b32Ty]) (by rw [ty_B32]; simp [b32Ty])
  have hPl := awSpec_htr_plist_chunks (σ := σ) (X := guestCtx) (C := guestC) (H := guestHooksR) hC hA hT hH hTS hAG hMp hMix
  have hPk := awSpec_pack_bytes (σ := σ) (X := guestCtx) (C := guestC) (H := guestHooksR) hC hA hT hH hTS hAG
  have hBV := awSpec_htr_bytes_vector (σ := σ) (X := guestCtx) (C := guestC) (H := guestHooksR) hC hA hT hH hTS hAG hPk hMk
  have hU := awSpec_htr_u64_at (σ := σ) (X := guestCtx) (C := guestC) (H := guestHooksR) hC hA hT hH hTS hAG
  have hBL := awSpec_htr_bytes_list (σ := σ) (X := guestCtx) (C := guestC) (H := guestHooksR) hC hA hT hH hTS hAG hPk hMk hMix
  have hPB := awSpec_htr_pbytes (σ := σ) (X := guestCtx) (C := guestC) (H := guestHooksR) hC hA hT hH hTS hAG hPk hPl
  have hWd := awSpec_htr_withdrawal (σ := σ) (X := guestCtx) (C := guestC) (H := guestHooksR) hC hA hT hH hTS hAG hBV hU hMk
  have hPc := awSpec_htr_pcontainer (σ := σ) (X := guestCtx) (C := guestC) (H := guestHooksR) hC hA hT hH hTS hAG hMp
  have hD0 := awSpec_htr_deposit (σ := σ) (X := guestCtx) (C := guestC) (H := guestHooksR) hC hA hT hH hTS hAG hBV hU hMk
  have hD1 := awSpec_htr_wdreq (σ := σ) (X := guestCtx) (C := guestC) (H := guestHooksR) hC hA hT hH hTS hAG hBV hU hMk
  have hD2 := awSpec_htr_cons (σ := σ) (X := guestCtx) (C := guestC) (H := guestHooksR) hC hA hT hH hTS hAG hBV hU hMk
  have hD3 := awSpec_htr_bdep (σ := σ) (X := guestCtx) (C := guestC) (H := guestHooksR) hC hA hT hH hTS hAG hBV hU hMk
  have hD4 := awSpec_htr_bexit (σ := σ) (X := guestCtx) (C := guestC) (H := guestHooksR) hC hA hT hH hTS hAG hBV hU hMk
  have hRL := awSpec_htr_request_list (σ := σ) (X := guestCtx) (C := guestC) (H := guestHooksR) hC hA hT hH hTS hAG hD0 hD1 hD2 hD3 hD4 hPl
  have hRq := awSpec_htr_requests (σ := σ) (X := guestCtx) (C := guestC) (H := guestHooksR) hC hA hT hH hTS hAG hRL hPc
  have hPay := awSpec_htr_payload (σ := σ) (X := guestCtx) (C := guestC) (H := guestHooksR) hC hA hT hH hTS hAG hBV hU hBL hPB hPl hWd hPc
  exact awSpec_htr_new_payload_request (σ := σ) (X := guestCtx) (C := guestC) (H := guestHooksR) hC hA hT hH hTS hAG hPay hPl hRq hMk

end InitECandidate.Solver.MemSafe.Init

#print axioms InitECandidate.Solver.MemSafe.Init.awSpec_npr_guest
