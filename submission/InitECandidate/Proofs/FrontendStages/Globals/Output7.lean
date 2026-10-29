import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data7
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
def globalBody7_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 8#64])
  Flapjack.Exp.baseAddr

def globalBody7_1 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 2965299200#64)

def globalBody7_2 : Prog (BitVec 64) :=
.seq globalBody7_0 globalBody7_1

def globalBody7_3 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 32#64])
  (Flapjack.Exp.const 2952790016#64)

def globalBody7_4 : Prog (BitVec 64) :=
.seq globalBody7_2 globalBody7_3

def globalBody7_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody7_6 : Prog (BitVec 64) :=
.seq globalBody7_4 globalBody7_5

def globalData7 : Decl (BitVec 64) :=
.function { name := "mem_init", inline := false, exported := false, params := [], body := globalBody7_6, returnShape := (Flapjack.Shape.one) }
def globalOutput7 := Pancake.PanLang.declToHOL globalData7
end InitECandidate.Proofs.FrontendStages.Declarations
