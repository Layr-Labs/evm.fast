import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data439
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate418
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody439_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "v")

def globalBody439_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody439_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "r") (Flapjack.Exp.const 0#64)) globalBody439_0 globalBody439_1

def globalBody439_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "s")

def globalBody439_4 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.one) ("add_sat") ([Flapjack.Exp.var Flapjack.VarKind.local "v",
  Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 32#64, Flapjack.Exp.var Flapjack.VarKind.local "r"]]) globalBody439_3

def globalBody439_5 : Prog (BitVec 64) :=
.seq globalBody439_2 globalBody439_4

def globalBody439_6 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "v", Flapjack.Exp.const 31#64]) globalBody439_5

def globalData439 : Decl (BitVec 64) :=
.function { name := "ceil32", inline := false, exported := false, params := [("v", Flapjack.Shape.one)], body := globalBody439_6, returnShape := (Flapjack.Shape.one) }
def globalOutput439 := Pancake.PanLang.declToHOL globalData439
end InitECandidate.Proofs.FrontendStages.Declarations
