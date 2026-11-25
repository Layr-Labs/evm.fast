import InitECandidate.Solver.AuthorizationWork.CompactWithdrawalBody
import InitECandidate.Solver.AuthorizationWork.AccountWithdrawalCosts

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace CompactWithdrawalLoop
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Eb
open InitECandidate.Solver.MemSafe.Wg

theorem loop_cost {σ : Type} {E : EbE σ} {En : Env} {S : FS} {nwd : BitVec 64}
    (hn : nwd.toNat < 2 ^ 32) (hEn : En (nm "nwd") = some (.val (.word nwd))) :
    Inv.CostP σ guestCtx (PA E (EnI En 0) S) wdS5 771672864894555254740981172927642470366598433603584 := by
  have hLoop := AccountWithdrawalCosts.loop_cost (E := E) (S := S)
    CompactWithdrawalBody.body_cost hn hEn
  have hPrice : 2 ^ 32 * (179669089823624876965997082397258484355778 + 1) =
      771672864894555254740981172927642470366598433603584 := by decide +kernel
  exact hPrice ▸ hLoop

#print axioms loop_cost
end CompactWithdrawalLoop
