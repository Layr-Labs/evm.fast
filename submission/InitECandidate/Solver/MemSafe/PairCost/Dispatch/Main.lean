import InitECandidate.Solver.MemSafe.CryptoCost.Dispatch.One
import InitECandidate.Solver.MemSafe.PairCost.Callers.C14
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames (PreOpX GP GR Ready DoneZ RunNZ Phi chainX_congr phi_locFree
  jrNZ_congr gword_congr ptrsOf_congr G_congr sg0 sg1)
open InitECandidate.Solver.Band
namespace InitECandidate.Solver.MemSafe.PairCost.Dispatch
variable {σ : Type}
def handlerBound : Nat := 1745041933047810400037716162961351002462159973322807352605297
def hot : List MlS := [nm "op_call", nm "op_callcode", nm "op_create", nm "op_create2", nm "op_delegatecall", nm "op_staticcall"]
def cold : List MlS := [nm "op_stop", nm "op_add", nm "op_mul", nm "op_sub", nm "op_div", nm "op_sdiv", nm "op_mod", nm "op_smod", nm "op_addmod", nm "op_mulmod", nm "op_exp", nm "op_signextend", nm "op_lt", nm "op_gt", nm "op_slt", nm "op_sgt", nm "op_eq", nm "op_iszero", nm "op_and", nm "op_or", nm "op_xor", nm "op_not", nm "op_byte", nm "op_shl", nm "op_shr", nm "op_sar", nm "op_clz", nm "op_keccak", nm "op_address", nm "op_balance", nm "op_origin", nm "op_caller", nm "op_callvalue", nm "op_calldataload", nm "op_calldatasize", nm "op_calldatacopy", nm "op_codesize", nm "op_codecopy", nm "op_gasprice", nm "op_extcodesize", nm "op_extcodecopy", nm "op_returndatasize", nm "op_returndatacopy", nm "op_extcodehash", nm "op_blockhash", nm "op_coinbase", nm "op_timestamp", nm "op_number", nm "op_prevrandao", nm "op_gaslimit", nm "op_chainid", nm "op_selfbalance", nm "op_basefee", nm "op_blobhash", nm "op_blobbasefee", nm "op_slotnum", nm "op_pop", nm "op_mload", nm "op_mstore", nm "op_mstore8", nm "op_jump", nm "op_jumpi", nm "op_pc", nm "op_msize", nm "op_gas", nm "op_jumpdest", nm "op_tload", nm "op_tstore", nm "op_mcopy", nm "op_push", nm "op_dup", nm "op_swap", nm "op_log", nm "op_dupn", nm "op_swapn", nm "op_exchange", nm "op_return", nm "op_revert", nm "op_selfdestruct"]
theorem cold_le : tabLe handlerBound cold = true := by
  simp only [tabLe,cold,List.all_cons,List.all_nil,Bool.and_true,Bool.and_eq_true]
  repeat' constructor

theorem cold_member {f : MlS} (hf : f ∈ odTab) (hh : f ∉ hot) : f ∈ cold := by
  simp only [odTab,List.mem_cons,List.not_mem_nil,or_false] at hf
  rcases hf with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  all_goals first | exact False.elim (hh (by decide +kernel)) | decide +kernel
variable {H : Hooks σ} (hH : HooksLawful guestC H)
include hH
theorem op_dispatch_condCost {M Bsl Bss : Nat}
    (hsl : CondCost σ guestCtx guestC H (nm "op_sload") (sg0 []) (PreOpX guestC tEV tCK GP GR M) Bsl)
    (hss : CondCost σ guestCtx guestC H (nm "op_sstore") (sg0 []) (PreOpX guestC tEV tCK GP GR M) Bss) :
    CondCost σ guestCtx guestC H (nm "op_dispatch") (sg1 []) (PreOpX guestC tEV tCK GP GR M)
      (1 * (1 + max handlerBound (max Bsl Bss))) := by
  let Pf : List (ValueHOL 64) → State σ → Prop := fun _ s =>
    ∃ Γ p, G guestC H Γ s ∧ ptrsOf s = some p ∧ PreOpX guestC tEV tCK GP GR M [] s Γ
  have hf : ∀ f ∈ odNames, Inv.CalleeCostP σ guestCtx f Pf (max handlerBound (max Bsl Bss)) := by
    intro f hf
    simp only [odNames,List.mem_cons] at hf
    rcases hf with rfl | rfl | hf
    · obtain ⟨rs,hc⟩ := sload_code
      exact (condCost_nil (by rw [guestCtx_code]; exact hc) rfl hsl).mono (by omega)
    · obtain ⟨rs,hc⟩ := sstore_code
      exact (condCost_nil (by rw [guestCtx_code]; exact hc) rfl hss).mono (by omega)
    · by_cases hh : f ∈ hot
      · simp only [hot,List.mem_cons,List.not_mem_nil,or_false] at hh
        rcases hh with rfl | rfl | rfl | rfl | rfl | rfl
        · exact (Inv.calleeCostP_of_calleeCost Callers.cc_op_call).mono
            (Nat.le_trans (by decide +kernel : Callers.b_op_call ≤ handlerBound) (Nat.le_max_left _ _))
        · exact (Inv.calleeCostP_of_calleeCost Callers.cc_op_callcode).mono
            (Nat.le_trans (by decide +kernel : Callers.b_op_callcode ≤ handlerBound) (Nat.le_max_left _ _))
        · exact (Inv.calleeCostP_of_calleeCost Callers.cc_op_create).mono
            (Nat.le_trans (by decide +kernel : Callers.b_op_create ≤ handlerBound) (Nat.le_max_left _ _))
        · exact (Inv.calleeCostP_of_calleeCost Callers.cc_op_create2).mono
            (Nat.le_trans (by decide +kernel : Callers.b_op_create2 ≤ handlerBound) (Nat.le_max_left _ _))
        · exact (Inv.calleeCostP_of_calleeCost Callers.cc_op_delegatecall).mono
            (Nat.le_trans (by decide +kernel : Callers.b_op_delegatecall ≤ handlerBound) (Nat.le_max_left _ _))
        · exact (Inv.calleeCostP_of_calleeCost Callers.cc_op_staticcall).mono
            (Nat.le_trans (by decide +kernel : Callers.b_op_staticcall ≤ handlerBound) (Nat.le_max_left _ _))
      · have hfc : f ∈ cold := cold_member hf hh
        obtain ⟨b,hb,hle⟩ := tabLe_get cold_le hfc
        exact (Inv.calleeCostP_of_calleeCost (Wire.calleeCost_guest (Wire.tbLe_of_eq hb))).mono (by omega)
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rs',hc⟩ := od_code
  obtain rfl := lookupCode_body hc hl
  refine (CryptoCost.Dispatch.One.dcost_one hf ?_ odBody od_dchk).mono (by simp)
  rintro s ⟨-,Γ,p,hG,hp,-,hpre⟩ vs' callee'
  exact ⟨Γ,p,(Frames.G_locFree hH s _ _).mpr hG,by rw [ptrsOf_congr rfl]; exact hp,
    preOpX_entry callee' hpre⟩
#print axioms cold_le
#print axioms op_dispatch_condCost
end InitECandidate.Solver.MemSafe.PairCost.Dispatch
