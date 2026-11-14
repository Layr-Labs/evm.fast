import InitECandidate.Solver.MemSafe.DelegationCost.Stride
import InitECandidate.Solver.MemSafe.BlsCost.Callers.C12
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
namespace InitECandidate.Solver.MemSafe.DelegationCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
open InitECandidate.Solver.MemSafe.ArrayCost.Read InitECandidate.Solver.MemSafe.PairCost.Read
variable {σ : Type}
def firstLoop : ProgHOL 64 → Option (ExpHOL 64 × ProgHOL 64)
 | .while c b => some (c,b)
 | .seq a b => (firstLoop a).orElse (fun _ => firstLoop b)
 | .ite _ a b => (firstLoop a).orElse (fun _ => firstLoop b)
 | .dec _ _ _ b => firstLoop b
 | .decCall _ _ _ _ b => firstLoop b
 | _ => none
def loop := (firstLoop (declPair Guest.Software.guestFn_set_delegation).2.2).getD (.const 0,.skip)
def body := loop.2
def cond := loop.1
def rest : ProgHOL 64 := match body with
 | .dec _ _ _ (.dec _ _ _ (.dec _ _ _ b)) => b
 | _ => .skip

theorem body_eq : body = InitECandidate.Solver.MemSafe.DelegationCost.Read.aliasPrefix (nm "auth") (nm "authority") (nm "cid")
 .one (cw 0) (lv (nm "auths")) (nm "i") 120 [.one,.one,.one] rest := by
 conv => lhs; cbv
 conv => rhs; cbv
 all_goals rfl

theorem body_read (s : PanSemStateFiniteExact 64 σ) (hc : Completes s body) :
 ∃ w, scaledAddr (lv (nm "auths")) (nm "i") 120 s = some w ∧ Hit s.memaddrs w := by
 rw [body_eq] at hc
 exact InitECandidate.Solver.MemSafe.DelegationCost.Read.alias_hit (by decide +kernel) (by decide +kernel) hc

theorem loop_cost {C : Nat} (hb : Cost σ guestCtx body C) :
 Cost σ guestCtx (.while cond body) (286331155*(C+1)) := by
 have hh := InitECandidate.Solver.MemSafe.DelegationCost.Read.read_stride_cost (c := cond) (B := lv (nm "auths")) (i := nm "i") (k := 120)
  guestCtx_bounded (by decide +kernel) (by decide +kernel)
  (by decide +kernel) (by decide +kernel) body_read hb
 exact hh
#print axioms body_read
#print axioms loop_cost
end InitECandidate.Solver.MemSafe.DelegationCost
