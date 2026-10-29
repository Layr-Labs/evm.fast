import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify372
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body388_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "jset"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 16#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def body388_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body388_2 : Prog (BitVec 64) :=
.seq body388_0 body388_1

def originalData388 : Decl (BitVec 64) :=
.function { name := "set_account", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := body388_2, returnShape := (Flapjack.Shape.one) }
def simplifiedData388 : Decl (BitVec 64) :=
.function { name := "set_account", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := body388_2, returnShape := (Flapjack.Shape.one) }
def original388 := Pancake.PanLang.declToHOL originalData388
def simplified388 := Pancake.PanLang.declToHOL simplifiedData388
end InitECandidate.Proofs.FrontendStages.Declarations
