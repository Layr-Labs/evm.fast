import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data4
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody4_0 : Prog (BitVec 64) :=
Flapjack.Prog.shMemStore Flapjack.OpSize.op8
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 2688614400#64, Flapjack.Exp.const 33#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "code")

def globalBody4_1 : Prog (BitVec 64) :=
Flapjack.Prog.shMemStore Flapjack.OpSize.opW
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 2688614400#64, Flapjack.Exp.const 40#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 8#64]))

def globalBody4_2 : Prog (BitVec 64) :=
.seq globalBody4_0 globalBody4_1

def globalBody4_3 : Prog (BitVec 64) :=
Flapjack.Prog.shMemStore Flapjack.OpSize.opW
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 2688614400#64, Flapjack.Exp.const 48#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 16#64]))

def globalBody4_4 : Prog (BitVec 64) :=
.seq globalBody4_2 globalBody4_3

def globalBody4_5 : Prog (BitVec 64) :=
Flapjack.Prog.extCall "trap" Flapjack.Exp.baseAddr (Flapjack.Exp.var Flapjack.VarKind.local "code")
  Flapjack.Exp.baseAddr (Flapjack.Exp.const 0#64)

def globalBody4_6 : Prog (BitVec 64) :=
.seq globalBody4_4 globalBody4_5

def globalBody4_7 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TrapErr" (Flapjack.Exp.var Flapjack.VarKind.local "code")

def globalBody4_8 : Prog (BitVec 64) :=
.seq globalBody4_6 globalBody4_7

def globalData4 : Decl (BitVec 64) :=
.function { name := "trap_with", inline := false, exported := false, params := [("code", Flapjack.Shape.one)], body := globalBody4_8, returnShape := (Flapjack.Shape.one) }
def globalOutput4 := Pancake.PanLang.declToHOL globalData4
end InitECandidate.Proofs.FrontendStages.Declarations
