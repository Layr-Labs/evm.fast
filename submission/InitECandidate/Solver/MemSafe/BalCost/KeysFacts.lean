import InitECandidate.Solver.MemSafe.BalCost.Suffix
import InitECandidate.Solver.MemSafe.BalEnc.Bbl4
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS ProgHOL ExpHOL ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.BalEnc
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Aw
open InitECandidate.Solver.MemSafe.BalCost.Loop InitECandidate.Solver.MemSafe.BalCost.Suffix
namespace InitECandidate.Solver.MemSafe.BalCost.Phase2
variable {σ : Type}
def keysName : MlS := Basis.Pure.MlString.ofString "htab_keys"
def keysB : Nat := 1361129467683753854037965870464168361993
theorem keys_cost : CalleeCost σ guestCtx keysName keysB := by
  exact Wire.calleeCost_guest (by rfl)

theorem keys_count {a : AwE σ} (hK : AwOK a) {v : ValueHOL 64}
    (h : KeysRetM 24 a v) :
    ∃ O N : BitVec 64, v = .rStruct [.val (.word O), .val (.word N)] ∧
      (N.toNat < 2 ^ 63 → N.toNat ≤ 10485759) := by
  obtain ⟨O, N, hv, hlo, hhi, hsz⟩ := h
  refine ⟨O, N, hv, ?_⟩
  intro hn
  have hb := (hsz hn).2
  have hbase := hK.hord.1
  change 2701131776 ≤ a.p0.hp at hbase
  change O.toNat + N.toNat * 24 + 8 ≤ 2952790016 at hb
  omega

def phase2Bound : Nat := 1 + allocB + (1 + keysB + afterKeysBound 10485759)


#print axioms keys_cost
#print axioms keys_count
end InitECandidate.Solver.MemSafe.BalCost.Phase2
