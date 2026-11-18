import InitECandidate.Solver.MemSafe.FqCost.Retable.S077
import InitECandidate.Solver.MemSafe.TrieCost.Main
import InitECandidate.Solver.MemSafe.WalkCost.Leaves
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReceiptCost.Retable
variable {σ : Type}
def seed0 := FqCost.Retable.table77
theorem seed0_sound : TblSound σ guestCtx seed0 := FqCost.Retable.table77_sound
theorem seed_check1 : min (TrieCost.bLookup) ((FqCost.Retable.table77 (nm "trie_lookup")).getD (TrieCost.bLookup)) = TrieCost.bLookup := by cbv
def seed1 := FqCost.CombCore.extend seed0 (nm "trie_lookup") (TrieCost.bLookup)
theorem seed1_sound : TblSound σ guestCtx seed1 := FqCost.CombCore.extend_sound seed0_sound TrieCost.cc_trie_lookup
theorem seed_check2 : min (WalkCost.Htab.bFind) ((FqCost.Retable.table77 (nm "htab_find_leaf")).getD (WalkCost.Htab.bFind)) = WalkCost.Htab.bFind := by cbv
def seed2 := FqCost.CombCore.extend seed1 (nm "htab_find_leaf") (WalkCost.Htab.bFind)
theorem seed2_sound : TblSound σ guestCtx seed2 := FqCost.CombCore.extend_sound seed1_sound WalkCost.Htab.cc_find
theorem seed_check3 : min (WalkCost.Htab.bSet) ((FqCost.Retable.table77 (nm "htab_set")).getD (WalkCost.Htab.bSet)) = WalkCost.Htab.bSet := by cbv
def seed3 := FqCost.CombCore.extend seed2 (nm "htab_set") (WalkCost.Htab.bSet)
theorem seed3_sound : TblSound σ guestCtx seed3 := FqCost.CombCore.extend_sound seed2_sound WalkCost.Htab.cc_set
theorem seed_check4 : min (WalkCost.Htab.bDel) ((FqCost.Retable.table77 (nm "htab_del")).getD (WalkCost.Htab.bDel)) = WalkCost.Htab.bDel := by cbv
def seed4 := FqCost.CombCore.extend seed3 (nm "htab_del") (WalkCost.Htab.bDel)
theorem seed4_sound : TblSound σ guestCtx seed4 := FqCost.CombCore.extend_sound seed3_sound WalkCost.Htab.cc_del
def table0 := seed4
theorem table0_sound : TblSound σ guestCtx table0 := seed4_sound
#print axioms table0_sound
end InitECandidate.Solver.MemSafe.ReceiptCost.Retable
