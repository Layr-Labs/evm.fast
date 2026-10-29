import InitECandidate.Proofs.FrontendStages.Declarations.Data904
import InitECandidate.Proofs.FrontendStages.Globals.Context
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody904_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody904_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody904_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 0#64]))
  (Flapjack.Exp.const 3#64)) globalBody904_0 globalBody904_1

def globalBody904_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody904_4 : Prog (BitVec 64) :=
.seq globalBody904_2 globalBody904_3

def globalData904 : Decl (BitVec 64) := .function { name := "tx_is_blob", inline := false, exported := false, params := [("tx", Flapjack.Shape.one)], body := globalBody904_4, returnShape := (Flapjack.Shape.one) }
def globalOutput904 := Pancake.PanLang.declToHOL globalData904
end InitECandidate.Proofs.FrontendStages.Declarations
