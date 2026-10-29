import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify889
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body905_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body905_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body905_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 0#64]))
  (Flapjack.Exp.const 4#64)) body905_0 body905_1

def body905_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body905_4 : Prog (BitVec 64) :=
.seq body905_2 body905_3

def originalData905 : Decl (BitVec 64) :=
.function { name := "tx_is_setcode", inline := false, exported := false, params := [("tx", Flapjack.Shape.one)], body := body905_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData905 : Decl (BitVec 64) :=
.function { name := "tx_is_setcode", inline := false, exported := false, params := [("tx", Flapjack.Shape.one)], body := body905_4, returnShape := (Flapjack.Shape.one) }
def original905 := Pancake.PanLang.declToHOL originalData905
def simplified905 := Pancake.PanLang.declToHOL simplifiedData905
end InitECandidate.Proofs.FrontendStages.Declarations
