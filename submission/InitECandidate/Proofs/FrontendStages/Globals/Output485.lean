import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data485
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate469
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody485_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.const 10#64,
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 50#64, Flapjack.Exp.var Flapjack.VarKind.local "nb"]]]

def globalBody485_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def globalBody485_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def globalBody485_3 : Prog (BitVec 64) :=
.seq globalBody485_1 globalBody485_2

def globalBody485_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody485_5 : Prog (BitVec 64) :=
.seq globalBody485_3 globalBody485_4

def globalBody485_6 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_exp") ([Flapjack.Exp.var Flapjack.VarKind.local "base", Flapjack.Exp.var Flapjack.VarKind.local "exponent"]) globalBody485_5

def globalBody485_7 : Prog (BitVec 64) :=
.seq globalBody485_0 globalBody485_6

def globalBody485_8 : Prog (BitVec 64) :=
.decCall ("nb") (Flapjack.Shape.one) ("u256_byte_length") ([Flapjack.Exp.var Flapjack.VarKind.local "exponent"]) globalBody485_7

def globalBody485_9 : Prog (BitVec 64) :=
.decCall ("exponent") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) globalBody485_8

def globalBody485_10 : Prog (BitVec 64) :=
.decCall ("base") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) globalBody485_9

def globalData485 : Decl (BitVec 64) :=
.function { name := "op_exp", inline := false, exported := false, params := [], body := globalBody485_10, returnShape := (Flapjack.Shape.one) }
def globalOutput485 := Pancake.PanLang.declToHOL globalData485
end InitECandidate.Proofs.FrontendStages.Declarations
