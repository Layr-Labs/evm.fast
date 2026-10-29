import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data92
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate74
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody92_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody92_1 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) globalBody92_0

def globalBody92_2 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody92_3 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 128#64]) globalBody92_2

def globalBody92_4 : Prog (BitVec 64) :=
.seq globalBody92_1 globalBody92_3

def globalBody92_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody92_6 : Prog (BitVec 64) :=
.seq globalBody92_4 globalBody92_5

def globalData92 : Decl (BitVec 64) :=
.function { name := "sha256_init", inline := false, exported := false, params := [], body := globalBody92_6, returnShape := (Flapjack.Shape.one) }
def globalOutput92 := Pancake.PanLang.declToHOL globalData92
end InitECandidate.Proofs.FrontendStages.Declarations
