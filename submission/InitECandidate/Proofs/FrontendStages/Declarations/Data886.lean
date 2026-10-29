import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify870
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body886_0 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (none,
      some
        ("TxErr", "e",
          Flapjack.Prog.seq
            (Flapjack.Prog.shMemStore Flapjack.OpSize.op8
              (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 2688614400#64, Flapjack.Exp.const 70#64])
              (Flapjack.Exp.var Flapjack.VarKind.local "e"))
            (Flapjack.Prog.raise "Fail" (Flapjack.Exp.const 6#64)))))
  "attempt_l5" [Flapjack.Exp.var Flapjack.VarKind.local "si"]

def body886_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body886_2 : Prog (BitVec 64) :=
.seq body886_0 body886_1

def body886_3 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body886_2

def originalData886 : Decl (BitVec 64) :=
.function { name := "attempt_l6", inline := false, exported := false, params := [("si", Flapjack.Shape.one)], body := body886_3, returnShape := (Flapjack.Shape.one) }
def simplifiedData886 : Decl (BitVec 64) :=
.function { name := "attempt_l6", inline := false, exported := false, params := [("si", Flapjack.Shape.one)], body := body886_3, returnShape := (Flapjack.Shape.one) }
def original886 := Pancake.PanLang.declToHOL originalData886
def simplified886 := Pancake.PanLang.declToHOL simplifiedData886
end InitECandidate.Proofs.FrontendStages.Declarations
