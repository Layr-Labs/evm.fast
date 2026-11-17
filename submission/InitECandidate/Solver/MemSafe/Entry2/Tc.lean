import InitECandidate.Solver.MemSafe.FrameCost.Main
import InitECandidate.Solver.MemSafe.BlsCost.Callers.C12
import InitECandidate.Solver.MemSafe.Entry2.Code

/-!
# Entry2: table (all-states) costs and the plain parts of `process_create_message` /
`process_message_call`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Entry2
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-! ## Table costs -/

def bDS : Nat := 680564775674346746799191251971613917902
def bMA : Nat := 340282366920938464441052043338374447207
def bINC : Nat := 175585701428813344356298136312999594500612
def bCF : Nat := FrameCost.b_create_finish
def bSR : Nat := FrameCost.Restore.bRestore

theorem cc_ds : CalleeCost σ guestCtx (nm "destroy_storage") bDS := BlsCost.Callers.table12_sound _ _ (by cbv)
theorem cc_ma : CalleeCost σ guestCtx (nm "mark_account_created") bMA := Wire.calleeCost_guest rfl
theorem cc_inc : CalleeCost σ guestCtx (nm "increment_nonce") bINC := BlsCost.Callers.table12_sound _ _ (by cbv)
theorem cc_cf : CalleeCost σ guestCtx (nm "create_finish") bCF := FrameCost.cc_create_finish
theorem cc_sr : CalleeCost σ guestCtx (nm "state_restore") bSR := FrameCost.Restore.cc_restore
theorem cc_refill : CalleeCost σ guestCtx (nm "refill_frame_state_gas") 0 :=
  Wire.calleeCost_guest rfl
theorem cc_halt : CalleeCost σ guestCtx (nm "frame_halt") 0 := Wire.calleeCost_guest rfl
theorem cc_snap : CalleeCost σ guestCtx (nm "state_snapshot") 0 := Wire.calleeCost_guest rfl

theorem cost_callD' {f : MlS} {B : Nat} (h : CalleeCost σ guestCtx f B) (args : List (ExpHOL 64)) :
    Cost σ guestCtx (callD f args) (1 + B + 0) :=
  cost_call h (by intro _ _ _ _ h; cases h)

/-- Bounds of the plain parts of `process_create_message`: the handler, the `then` branch, the
continuation after `process_message`. -/
def bHdl : Nat := bSR + 3
def bThn : Nat := 1 + bCF + bHdl
def bK6 : Nat := bThn + 1 + bSR

theorem cost_hdl : Cost σ guestCtx pcmHandler bHdl := by
  unfold pcmHandler
  refine Cost.mono (cost_seq (cost_callD' cc_sr _)
    (cost_seq (cost_callD' cc_refill _) (cost_seq (cost_callD' cc_halt _)
      (cost_seq (cost_store _ _) (cost_store _ _))))) ?_
  unfold bSR bHdl; decide

theorem cost_then : Cost σ guestCtx pcmThen bThn := by
  unfold pcmThen
  refine Cost.mono (cost_dec (cost_seq (cost_assign _ _ _) (cost_dec (cost_seq
    (cost_call cc_cf (fun r hid hv hp h => by
      simp only [Option.some.injEq, Prod.mk.injEq] at h
      obtain ⟨-, -, -, rfl⟩ := h
      exact cost_hdl)) (cost_seq (cost_assign _ _ _) (cost_return _)))))) ?_
  unfold bCF bHdl bThn; decide

theorem cost_k6 : Cost σ guestCtx pcmK6 bK6 := by
  unfold pcmK6 pcmK7
  refine Cost.mono (cost_seq (cost_ite cost_then cost_skip)
    (cost_seq (cost_callD' cc_sr _) (cost_return _))) ?_
  unfold bSR bThn bK6; decide


/-! ## `process_message_call` -/

def bALLOC : Nat := 2
def bMZ : Nat := 137438953508
def bDEP : Nat := 2269002823772238517049334197697169244371909

theorem cc_alloc : CalleeCost σ guestCtx (nm "alloc") bALLOC := Wire.calleeCost_guest rfl
theorem cc_mz : CalleeCost σ guestCtx (nm "memzero") bMZ := BlsCost.Callers.table12_sound _ _ (by cbv)
theorem cc_dep : CalleeCost σ guestCtx (nm "account_deployable") bDEP := BlsCost.Callers.table12_sound _ _ (by cbv)
theorem cc_fsgu : CalleeCost σ guestCtx (nm "frame_state_gas_used") 0 := Wire.calleeCost_guest rfl

theorem cost_stores_dep : Cost σ guestCtx pmcStoresDep 0 := by
  unfold pmcStoresDep
  exact Cost.mono (cost_seq (cost_store _ _) (cost_seq (cost_store _ _) (cost_seq (cost_store _ _)
    (cost_seq (cost_store _ _) (cost_return _))))) (by omega)

theorem cost_tail : Cost σ guestCtx pmcTail 1 := by
  unfold pmcTail
  refine Cost.mono (cost_seq (cost_store _ _) <| cost_seq (cost_store _ _) <|
    cost_seq (cost_store _ _) <| cost_seq (cost_store _ _) <| cost_seq (cost_store _ _) <|
    cost_seq (cost_store _ _) <| cost_decCall cc_fsgu <| cost_seq (cost_store _ _) <|
    cost_seq (cost_ite (cost_seq (cost_store _ _) <| cost_seq (cost_store _ _) <|
        cost_dec <| cost_seq (cost_ite (cost_assign _ _ _) cost_skip) (cost_store _ _))
      cost_skip) <|
    cost_seq (cost_store _ _) <| cost_seq (cost_store _ _) <| cost_return _) ?_
  omega

end InitECandidate.Solver.MemSafe.Entry2
