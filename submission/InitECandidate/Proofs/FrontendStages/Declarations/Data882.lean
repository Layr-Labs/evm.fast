import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify866
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body882_0 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (none,
      some
        ("HdrErr", "e",
          Flapjack.Prog.seq
            (Flapjack.Prog.shMemStore Flapjack.OpSize.op8
              (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 2688614400#64, Flapjack.Exp.const 70#64])
              (Flapjack.Exp.var Flapjack.VarKind.local "e"))
            (Flapjack.Prog.raise "Fail" (Flapjack.Exp.const 2#64)))))
  "attempt_l1" [Flapjack.Exp.var Flapjack.VarKind.local "si"]

def body882_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body882_2 : Prog (BitVec 64) :=
.seq body882_0 body882_1

def body882_3 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body882_2

def originalData882 : Decl (BitVec 64) :=
.function { name := "attempt_l2", inline := false, exported := false, params := [("si", Flapjack.Shape.one)], body := body882_3, returnShape := (Flapjack.Shape.one) }
def simplifiedData882 : Decl (BitVec 64) :=
.function { name := "attempt_l2", inline := false, exported := false, params := [("si", Flapjack.Shape.one)], body := body882_3, returnShape := (Flapjack.Shape.one) }
def original882 := Pancake.PanLang.declToHOL originalData882
def simplified882 := Pancake.PanLang.declToHOL simplifiedData882
end InitECandidate.Proofs.FrontendStages.Declarations
