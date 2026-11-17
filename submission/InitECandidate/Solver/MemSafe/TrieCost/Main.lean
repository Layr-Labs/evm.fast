import InitECandidate.Solver.MemSafe.ArenaCost.Analyzer
import InitECandidate.Solver.MemSafe.TrieCost.Guest
import InitECandidate.Solver.Spec.WalkGuest
import InitECandidate.Solver.MemSafe.Wire.Guest
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.TrieCost
variable {σ : Type}
def lookupBody := (declPair Guest.Software.guestFn_trie_lookup).2.2
theorem lookup_cost : Cost σ guestCtx lookupBody (1+36893488147419103234+(1+bWalk64+0)) := by
 have heq : lookupBody =
  (.seq (.call (some (none,none)) (nm "key_to_nibbles") [lv (nm "key_hash32"),cw 32,.var .global (nm "mpt_nib_scratch")])
    (.call none (nm "trie_walk") [lv (nm "root"),.var .global (nm "mpt_nib_scratch"),cw 64])) := by
  conv => lhs; cbv
  conv => rhs; cbv
 rw [heq]
 apply Inv.cost_of_costP_true
 apply Inv.costP_seq (R := fun _ => True)
 · exact Inv.costP_of_cost (cost_call (Bh := 0) (Wire.calleeCost_guest (B := 36893488147419103234) rfl) (by intro _ _ _ _ h;cases h))
 · intro s hs hp ht he;trivial
 · apply Inv.costP_call (Bh := 0) cc_walk64
   · intro s hs hp vs hvs callee
     obtain ⟨A,vs1,hvs0,hA,hrest⟩ := evs_cons_inv hvs
     obtain ⟨B,vs2,hvs1,hB,hrest2⟩ := evs_cons_inv hrest
     refine ⟨A,B,?_⟩
     have he := evs_cons hA (evs_cons hB (evs_cons (ev_cw s 64) evs_nil))
     exact Option.some.inj (hvs.symm.trans he)
   · intro _ _ _ _ h;cases h
#print axioms lookup_cost
def bLookup : Nat := 1+36893488147419103234+(1+bWalk64+0)
theorem cc_trie_lookup : CalleeCost σ guestCtx (nm "trie_lookup") bLookup := by
 have hc : ∃ rs, guestCode (nm "trie_lookup") =
  some ((declPair Guest.Software.guestFn_trie_lookup).2.1,lookupBody,rs) :=
  declPair_valid (List.getElem_mem (n := 267) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact ArenaCost.Analyzer.callee_of_body hc lookup_cost
#print axioms cc_trie_lookup
end InitECandidate.Solver.MemSafe.TrieCost
