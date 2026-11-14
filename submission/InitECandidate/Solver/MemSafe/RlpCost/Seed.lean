import InitECandidate.Solver.MemSafe.ArenaCost.Analyzer
import InitECandidate.Solver.MemSafe.RlpCost.HeaderMain
import InitECandidate.Solver.MemSafe.RlpCost.UncheckedMain
import InitECandidate.Solver.Spec.WalkGuest
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.RlpCost
variable {σ : Type}
def bBody : Nat := 2542620639898
def bItems : Nat := 2542620639902
def bTotal : Nat := 2542620639936
def bCount : Nat := 87363779980229997500626
theorem bBody_eq : bvBody 32 2 = bBody := by decide +kernel
theorem bItems_eq : bvItems 32 2 0 0 = bItems := by decide +kernel
theorem bTotal_eq : bvTotal 32 2 0 0 = bTotal := by decide +kernel
theorem bCount_eq : bvCount 32 2 0 0 = bCount := by decide +kernel
theorem chain : CalleeCost σ guestCtx (nm "_rlp_validate_items_body") bBody ∧
    CalleeCost σ guestCtx (nm "rlp_validate_items") bItems ∧
    CalleeCost σ guestCtx (nm "rlp_item_total") bTotal ∧
    CalleeCost σ guestCtx (nm "rlp_list_count") bCount := by
  have ha : CalleeCost σ guestCtx (nm "scratch_alloc") 2 :=
    CryptoCost.Analyzer.base_sound _ _ (by cbv)
  have hm : CalleeCost σ guestCtx (nm "scratch_mark") 0 :=
    CryptoCost.Analyzer.base_sound _ _ (by cbv)
  have hr : CalleeCost σ guestCtx (nm "scratch_release") 0 :=
    CryptoCost.Analyzer.base_sound _ _ (by cbv)
  simpa only [bBody_eq,bItems_eq,bTotal_eq,bCount_eq] using
    (rlp_chain_cost_guest guestCtx_code rfl InitECandidate.Solver.MemSafe.RlpCost.Header.callee_cost ha hm hr)
def table := InitECandidate.Solver.MemSafe.ArenaCost.Analyzer.extend (InitECandidate.Solver.MemSafe.ArenaCost.Analyzer.extend
    (InitECandidate.Solver.MemSafe.ArenaCost.Analyzer.extend (InitECandidate.Solver.MemSafe.ArenaCost.Analyzer.extend
      (InitECandidate.Solver.MemSafe.ArenaCost.Analyzer.extend (InitECandidate.Solver.MemSafe.ArenaCost.Analyzer.extend CryptoCost.Callers.table17
        (nm "rlp_item_header") 32) (nm "rlp_item_total_unchecked") 22)
      (nm "_rlp_validate_items_body") bBody) (nm "rlp_validate_items") bItems)
    (nm "rlp_item_total") bTotal) (nm "rlp_list_count") bCount
theorem table_sound : TblSound σ guestCtx table :=
  InitECandidate.Solver.MemSafe.ArenaCost.Analyzer.extend_sound (InitECandidate.Solver.MemSafe.ArenaCost.Analyzer.extend_sound
    (InitECandidate.Solver.MemSafe.ArenaCost.Analyzer.extend_sound (InitECandidate.Solver.MemSafe.ArenaCost.Analyzer.extend_sound
      (InitECandidate.Solver.MemSafe.ArenaCost.Analyzer.extend_sound (InitECandidate.Solver.MemSafe.ArenaCost.Analyzer.extend_sound CryptoCost.Callers.table17_sound
        InitECandidate.Solver.MemSafe.RlpCost.Header.callee_cost) InitECandidate.Solver.MemSafe.RlpCost.Unchecked.callee_cost) chain.1) chain.2.1)
      chain.2.2.1) chain.2.2.2
#print axioms chain
#print axioms table_sound
end InitECandidate.Solver.MemSafe.RlpCost
