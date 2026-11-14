import InitECandidate.Solver.MemSafe.RlpCost.Callers.C24
import InitECandidate.Solver.MemSafe.ReaderCost.Insert
import InitECandidate.Solver.MemSafe.InitCost.Analyzer
set_option autoImplicit false
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost
variable {σ : Type}
def seed0 := RlpCost.Callers.table24
theorem seed0_sound : TblSound σ guestCtx seed0 := RlpCost.Callers.table24_sound
def seed1 := Analyzer.extend seed0 (nm "memeq") ReaderCost.Callers.b_memeq
theorem seed1_sound : TblSound σ guestCtx seed1 := Analyzer.extend_sound seed0_sound ReaderCost.Callers.cc_memeq
def seed2 := Analyzer.extend seed1 (nm "common_prefix_length") ReaderCost.Callers.b_common_prefix_length
theorem seed2_sound : TblSound σ guestCtx seed2 := Analyzer.extend_sound seed1_sound ReaderCost.Callers.cc_common_prefix_length
def seed3 := Analyzer.extend seed2 (nm "node_new_branch") ReaderCost.Callers.b_node_new_branch
theorem seed3_sound : TblSound σ guestCtx seed3 := Analyzer.extend_sound seed2_sound ReaderCost.Callers.cc_node_new_branch
def seed4 := Analyzer.extend seed3 (nm "_create_branch_from_two_leaves") ReaderCost.Callers.b__create_branch_from_two_leaves
theorem seed4_sound : TblSound σ guestCtx seed4 := Analyzer.extend_sound seed3_sound ReaderCost.Callers.cc__create_branch_from_two_leaves
def seed5 := Analyzer.extend seed4 (nm "_insert_into_leaf") ReaderCost.Callers.b__insert_into_leaf
theorem seed5_sound : TblSound σ guestCtx seed5 := Analyzer.extend_sound seed4_sound ReaderCost.Callers.cc__insert_into_leaf
def seed6 := Analyzer.extend seed5 (nm "_split_extension") ReaderCost.Callers.b__split_extension
theorem seed6_sound : TblSound σ guestCtx seed6 := Analyzer.extend_sound seed5_sound ReaderCost.Callers.cc__split_extension
def seedTable := Analyzer.extend seed6 (nm "_mpt_insert_node") ReaderCost.Insert.bound
theorem seed_sound : TblSound σ guestCtx seedTable := Analyzer.extend_sound seed6_sound ReaderCost.Insert.callee_cost
#print axioms seed_sound
end InitECandidate.Solver.MemSafe.InitCost
