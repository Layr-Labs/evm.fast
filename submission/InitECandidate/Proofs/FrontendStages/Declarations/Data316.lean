import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify300
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body316_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body316_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body316_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 0#64]))
  (Flapjack.Exp.const 0#64)) body316_0 body316_1

def body316_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body316_4 : Prog (BitVec 64) :=
.seq body316_2 body316_3

def originalData316 : Decl (BitVec 64) :=
.function { name := "tx_has_access_list", inline := false, exported := false, params := [("tx", Flapjack.Shape.one)], body := body316_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData316 : Decl (BitVec 64) :=
.function { name := "tx_has_access_list", inline := false, exported := false, params := [("tx", Flapjack.Shape.one)], body := body316_4, returnShape := (Flapjack.Shape.one) }
def original316 := Pancake.PanLang.declToHOL originalData316
def simplified316 := Pancake.PanLang.declToHOL simplifiedData316
end InitECandidate.Proofs.FrontendStages.Declarations
