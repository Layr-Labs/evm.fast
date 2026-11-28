import InitECandidate.Solver.HtFd.Cost
import InitECandidate.Solver.Improvements.ThirdNamedCostReplay
import InitECandidate.Solver.SourceCost.Shards.All

/-! The accepted analyzer table with the new
`htab_first_diff` price, replayed through every transitive caller (callee first). `htList` records
the entries that became strictly smaller than in the accepted table. -/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.HtFd
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules
open Flapjack.Pancake.PanLang (MlS)

def replayNames : List String :=
  ["htab_set", "record_pre_state_read", "account_has_storage", "get_pre_state_account_optional", "get_account_optional", "get_account", "account_deployable", "account_exists", "account_exists_and_is_empty", "bal_ensure_account", "add_balance_change", "add_code_change", "add_nonce_change", "add_storage_read", "add_storage_write", "add_touched_account", "build_block_access_list_rlp", "compute_state_root", "get_code", "ext_code_of", "htab_union_into", "merge_tx_into_block", "get_pre_tx_account", "idx_start_account", "ws_storage_trie", "ws_get_storage", "get_pre_tx_storage", "idx_start_storage", "update_builder_from_tx", "incorporate_tx_into_block", "jset", "destroy_storage", "set_account", "destroy_account", "modify_state_commit", "set_code", "create_finish", "increment_nonce", "mark_account_created", "get_pre_state_account", "is_account_alive", "warm_address", "prepare_dispatch", "validate_authorization_checks", "set_delegation", "depth0_prepare", "move_ether", "frame_prologue", "frame_start", "incorporate_child_on_success", "state_restore", "finish_child", "frame_epilogue", "warm_after_charge", "op_balance", "calculate_delegation_cost", "start_child", "generic_call", "op_call", "op_callcode", "generic_create", "op_create", "op_create2", "op_delegatecall", "op_extcodecopy", "op_extcodehash", "op_extcodesize", "op_selfbalance", "op_selfdestruct", "get_storage", "warm_storage_key", "op_sload", "get_storage_original", "set_storage", "op_sstore", "op_staticcall", "set_transient_storage", "op_tstore", "op_dispatch", "run_frames", "process_message", "process_create_message", "process_message_call", "process_unchecked_system_transaction", "process_checked_system_transaction", "process_general_purpose_requests", "check_transaction", "clear_account_preserving_balance", "create_ether", "set_account_balance", "process_transaction"]

def state : TblState :=
  ThirdNamedCostReplay.replayNamed replayNames
    (overrideCost Shards.finalState (nm "htab_first_diff") fdPrice)

theorem state_sound {σ : Type} : StateSound σ guestCtx state :=
  ThirdNamedCostReplay.replayNamed_sound replayNames
    (overrideCost_sound Shards.finalState_sound_guest fd_cost)

