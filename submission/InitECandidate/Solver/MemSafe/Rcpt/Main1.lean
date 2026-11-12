import InitECandidate.Solver.MemSafe.Rcpt.Env2
import InitECandidate.Solver.MemSafe.Aw.Rcpt
import InitECandidate.Solver.MemSafe.Rec.TxEncR

set_option autoImplicit false

/-!
# `encode_receipt`: the part after the allocation of the output block
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Rcpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type}

/-- The entry data of the walk. -/
def aOf (s : State σ) (Γ : Gam) (p : Ptrs) (h0 : Nat) : AwE σ :=
  ⟨guestC, Hooks.guestHooksR (σ := σ), [], s, Γ, p, h0⟩

/-- `encode_receipt` after `buf = alloc(bound + 400)`. -/
def erK : ProgHOL 64 :=
  .dec startN .one (.op .add [lv Aw.bufN, cw 1])
    (.dec Aw.pN .one (.op .add [lv startN, cw 9])
      (.dec wN .one (cw 0)
        (.seq (.ite (.cmp .notEqual (lv succN) (cw 0))
            (.seq (.storeByte (lv Aw.pN) (cw 1)) (.assign .local wN (cw 1)))
            (.seq (.storeByte (lv Aw.pN) (cw 128)) (.assign .local wN (cw 1))))
          (.seq (.assign .local Aw.pN (.op .add [lv Aw.pN, lv wN]))
            (.seq (callW (nm "rlp_encode_word") [lv Aw.pN, lv cgN])
              (.seq (.assign .local Aw.pN (.op .add [lv Aw.pN, lv wN])) erBloom))))))

theorem erBody_eq : erBody = .decCall boundN .one (nm "logs_encoded_bound") [lv logsN]
    (.decCall Aw.bufN .one (nm "alloc") [.op .add [lv boundN, cw 400]] erK) := rfl

end InitECandidate.Solver.MemSafe.Rcpt
