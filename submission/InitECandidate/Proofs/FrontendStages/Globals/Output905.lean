import InitECandidate.Proofs.FrontendStages.Declarations.Data905
import InitECandidate.Proofs.FrontendStages.Globals.Context
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody905_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody905_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody905_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 0#64]))
  (Flapjack.Exp.const 4#64)) globalBody905_0 globalBody905_1

def globalBody905_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody905_4 : Prog (BitVec 64) :=
.seq globalBody905_2 globalBody905_3

def globalData905 : Decl (BitVec 64) := .function { name := "tx_is_setcode", inline := false, exported := false, params := [("tx", Flapjack.Shape.one)], body := globalBody905_4, returnShape := (Flapjack.Shape.one) }
def globalOutput905 := Pancake.PanLang.declToHOL globalData905
end InitECandidate.Proofs.FrontendStages.Declarations
