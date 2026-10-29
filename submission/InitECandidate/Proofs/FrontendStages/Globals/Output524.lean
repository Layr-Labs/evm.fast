import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data524
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate508
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody524_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "slot") (Flapjack.Exp.var Flapjack.VarKind.local "log")

def globalBody524_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody524_2 : Prog (BitVec 64) :=
.seq globalBody524_0 globalBody524_1

def globalBody524_3 : Prog (BitVec 64) :=
.decCall ("slot") (Flapjack.Shape.one) ("lst_push") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 88#64]),
  Flapjack.Exp.const 8#64]) globalBody524_2

def globalData524 : Decl (BitVec 64) :=
.function { name := "log_append", inline := false, exported := false, params := [("e", Flapjack.Shape.one), ("log", Flapjack.Shape.one)], body := globalBody524_3, returnShape := (Flapjack.Shape.one) }
def globalOutput524 := Pancake.PanLang.declToHOL globalData524
end InitECandidate.Proofs.FrontendStages.Declarations
