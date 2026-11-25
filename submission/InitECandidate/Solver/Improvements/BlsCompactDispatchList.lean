import InitECandidate.Solver.Improvements.BlsSmallOpCall
import InitECandidate.Solver.Improvements.BlsSmallOpCallcode
import InitECandidate.Solver.Improvements.BlsSmallOpCreate
import InitECandidate.Solver.Improvements.BlsSmallOpCreate2
import InitECandidate.Solver.Improvements.BlsSmallOpDelegatecall
import InitECandidate.Solver.Improvements.BlsSmallOpStaticcall
import InitECandidate.Solver.Improvements.BlsSmallStart
import InitECandidate.Solver.Band.DispPrices
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
namespace BlsCompactDispatch
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules
def state : TblState := overrideCost (overrideCost (overrideCost (overrideCost (overrideCost (overrideCost (ThirdCombinedSmallCryptoTable.state) (nm "op_call") 1154986719311152997669317095358270888645513533942728542216508) (nm "op_callcode") 1154986719311152996534475401105230691656405383050805545583345) (nm "op_create") 1167540922781926362644049052828924120384513117582563518397688) (nm "op_create2") 1167540922781926361509887923309725800322811331251420506529496) (nm "op_delegatecall") 1154986719311152995399633706852190494667371019135177387156647) (nm "op_staticcall") 1154986719311152995399633706852190494667371019135177387156647

theorem state_sound {σ : Type} : StateSound σ guestCtx state := overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (ThirdCombinedSmallCryptoTable.sound) BlsCompactOpCall.op_cost) BlsCompactOpCallcode.op_cost) BlsCompactOpCreate.op_cost) BlsCompactOpCreate2.op_cost) BlsCompactOpDelegatecall.op_cost) BlsCompactOpStaticcall.op_cost

def odTab : List MlS := [nm "op_stop", nm "op_add", nm "op_mul", nm "op_sub", nm "op_div",
  nm "op_sdiv", nm "op_mod", nm "op_smod", nm "op_addmod", nm "op_mulmod", nm "op_exp",
  nm "op_signextend", nm "op_lt", nm "op_gt", nm "op_slt", nm "op_sgt", nm "op_eq", nm "op_iszero",
  nm "op_and", nm "op_or", nm "op_xor", nm "op_not", nm "op_byte", nm "op_shl", nm "op_shr",
  nm "op_sar", nm "op_clz", nm "op_keccak", nm "op_address", nm "op_balance", nm "op_origin",
  nm "op_caller", nm "op_callvalue", nm "op_calldataload", nm "op_calldatasize",
  nm "op_calldatacopy", nm "op_codesize", nm "op_codecopy", nm "op_gasprice", nm "op_extcodesize",
  nm "op_extcodecopy", nm "op_returndatasize", nm "op_returndatacopy", nm "op_extcodehash",
  nm "op_blockhash", nm "op_coinbase", nm "op_timestamp", nm "op_number", nm "op_prevrandao",
  nm "op_gaslimit", nm "op_chainid", nm "op_selfbalance", nm "op_basefee", nm "op_blobhash",
  nm "op_blobbasefee", nm "op_slotnum", nm "op_pop", nm "op_mload", nm "op_mstore",
  nm "op_mstore8", nm "op_jump", nm "op_jumpi", nm "op_pc", nm "op_msize", nm "op_gas",
  nm "op_jumpdest", nm "op_tload", nm "op_tstore", nm "op_mcopy", nm "op_push", nm "op_dup",
  nm "op_swap", nm "op_log", nm "op_dupn", nm "op_swapn", nm "op_exchange", nm "op_create",
  nm "op_call", nm "op_callcode", nm "op_return", nm "op_delegatecall", nm "op_create2",
  nm "op_staticcall", nm "op_revert", nm "op_selfdestruct"]

def bound : Nat := 1167540922781926362644049052828924120384513117582563518397688
def tabLe (names : List MlS) : Bool := names.all fun n => match state.1.lookup n with
  | some b => Nat.ble b bound
  | none => false

theorem table_le : tabLe odTab = true := by
  simp only [tabLe, state, overrideCost, InitECandidate.Solver.Band.DispPrices.state_prices]
  decide +kernel

theorem handler_cost {σ : Type} {f : MlS} (hf : f ∈ odTab) :
    CalleeCost σ guestCtx f bound := by
  have hall := table_le
  unfold tabLe at hall
  have h := List.all_eq_true.mp hall f hf
  revert h
  split
  · rename_i price lookup
    intro hle
    exact (calleeCost_of_tbl (state_sound (σ := σ)).1 lookup).mono' (Nat.le_of_ble_eq_true hle)
  · intro impossible
    cases impossible
#print axioms handler_cost
end BlsCompactDispatch
