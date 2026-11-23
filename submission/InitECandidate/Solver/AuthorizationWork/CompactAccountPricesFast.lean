import InitECandidate.Solver.AuthorizationWork.CompactAccountEffects
import InitECandidate.Solver.SourceCost.Shard

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace CompactAccountPrices
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules

def insert (st : TblState) (entry : Entry × Nat) : TblState :=
  overrideCost st entry.1.1 entry.2

def check (st : TblState) : List (Entry × Nat) → Bool
  | [] => true
  | entry :: rest =>
      CompactCostReplay.price st entry.1.2.2 == some entry.2 &&
        check (insert st entry) rest

theorem fold_sound {σ : Type} (rows : List (Entry × Nat))
    (hInstalled : ∀ row ∈ rows, Installed row.1) {st : TblState}
    (hSound : StateSound σ guestCtx st) (hCheck : check st rows = true) :
    StateSound σ guestCtx (rows.foldl insert st) := by
  induction rows generalizing st with
  | nil => exact hSound
  | cons row rows ih =>
    have h := Bool.and_eq_true_iff.mp hCheck
    have hCost := CompactCostReplay.callee_cost hSound
      (hInstalled row List.mem_cons_self) (beq_iff_eq.mp h.1)
    exact ih (fun r hr => hInstalled r (List.mem_cons_of_mem _ hr))
      (overrideCost_sound hSound hCost) h.2

def hashAndRead : List (Entry × Nat) :=
  [(declPair Guest.Software.guestFn_keccak256, 3154393236879211233689),
   (declPair Guest.Software.guestFn_decode_account_from_leaf, 680564733841877836461913003775032885969),
   (declPair Guest.Software.guestFn_ws_account_leaf, 174224571919297119723304609995705492177532),
   (declPair Guest.Software.guestFn_ws_get_account_optional, 174905136653138997559766522999480525063506),
   (declPair Guest.Software.guestFn_record_pre_state_read, 110680466263323443734),
   (declPair Guest.Software.guestFn_get_pre_state_account_optional, 174905136653138997560080117652375719709064),
   (declPair Guest.Software.guestFn_get_account_optional, 174905136653138997560283031839007590910887),
   (declPair Guest.Software.guestFn_get_account, 174905136653138997560283031839007590910893)]

private theorem hashAndRead_installed : ∀ row ∈ hashAndRead, Installed row.1 := by
  intro row hr
  simp only [hashAndRead, List.mem_cons, List.not_mem_nil, or_false] at hr
  rcases hr with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 103) (by decide)) ⟨_, rfl⟩
  · exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 293) (by decide)) ⟨_, rfl⟩
  · exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 365) (by decide)) ⟨_, rfl⟩
  · exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 366) (by decide)) ⟨_, rfl⟩
  · exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 364) (by decide)) ⟨_, rfl⟩
  · exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 372) (by decide)) ⟨_, rfl⟩
  · exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 374) (by decide)) ⟨_, rfl⟩
  · exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 375) (by decide)) ⟨_, rfl⟩

def hashAndReadTable : TblState := hashAndRead.foldl insert CompactAccountEffects.table

theorem hashAndReadTable_sound {σ : Type} : StateSound σ guestCtx hashAndReadTable :=
  fold_sound hashAndRead hashAndRead_installed CompactAccountEffects.table_sound (by decide_cbv)

def write : List (Entry × Nat) :=
  [(declPair Guest.Software.guestFn_jset, 202914186769310155335),
   (declPair Guest.Software.guestFn_jdel, 184467440874534469689),
   (declPair Guest.Software.guestFn_set_account, 202914186769310155336),
   (declPair Guest.Software.guestFn_destroy_storage, 4763953170485879405160648232122596721253),
   (declPair Guest.Software.guestFn_destroy_account, 4763953170485879405363562418891906876591),
   (declPair Guest.Software.guestFn_modify_state_commit, 4763953170485879405640263581956055238400)]

private theorem write_installed : ∀ row ∈ write, Installed row.1 := by
  intro row hr
  simp only [write, List.mem_cons, List.not_mem_nil, or_false] at hr
  rcases hr with rfl | rfl | rfl | rfl | rfl | rfl
  · exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 356) (by decide)) ⟨_, rfl⟩
  · exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 357) (by decide)) ⟨_, rfl⟩
  · exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 387) (by decide)) ⟨_, rfl⟩
  · exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 389) (by decide)) ⟨_, rfl⟩
  · exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 390) (by decide)) ⟨_, rfl⟩
  · exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 391) (by decide)) ⟨_, rfl⟩

def writeTable : TblState := write.foldl insert hashAndReadTable

theorem writeTable_sound {σ : Type} : StateSound σ guestCtx writeTable :=
  fold_sound write write_installed hashAndReadTable_sound (by decide_cbv)

def clearAndCredit : List (Entry × Nat) :=
  [(declPair Guest.Software.guestFn_clear_account_preserving_balance, 184433042994110756371157730629381081077022),
   (declPair Guest.Software.guestFn_create_ether, 179669089823624876965997082397258484355769)]

private theorem clearAndCredit_installed : ∀ row ∈ clearAndCredit, Installed row.1 := by
  intro row hr
  simp only [clearAndCredit, List.mem_cons, List.not_mem_nil, or_false] at hr
  rcases hr with rfl | rfl
  · exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 392) (by decide)) ⟨_, rfl⟩
  · exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 396) (by decide)) ⟨_, rfl⟩

def clearAndCreditTable : TblState := clearAndCredit.foldl insert writeTable

theorem clearAndCreditTable_sound {σ : Type} : StateSound σ guestCtx clearAndCreditTable :=
  fold_sound clearAndCredit clearAndCredit_installed writeTable_sound (by decide_cbv)

#print axioms clearAndCreditTable_sound

end CompactAccountPrices
