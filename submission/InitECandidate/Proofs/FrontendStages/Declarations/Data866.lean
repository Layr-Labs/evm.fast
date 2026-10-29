import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify850
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body866_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body866_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body866_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 0#64]))
  (Flapjack.Exp.const 3#64)) body866_0 body866_1

def body866_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body866_4 : Prog (BitVec 64) :=
.seq body866_2 body866_3

def originalData866 : Decl (BitVec 64) :=
.function { name := "tx_is_blob", inline := false, exported := false, params := [("tx", Flapjack.Shape.one)], body := body866_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData866 : Decl (BitVec 64) :=
.function { name := "tx_is_blob", inline := false, exported := false, params := [("tx", Flapjack.Shape.one)], body := body866_4, returnShape := (Flapjack.Shape.one) }
def original866 := Pancake.PanLang.declToHOL originalData866
def simplified866 := Pancake.PanLang.declToHOL simplifiedData866
end InitECandidate.Proofs.FrontendStages.Declarations
