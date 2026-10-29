import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data39
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate22
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody39_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody39_1 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 640#64]) globalBody39_0

def globalBody39_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody39_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 40#64]))
  (Flapjack.Exp.const 0#64)) globalBody39_1 globalBody39_2

def globalBody39_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody39_5 : Prog (BitVec 64) :=
.seq globalBody39_3 globalBody39_4

def globalData39 : Decl (BitVec 64) :=
.function { name := "u256_ws_init", inline := false, exported := false, params := [], body := globalBody39_5, returnShape := (Flapjack.Shape.one) }
def globalOutput39 := Pancake.PanLang.declToHOL globalData39
end InitECandidate.Proofs.FrontendStages.Declarations
