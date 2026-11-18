import InitECandidate.Solver.MemSafe.TrieCost.Walk
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
def bWalk64 : Nat := 65*(2^35+2)*(2*73786976294838206468+4)
theorem cc_walk64 : Inv.CalleeCostP σ guestCtx (nm "trie_walk") (FixedLen (64 : BitVec 64)) bWalk64 := by
 have hf : CalleeCost σ guestCtx (nm "mpt_fail") 0 := Wire.calleeCost_guest rfl
 have hm : CalleeCost σ guestCtx (nm "memeq") 73786976294838206468 := Wire.calleeCost_guest rfl
 have hd : DomIn guestCtx.memaddrs (BitVec.ofNat 64 InitE.sourceBase) (2^35) := guest_domIn' (X := guestCtx) rfl
 have h := trie_walk_fixed (σ := σ) (X := guestCtx) (L := 2^35) guestCtx_code hd (by decide) (64 : BitVec 64) hf hm
 change Inv.CalleeCostP σ guestCtx (nm "trie_walk") (FixedLen (64 : BitVec 64))
  (65*(2^35+2)*(0+2*73786976294838206468+4)) at h
 simpa only [Nat.zero_add,bWalk64] using h
#print axioms cc_walk64
end InitECandidate.Solver.MemSafe.TrieCost