def htList : List (MlS × Nat) :=
  [(nm "htab_first_diff", 343597383770),
   (nm "htab_set", 922337204029074964670),
   (nm "record_pre_state_read", 922337204029074964671),
   (nm "account_has_storage", 1133820847152277381596707331965936948256208),
   (nm "get_pre_state_account_optional", 1133820847152277381597463648473302637256320),
   (nm "get_account_optional", 1133820847152277381598478219397700259979080),
   (nm "get_account", 1133820847152277381598478219397700259979086),
   (nm "account_deployable", 2267641694304554763195259338339932046441765),
   (nm "account_exists", 1133820847152277381598478219397700259979081),
   (nm "account_exists_and_is_empty", 1133820847152277381598552006373995098185552),
   (nm "bal_ensure_account", 1014570924397622722809),
   (nm "add_balance_change", 1106804644766170480901),
   (nm "add_code_change", 1106804644766170480901),
   (nm "add_nonce_change", 1106804644766170480900),
   (nm "add_storage_read", 1936908128426697687481),
   (nm "add_storage_write", 2121375569163793203667),
   (nm "add_touched_account", 1014570924397622722810),
   (nm "build_block_access_list_rlp", 1804909045353169020656890361888606632600151107654948201823574506379188704846761031277528549823622101),
   (nm "get_code", 1494186270314071064814),
   (nm "ext_code_of", 1133820847152277381599972405668014331043902),
   (nm "htab_union_into", 17014118352385176178792436189326945026241),
   (nm "merge_tx_into_block", 313855086886254169381750560086105332618083800467743078090082),
   (nm "get_pre_tx_account", 1133820847152277381596541311269273562291649),
   (nm "idx_start_account", 1133820847152277381597924817075145376046763),
   (nm "jset", 1088357900692460929232),
   (nm "destroy_storage", 19736377287752683887200409323582053679342),
   (nm "set_account", 1088357900692460929233),
   (nm "destroy_account", 19736377287752683888288767224274514608577),
   (nm "modify_state_commit", 19736377287752683889450912101261813744283),
   (nm "set_code", 1154237789173871942416552981168950486278894),
   (nm "create_finish", 1154237789173871942416626768145245324485373),
   (nm "increment_nonce", 1153557224440030065488002918475256911929844),
   (nm "mark_account_created", 922337204029074964671),
   (nm "get_pre_state_account", 1133820847152277381597463648473302637256326),
   (nm "is_account_alive", 1133820847152277381598552006373995098185552),
   (nm "warm_address", 922337204029074964671),
   (nm "prepare_dispatch", 4535283388609109526397214844780682244423488),
   (nm "validate_authorization_checks", 1133820847152277381599972405668014331043903),
   (nm "set_delegation", 105530634428285696403397262683390156724808618695785470950632489),
   (nm "depth0_prepare", 105530634428285696407932546071999266251205833540566153195055980),
   (nm "move_ether", 2307114448880060130976005836950513823859691),
   (nm "frame_prologue", 722542636840853059654520841308977499901443881123710176444099899811425046574528517),
   (nm "frame_start", 722542636840853059654520841308977499901443881123710176444099899811425046574528521),
   (nm "incorporate_child_on_success", 18375247820068930032922635780159661146318),
   (nm "warm_after_charge", 922337204029074964672),
   (nm "op_balance", 1133820847152277381599566577298392720908336),
   (nm "calculate_delegation_cost", 1133820847152277381600138426364677717008465),
   (nm "start_child", 722542636840853059654520841308977499902617174725437959193476265284100872839273450),
   (nm "generic_call", 722542636840853059654520841308977499902617174725437959193476486645029757353892875),
   (nm "op_call", 722542636840853059654520841308977499907152458114047068719875712184915161134210339),
   (nm "op_callcode", 722542636840853059654520841308977499906018637266894791338277160178541166036024784),
   (nm "generic_create", 722542636840853059654520841308977499909459572562927128850845778170272222495530119),
   (nm "op_create", 722542636840853059654520841308977499910594073974813248109372068582600324350409807),
   (nm "op_create2", 722542636840853059654520841308977499909460933692394812604700922940787109236989223),
   (nm "op_delegatecall", 722542636840853059654520841308977499904884816419742513956678681959143465776045694),
   (nm "op_extcodecopy", 1133820847152277381601282124497591306592591),
   (nm "op_extcodehash", 1133820847152277381599658811018761268666429),
   (nm "op_extcodesize", 1133820847152277381601060763568706791973153),
   (nm "op_selfbalance", 1133820847152277381598552006373995098185562),
   (nm "op_selfdestruct", 5708576990336892275774059932802768554894276),
   (nm "warm_storage_key", 1069911156618751377610),
   (nm "set_storage", 1133820847152277381600747168919453729595651),
   (nm "op_staticcall", 722542636840853059654520841308977499904884816419742513956678681959143465776045694),
   (nm "set_transient_storage", 1494186270314071064826),
   (nm "op_tstore", 1494186270314071064853),
   (nm "check_transaction", 31385508676933404964229112376706682976878473759985743470819),
   (nm "clear_account_preserving_balance", 1173293601727782749375203327798838965609187),
   (nm "create_ether", 1153557224440030065488002918475256911929845),
   (nm "set_account_balance", 1153557224440030065488002918475256911929844)]

theorem htList_ok : htList.all (fun p => decide (state.1.lookup p.1 = some p.2)) = true := by
  decide_cbv

end InitECandidate.Solver.HtFd
