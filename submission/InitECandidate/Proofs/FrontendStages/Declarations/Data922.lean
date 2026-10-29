import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify906
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body922_0 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (none,
      some
        ("MptErr", "e",
          Flapjack.Prog.seq
            (Flapjack.Prog.shMemStore Flapjack.OpSize.op8
              (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 2688614400#64, Flapjack.Exp.const 70#64])
              (Flapjack.Exp.var Flapjack.VarKind.local "e"))
            (Flapjack.Prog.raise "Fail" (Flapjack.Exp.const 4#64)))))
  "attempt_l3" [Flapjack.Exp.var Flapjack.VarKind.local "si"]

def body922_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body922_2 : Prog (BitVec 64) :=
.seq body922_0 body922_1

def body922_3 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body922_2

def originalData922 : Decl (BitVec 64) :=
.function { name := "attempt_l4", inline := false, exported := false, params := [("si", Flapjack.Shape.one)], body := body922_3, returnShape := (Flapjack.Shape.one) }
def simplifiedData922 : Decl (BitVec 64) :=
.function { name := "attempt_l4", inline := false, exported := false, params := [("si", Flapjack.Shape.one)], body := body922_3, returnShape := (Flapjack.Shape.one) }
def original922 := Pancake.PanLang.declToHOL originalData922
def simplified922 := Pancake.PanLang.declToHOL simplifiedData922
end InitECandidate.Proofs.FrontendStages.Declarations
